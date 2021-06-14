#! /bin/bash
#script for installing vulscan into NMAP. vulscan github repo : https://github.com/scipag/vulscan | kudos to SCIP (www.scip.ch)
if [[ -d "/usr/share/nmap/scripts/vulscan" ]]; then
	echo "Vulscan is already installed"
	echo "Now run vuldbupdate.sh to update vulnerability database"
elif [[ -d "scipag_vulscan" ]]; then
		ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan
		echo "Vulscan installed in this device."
		echo "Now run vuldbupdate to update vulnerability database"
	else
	echo "Downloading Vulscan from : https://github.com/scipag/vulscan"
	git clone -q https://github.com/scipag/vulscan scipag_vulscan
	ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan
	echo "Vulscan installed on this device."
	echo "Now run vuldbupdate.sh to update vulnerability database"
fi
