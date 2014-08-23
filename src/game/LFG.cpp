/*
* Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include "Common.h"
#include "SharedDefines.h"
#include "ObjectMgr.h"
#include "LFG.h"
#include "LFGMgr.h"
#include "Group.h"
#include "Player.h"

void LFGPlayerState::Clear()
{
    rolesMask = LFG_ROLE_MASK_NONE;
    update = true;
    m_state = LFG_STATE_NONE;
    AddFlags(LFG_MEMBER_FLAG_NONE |
        LFG_MEMBER_FLAG_CHARINFO |
        LFG_MEMBER_FLAG_COMMENT |
        LFG_MEMBER_FLAG_GROUPLEADER |
        LFG_MEMBER_FLAG_GROUPGUID |
        LFG_MEMBER_FLAG_AREA |
        LFG_MEMBER_FLAG_STATUS |
        LFG_MEMBER_FLAG_BIND);

    m_DungeonsList.clear();
    m_LockMap.clear();
    m_comment.clear();
    accept = LFG_ANSWER_PENDING;
}

LFGLockStatusMap* LFGPlayerState::GetLockMap()
{
    if (update)
    {
        m_LockMap.clear();
        m_LockMap = sLFGMgr.GetPlayerLockMap(m_player);
        update = false;
    }
    return &m_LockMap;
};

void LFGPlayerState::SetRoles(uint8 roles)
{
    rolesMask = LFGRoleMask(roles);

    if (Group* group = m_player->GetGroup())
    {
        if (group->GetLeaderGuid() == m_player->GetObjectGuid())
            rolesMask = LFGRoleMask(rolesMask | LFG_ROLE_MASK_LEADER);
        else
            rolesMask = LFGRoleMask(rolesMask & ~LFG_ROLE_MASK_LEADER);
    }
    else
        rolesMask = LFGRoleMask(rolesMask & ~LFG_ROLE_MASK_LEADER);

    rolesMask != LFG_ROLE_MASK_NONE ? AddFlags(LFG_MEMBER_FLAG_ROLES) : RemoveFlags(LFG_MEMBER_FLAG_ROLES);

};

LFGRoleMask LFGPlayerState::GetRoles()
{
    return rolesMask;
};

LFGType LFGPlayerState::GetDungeonType()
{
    if (!GetDungeons() || GetDungeons()->empty())
        return LFG_TYPE_NONE;

    return LFGType((*GetDungeons()->begin())->type);
};

void LFGPlayerState::SetJoined()
{
    m_jointime = time_t(time(NULL));
    m_teleported = false;
};

bool LFGPlayerState::IsSingleRole()
{
    if (LFGRoleMask(rolesMask & ~LFG_ROLE_MASK_TANK   & ~LFG_ROLE_MASK_LEADER) == LFG_ROLE_MASK_NONE
        || LFGRoleMask(rolesMask & ~LFG_ROLE_MASK_HEALER & ~LFG_ROLE_MASK_LEADER) == LFG_ROLE_MASK_NONE
        || LFGRoleMask(rolesMask & ~LFG_ROLE_MASK_TANK   & ~LFG_ROLE_MASK_LEADER) == LFG_ROLE_MASK_NONE)
        return true;
    return false;
}

void LFGPlayerState::SetComment(std::string comment)
{
    m_comment.clear();
    if (!comment.empty())
    {
        AddFlags(LFG_MEMBER_FLAG_COMMENT);
        m_comment.append(comment);
    }

};

LFGType LFGPlayerState::GetType()
{
    if (m_DungeonsList.empty())
        return LFG_TYPE_NONE;
    else
        return LFGType((*m_DungeonsList.begin())->type);
};

void LFGGroupState::Clear()
{
    queued = false;
    update = true;
    m_status = LFG_STATUS_NOT_SAVED;
    m_votesNeeded = 3;
    m_kicksLeft = 5;
    kickActive = false;
    m_DungeonsList.clear();
    m_flags = LFG_MEMBER_FLAG_NONE |
        LFG_MEMBER_FLAG_COMMENT |
        LFG_MEMBER_FLAG_ROLES |
        LFG_MEMBER_FLAG_BIND;
    m_proposal = NULL;
    m_roleCheckCancelTime = 0;
    m_roleCheckState = LFG_ROLECHECK_NONE;
    SetDungeon(NULL);
}

uint8 LFGGroupState::GetRoles(LFGRoles role)
{
    uint8 count = 0;
    for (GroupReference* itr = m_group->GetFirstMember(); itr != NULL; itr = itr->next())
    {
        if (Player* member = itr->getSource())
            if (member->IsInWorld())
                if (member->GetLFGState()->GetRoles() & (1 << role))
                    ++count;
    }
    return count;
};

uint8 LFGGroupState::GetVotesNeeded() const
{
    return m_votesNeeded;
}

uint8 LFGGroupState::GetKicksLeft() const
{
    return m_kicksLeft;
}

void LFGGroupState::StartRoleCheck()
{
    m_roleCheckCancelTime = time_t(time(NULL)) + LFG_TIME_ROLECHECK;
    SetRoleCheckState(LFG_ROLECHECK_INITIALITING);
}

bool LFGGroupState::IsRoleCheckActive()
{
    if (GetRoleCheckState() != LFG_ROLECHECK_NONE && m_roleCheckCancelTime)
        return true;

    return false;
}

LFGType LFGGroupState::GetDungeonType()
{
    if (!GetDungeons() || GetDungeons()->empty())
        return LFG_TYPE_NONE;

    return LFGType((*GetDungeons()->begin())->type);
};

LFGQueueInfo::LFGQueueInfo(ObjectGuid _guid, LFGType type)
{
    guid = _guid;
    m_type = type;
    MANGOS_ASSERT(!guid.IsEmpty());

    tanks = LFG_TANKS_NEEDED;
    healers = LFG_HEALERS_NEEDED;
    dps = LFG_DPS_NEEDED;
    joinTime = time_t(time(NULL));

};

LFGProposal::LFGProposal(LFGDungeonEntry const* _dungeon)
{
    m_dungeon = _dungeon;
    m_state = LFG_PROPOSAL_INITIATING;
    m_group = NULL;
    m_cancelTime = 0;
}

void LFGProposal::Start()
{
    m_cancelTime = time_t(time(NULL)) + LFG_TIME_PROPOSAL;
};

void LFGProposal::RemoveDecliner(ObjectGuid guid)
{
    if (guid.IsEmpty())
        return;

    RemoveMember(guid);

    declinerGuids.insert(guid);
};

void LFGProposal::RemoveMember(ObjectGuid guid)
{
    if (guid.IsEmpty())
        return;

    LFGQueueSet::iterator itr = playerGuids.find(guid);
    if (itr != playerGuids.end())
        playerGuids.erase(itr);
};

void LFGProposal::AddMember(ObjectGuid guid)
{
    playerGuids.insert(guid);
};

bool LFGProposal::IsDecliner(ObjectGuid guid)
{
    if (guid.IsEmpty())
        return true;

    LFGQueueSet::iterator itr = declinerGuids.find(guid);
    if (itr != declinerGuids.end())
        return true;

    return false;
};

LFGType LFGProposal::GetType()
{
    return (m_dungeon ? LFGType(m_dungeon->type) : LFG_TYPE_NONE);
};