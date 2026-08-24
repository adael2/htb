# Searching for open ports
nmap -sV [ip]
# Task 1 captured

# Searching for manager email
# Tip: Has to add Host, otherwise, you cannot access to the HTML.
curl -s -L -H "Host: nexus.htb" http://[ip]/ | grep -Eoi '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' | sort -u
# Task 2 completed