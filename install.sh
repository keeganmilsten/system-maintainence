su
mv /home/$USER/system-maintainance/clean.sh /usr/bin
mv /home/$USER/system-maintainance/update.sh /usr/bin
mv /home/$USER/system-mainainance/clean2.sh /usr/bin
mv /home/$USER/system-mainainence/remove.sh /usr/bin
mv /home/$USER/system-maintainance/system-maintainance.desktop /home/$USER/.local/share/applications
cd
cd /usr/bin
chmod +x /usr/bin/clean.sh
chmod +x /usr/bin/update.sh
chmod +x /usr/bin/clean2.sh
chmod +x /usr/bin/remove.sh
cd
cd /home/$USER/
rm -r system-mainainence
