# Royal SRC Tutorial

Thank you for your trust in Royal SRC, you will not regret it.

Current SRC version: `1.2.1`

# Minimum specs

Operating System: `Ubuntu 20.04`
Ram: `2 Gb`
CPU: `1 core` @ `1 Ghz`
Storage: `8 Gb`
*Step #1*

# Run the following 3 commands:

`sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1`
`sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1`
`sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1`


# Do the following:
	Open the "build/config.json" and replace line 19 with your license key.
	Open the "build/config.json" and chek the entire config file.
   Open the "build/attacks/attacks.json" and replace lines.
	Open the "build/presets.json" and replace your presets.

*Step #2*
0.  you can try to do everything in 1x using `./Setup.sh` if an error occurs do the setup by hand.
1.  On your server run `sudo apt-get update -y` and `sudo apt-get upgrade -y`.
2.  First run `sudo apt-get install gnupg`.
3.  Then run `curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -`.
4.  Then run `apt-key list`.
5.  Then run `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list`.
6.  Then run `sudo -i wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb` and `sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb`.
6.  Then run `sudo apt update`.
7.  Then run `sudo apt install mongodb-org`.
8.  Then run `sudo systemctl start mongod.service`.
9.  Then run `sudo systemctl status mongod`.
10. Your MongoURL Default will be `mongodb://127.0.0.1:27017/`.
11. Then run `ssh-keygen -t rsa -b 2048 -f ssh-key`.
12. Moov  `mv ssh-key /root/RoyalSRC/build/ssh-key` .
*Step #3*
1. On your server run `sudo apt-get update -y` and `sudo apt-get upgrade -y`.
2. Upload the files in 'RoyalSRC' onto your server.
3. Navigate into the directory using: `cd RoyalSRC`.
4. Now run: `chmod 777 *`.
5. Now run: `./RoyalSRC`.

# How to start sessions PM2:
1. `sudo apt-get install nodejs npm -y`.
2. `npm install n -g`.
3. `n latest`.
4. `npm i pm2 -g`.
5. `cd ./RoyalSRC`. for test
6. Now run: `chmod 777 *`.
7. `pm2 start "./RoyalSRC" --name RoyalSRC`.


# How to reattach to Royal's pm2

`pm2 log RoyalSRC`.

# How to kill to Royal's pm2

`pm2 stop RoyalSRC`.

*Step #4*
# Login
1. Open your SSH Client or the terminal.
2. On the Client:
   1. Set the host field to your server IP.
   2. Set the port field to `1339` (or what ever is in your `config.json`).
   3. Set Connect Type to "SSH".
   4. Click connect.
   5. Type any username then enter to ge to the custom login screen. 
   6. Go to /RoyalSRC/build/login.json for first account.

# Launch Attacks

1. Login to Royal SRC.
2. Run `<method> <target> <port> <duration>`.   

# How to use SHH-CHAT ( DLC )
*Step #1*
# Do the following:
	Open the "build/dlc/config.json" and replace line 2 with your license key.
	Open the "build/dlc/config.json" and chek the entire config file.
   Open the "build/dlc/royal-integrations.json" and replace lines for startup discord Bot.

1. go to `cd /RoyalSRC/`
2. run `pm2 start "./CHAT-SSH" --name CHAT-SSH`
3. How to kill CHAT-SSH ? run `pm2 stop CHAT-SSH`
4. How to view logs CHAT-SSH `pm2 log CHAT-SSH`

For any questions or assistance, please consult /RoyalSRC/Doc or contact t.me/Royaloakap.

