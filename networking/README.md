Networking Fundamentals 🌐

This module covers the core concepts of computer networking, focusing on the OSI model, IP addressing, and transport protocols.

🏗️ The OSI Model

The OSI (Open Systems Interconnection) model is a conceptual framework used to understand how data moves across a network.
🚦 Quick OSI Cheat Sheet (The Real World)

Level             Name           Key Concept                   Analogy

L4              Transport         TCP/UDP           Courier: Does it need a signature (TCP) or just drop-off (UDP)?

L3              Network           IP Address        Global Address: Which city and street is the packet going to?

L2              Data Link         MAC Address       Next Door: How to get the packet to the very next device in the room.

L1              Physical          Cables/Waves      The Road: Are the wires plugged in? Is the Wi-Fi on?

Layer 3: Network Layer

Purpose: Responsible for packet forwarding and routing.

Key Function: Determines the best physical path for data based on IP addresses.

Protocols: IPv4, IPv6, ICMP.

Device: Routers.

Data Unit: Packets.

Layer 4: Transport Layer

Purpose: Ensures data transfer and flow control.

Key Function: Manages end-to-end communication and error recovery.

Protocols:

TCP (Reliable, connection-oriented).

UDP (Fast, connectionless).

Data Unit: Segments (TCP) or Datagrams (UDP).

🔢 IPv4 Addressing & Subnetting

An IP address is a unique identifier. To understand how networks are divided, we use Subnet Masks.

Key Concepts:

Subnet Mask: Acts as a "template" to separate the Network ID (street) from the Host ID (house number).

Network Address: The first address in the range (e.g., .0).

Broadcast Address: The last address in the range (e.g., .255), used to communicate with all hosts.

The "Magic Number" Rule: To find the increment (step) of a subnet, subtract the last octet of the mask from 256 ($256 - \text{mask} = \text{step}$).

🤝 Transport Protocols: TCP vs UDP

Feature                      TCP                                   UDP 
Full Name               Transmission Control Protocol      User Datagram Protocol

Reliability             High (Guaranteed delivery)         Low (Best-effort)

Speed                   Slower (Overhead)                  Faster (Low latency)

Handshake               Yes (SYN, SYN-ACK, ACK)            No

Use Cases               Web browsing (HTTP), Email         Video streaming, Online games

🛠️ Practical Tools & Commands

ip addr show (or ip a): Displays network interfaces and IP addresses in Linux.

ping: Checks connectivity between hosts (Layer 3 - ICMP).

nano: Simple text editor for terminal-based configuration.
