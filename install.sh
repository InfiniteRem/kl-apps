#!/usr/bin/env bash

declare -a PKGS=(nmap dirb hashcat macchanger eyewitness sublist3r maltego wpscan spiderfoot dnsnum rainbowcrack hydra john sqlmap scapy cryptsetup medusa aircrack-ng netcat beef-xss nuclie netdiscover koadic johnny evil-winrm rkhunter cewl crackmapexec dvwa villain sherlock wifite tcpdump airgeddon sslstrip recon-ng metagoofil legion kismet responder crunch testdisk wordlist amass arjun btscanner dex2jar bluez theharvester metasploit-framework gobuster burpsuite hping3 armitage ffuf autopsy whatweb mimikatz impacket-scripts silver redeye lynis gophish goldeneye foremost fierce chntpw capstone wireshark bettercap apktool yara weevely trufflehog steghide sslscan binwalk xplico wifiphisher veil tiger dnsrecon bloodhound yersinia socat nbtscan hakrawler ghidra fcrackzip dirbuster commix reaver arpwatch ettercap powershell)

for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo apt install "$i"
    fi
done

