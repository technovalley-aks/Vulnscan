#! /bin/bash
#Author : Sarath G (https://www.facebook.com/sarathg.alp)
echo "Starting to update scripts......"
mkdir $PWD/tmp_dir
download_scripts()
{
echo "Starting Downloads"
wget -q  -O $PWD/tmp_dir/cve.csv https://www.computec.ch/projekte/vulscan/download/cve.csv
echo "Completed 1/8"
wget -q  -O $PWD/tmp_dir/exploitdb.csv https://www.computec.ch/projekte/vulscan/download/exploitdb.csv
echo "Completed 2/8"
wget -q  -O $PWD/tmp_dir/openvas.csv https://www.computec.ch/projekte/vulscan/download/openvas.csv
echo "Completed 3/8"
wget -q  -O $PWD/tmp_dir/osvdb.csv https://www.computec.ch/projekte/vulscan/download/osvdb.csv
echo "Completed 4/8"
wget -q  -O $PWD/tmp_dir/scipvuldb.csv https://www.computec.ch/projekte/vulscan/download/scipvuldb.csv
echo "Completed 5/8"
wget -q  -O $PWD/tmp_dir/securityfocus.csv https://www.computec.ch/projekte/vulscan/download/securityfocus.csv
echo "Completed 6/8"
wget -q  -O $PWD/tmp_dir/securitytracker.csv https://www.computec.ch/projekte/vulscan/download/securitytracker.csv
echo "Completed 7/8"
wget -q  -O $PWD/tmp_dir/xforce.csv https://www.computec.ch/projekte/vulscan/download/xforce.csv
echo "Downloaded all databases"
}

copytonmap ()
{
cp $PWD/tmp_dir/* /usr/share/nmap/scripts/vulscan
}

download_scripts
copytonmap
rm -r $PWD/tmp_dir/
echo "Script Execution completed"
