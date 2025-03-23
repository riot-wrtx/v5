# PRANTAS TUNNELING

# UPDATE REPO DEBIAN
<pre><code>apt update && apt upgrade -y && update-grub && sleep 2 && reboot</code></pre>

# UPDATE REPO UBUNTU
<pre><code>apt update -y && apt upgrade -y && apt dist-upgrade -y && rebootcode></pre>

# INSTALL SCRIPT 
<code><pre>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/riot-wrtx/v5/main/anime.sh && chmod +x anime.sh && sed -i -e 's/\r$//' anime.sh && screen -S anime ./anime.sh</code></pre>

# UPDATE SCRIPT
<pre><code>wget -q https://raw.githubusercontent.com/riot-wrtx/v5/main/update.sh && chmod +x update.sh && ./update.sh</code></pre>

# WORK DI OS
- UBUNTU 18 / 20
- DEBIAN 9 / 10 

# SUPPORT PORT

- SSL/TLS : 443 / 8443
- SSHWS : 80 / 8880 / 8080 / 2082 / 2095 / 2096 / 2022 / 2092
