# Searching for open ports
nmap -sV 10.129.87.204
# Task 1 captured

# Searching for manager email
# Tip: Has to add Host, otherwise, you cannot access to the HTML.
curl -s -L -H "Host: nexus.htb" http://10.129.87.204/ | grep -Eoi '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' | sort -u
# Task 2 completed