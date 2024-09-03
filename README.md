# Royal SRC Tutorial

Thank you for your trust in SRC, you will not regret it.

Current SRC version: `2.0.1`

# Minimum specs

Operating System: `Ubuntu 20.04`
Ram: `2 Gb`
CPU: `1 core` @ `1 Ghz`
Storage: `8 Gb`
*Step #1*
# Do the following:
	Open the "build/config.json" and replace line 2 with your license key.
	Open the "build/config.json" and replace line 4 and 8 with your server IP address.
	Open the "RoyalSRC/RoyalSRC.sh" and replace line 8 with your cnc directory if it is not "/root/RoyalSRC".
## What it should look like: https://ibb.co/xxxxxxx (Will add this in future update)

*Step #2*
1.  On your server run `sudo apt-get update -y` and `sudo apt-get upgrade -y`
2.  First run `sudo apt-get install gnupg`
3.  Then run `curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -`
4.  Then run `apt-key list`
5.  Then run `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list`
6.  Then run `sudo -i wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb` and `sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb`
6.  Then run `sudo apt update`
7.  Then run `sudo apt install mongodb-org`
8.  Then run `sudo systemctl start mongod.service`
9.  Then run `sudo systemctl status mongod`
10. Your MongoURL Default will be `mongodb://127.0.0.1:27017/
11. Then run `ssh-keygen -t rsa -b 2048 -f ssh-key`
12. Moov  `ssh-key` /build/ssh-key
mv ssh-key /root/RoyalSRC/build/ssh-key
*Step #3*
1. On your server run `sudo apt-get update -y` and `sudo apt-get upgrade -y`
2. Upload the files in 'RoyalSRC' onto your server.
3. Navigate into the directory using: `cd RoyalSRC`.
4. Now run: `chmod 777 *`.
5. Run `./AUTO_ROYAL`

# How to reattach to Royal SRC SCREEN
1. `screen -r SRC_session`

# If Royal SRC crash uses this:
1. `sudo apt-get install nodejs npm -y`
2. `npm install n -g`
3. `n latest`
4. `npm i pm2 -g`
5. `d ./RoyalSRC` for test
6. Now run: `chmod 777 *`
7. `pm2 start "./RoyalSRC" --name RoyalSRC`

# How to reattach to Royal's pm2

`pm2 log RoyalSRC`

# How to kill to Royal's pm2

`pm2 stop RoyalSRC`

*Step #4*
# Login
1. Run Royal SRC for the first time to let it build the database.
2. Open your SSH Client or the terminal.
3. On the Client:
   1. Set the host field to your server IP.
   2. Set the port field to `1339` (or what ever is in your `config.json`).
   3. Set Connect Type to "SSH".
   4. Click connect.
   5. Type any username then enter to ge to the custom login screen. 
   6. Go to /RoyalSRC/build/login-info.json to have the generated plan


# Launch Attacks

1. Login to Royal SRC
2. Run `<method> <target> <duration> <port>`

Commands information
commands Admin
add a user : `users add`

Ex commands :

`users admin=false root`
`users ban root`
`users bypassblacklist=false root`
`users holder=false root`
`users mfa=false root`
`users powersaving=false root`
`users raw=false root`
`users remove root`
`users reseller=false root`
`users unban root`
`users concurrents=12 root`
`users cooldown=60 root`
`users add-days=30 root`
`users maxtime=3600 root`
`users password=abcdefghijklmnopqrstuvwxyz root`
`users maxsessions=12 root`

View user details: `view user test`

Set a user as VIP : `users vip=false root`

commands Sessions
Disconnect a user : `sessions kick root@1`

List sessions : `sessions ids`

Search for a session : `sessions lookup root@1`

Send a message to a session: `sessions message hello! root@1`


commands Reseller

Add a customer: `clients add`

Ex commands :

`clients holder=false root`
`clients holder=true root`
`clients raw=false root`
`clients raw=true root`
`clients concurrents=12 root`
`clients cooldown=60 root`
`clients add-days=30 root`
`clients maxtime=3600 root`
`clients vip=false root`
`clients vip=true root`

commands Servers
Servers appreciated : `servers like udp`

Servers not appreciated : `servers dislike udp`

For any questions or assistance, please consult the documentation or contact t.me/Royaloakap.

