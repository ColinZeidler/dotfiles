bye() {
	sudo shutdown -P 0
}

work() {
	if [ -n "$1" ]
		then
		dest=$1
		else
		dest=""
	fi
	cd ~/Documents/COMP2404/$dest
}

save-local() {
	if [ -n "$1" ]; then
		UserName=$1
		IP="192.168.2.18"
		rsync -a -v --delete --force --progress ~/ $UserName@$IP:COMP2404/
	else
		echo "Please enter a username"
	fi
}

restore-local() {
	if [ -n "$1" ]; then
		UserName=$1
		IP="192.168.2.18"
		rsync -a -v --delete --force --progress $UserName@$IP:COMP2404/ ~/
	else
		echo "Please enter a username"
	fi
}
