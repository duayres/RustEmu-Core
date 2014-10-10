/*
 * This file is part of the CMaNGOS Project. See AUTHORS file for Copyright information
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

#ifndef SOCKET_H
#define SOCKET_H

#include "ProtocolDefinitions.h"

#include <boost/enable_shared_from_this.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/lock_guard.hpp>
#include "NetworkBuffer.h"

#include "Common.h"
#include "Auth/AuthCrypt.h"
#include "Auth/BigNumber.h"

class NetworkThread;
class NetworkManager;

class Socket : public boost::enable_shared_from_this<Socket>
{

public:
    /// Declare some friends
    friend class NetworkManager;

    Socket(NetworkManager& manager, NetworkThread& owner);

    virtual ~Socket(void);

    /// Check if socket is closed.
    bool IsClosed(void) const { return closed_; }

    /// Close the socket.
    virtual void CloseSocket(void);

    /// Get address of connected peer.
    const std::string& GetRemoteAddress(void) const { return address_; }

    /// Enable TcpNoDelay
    bool EnableTCPNoDelay(bool enable);

    /// Set SO_SDNBUF variable 
    bool SetSendBufferSize(int size);

    /// Set custom value for outgoing buffer size
    void SetOutgoingBufferSize(size_t size);

    /// Get underlying socket object
    protocol::Socket& socket() { return socket_; }
    NetworkThread& owner() { return owner_; }

protected:

    /// Called on open ,the void* is the acceptor.
    virtual bool Open();
    
    /// Schedule asynchronous send operation
    void StartAsyncSend();
    virtual bool ProcessIncomingData() = 0;

    uint32 native_handle();
     
    /// Mutex type used for various synchronizations.
    typedef boost::mutex LockType;
    typedef boost::lock_guard<LockType> GuardType;

    /// Mutex for protecting output related data.
    LockType out_buffer_lock_;

    /// Buffer used for writing output.
    std::auto_ptr<NetworkBuffer> out_buffer_;

    /// Buffer used for receiving input
    std::auto_ptr<NetworkBuffer> read_buffer_;

    NetworkManager& manager_;
    NetworkThread& owner_;

private:

    void StartAsyncRead();
    void Close();

    void OnWriteComplete(const boost::system::error_code& error, size_t bytes_transferred);
    void OnReadComplete(const boost::system::error_code& error, size_t bytes_transferred);
    void OnError(const boost::system::error_code& error);

    std::string ObtainRemoteAddress() const;

    protocol::Socket socket_;
    size_t outgoing_buffer_size_;
    std::string address_;
    bool write_operation_;
    bool closed_;

    static const std::string UNKNOWN_NETWORK_ADDRESS;;
};

#endif