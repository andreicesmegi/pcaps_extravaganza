#!/bin/bash
# This software was developed as part of course activity, proposed by DESEC SECURITY.
# I, Andrei Cesmegi, developed it entirely by my own, utilizing the class materials,
# google researches and logical reasoning.
# Whilst this is an open-source program, I would like to affirm that I use it for legal purposes only.
# And so should you! Any crime committed by you is your sole responsibility. Don`t do it!
# Otherwise, help yourself with this tool and learn. Become a pro and help others ethically!

echo "##########################################################################"
echo "|                       DEBUG PCAPS EXTRAVAGANZA                         |"
echo "##########################################################################"

echo "Please, inform the file name bellow:"
read file

if [$file == ""]
then
	echo "Incorrect Usage, fellow. Come on!"
	echo "Inform the file name without the location or extension."
	echo "Exemple:$0 filename"

else
	echo "##########################################################################"
	echo "|                          PCAP EXTRAVAGANZA                             |"
	echo "|                             HACKING NOW!                               |"
	echo "##########################################################################"

	echo "##########################################################################"
	echo "                       HERE IS WHO ATTACKED YOU:                          "
	echo "##########################################################################"

	tcpdump -vnr $file.pcap | cut -d " " -f 5 | grep -v ttl


	echo "##########################################################################"
	echo "               HERE ARE YOUR VIOLATED ADDRESSES AND PORTS:                "
	echo "##########################################################################"

	tcpdump -vnr $file.pcap | cut -d " " -f 7 | grep -v id | cut -d ":" -f 1

	echo "##########################################################################"
	echo "|                      DEBUG PCAPS EXTRAVAGANZA                          |"
	echo "|                        THANK YOU! GOOD LUCK!                           |"
	echo "##########################################################################"

fi
