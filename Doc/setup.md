# Royal SRC Tutorial

Thank you for choosing Royal SRC; you won't regret it!

**Current SRC version**: `1.8.4.6`

---

## Minimum Requirements

- **Operating System**: `Ubuntu 22.04`
- **RAM**: `2 GB`
- **CPU**: `2 Core` @ `2 GHz`
- **Storage**: `20 GB` Is better

---
## Check This for Any Support :
## https://t.me/c/2118617839/3/784
## https://t.me/c/2118617839/9/1170 
## https://t.me/royaloakap_bot 
---

## Step 1: Initial Setup

Run the following commands to disable IPv6 (optional):

```bash
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1

1.Open assets/config/config.json and replace line 4 with your license key.
2.Check the rest of assets/config/config.json for any custom settings.
3.Open assets/attacks/attacks.json and update relevant lines.
4.Open assets/config/presets.json and replace your presets as needed.

1. Step 1: Install RoyalSRC ``

1.1 `Upload the RoyalSRC files to your server.`
1.2 Navigate to the directory: `cd RoyalSRC`, `sudo su root`, `chmod 777 *`

Step 2: Install MongoDB

1. Update the server: `sudo apt-get update -y && sudo apt-get upgrade -y`
2. Install gnupg: `sudo apt-get install gnupg`
3. Add MongoDB Key: `curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
apt-key list`
4. Add MongoDB repository: `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list`
5. Install OpenSSL dependency: `sudo -i wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb`
5.1 And: `sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb`
6. Install MongoDB: `sudo apt update`
6.1. `sudo apt install mongodb-org`
6.1. `sudo systemctl start mongod`
6.*  `./RoyalSRC` (It s just for Create Database And Collections.)
6.* `Control + C`
Step 2.1: Secure MongoDB with Authentication
Connect to MongoDB without authentication:

1.1: `mongo`
1.2: Switch to database `use Royal`

Create a MongoDB user: Replace "chAmBuTRurgUEGINHERVatArylingF" with a strong password.
1.3:
`db.createUser({
  user: "root",
  pwd: "chAmBuTRurgUEGINHERVatArylingF",
  roles: [{ role: "readWrite", db: "Royal" }]
})`

Enable authentication in MongoDB by editing the configuration file:

Open the MongoDB configuration file:

1.4: Put CMD `sudo nano /etc/mongod.conf`

Add the following under the security section:

security:
  authorization: "enabled"

Save and close the file. ( Control + o and ENTER / Control + X for quit nano)

Restart MongoDB to apply the changes:

1.5: Put CMD `sudo systemctl restart mongod`
1.6: And Start Mongo DB `sudo systemctl start mongod`

In your config.json file, update the MongoDB URL with the username and password:
"Database": {
  "MongoURL": "mongodb://root:your_password@localhost:27017/Royal"
}

To verify that authentication is working, try connecting to MongoDB using the command line with the new credentials:

`mongo -u root -p your_password --authenticationDatabase Royal`


After following these steps, your MongoDB instance will require a username and password for access, securing your data.

8. Running Royal SRC with PM2, Install NVM and Node.js

8.1 `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash`
8.2 `source ~/.bashrc`
8.3 `nvm install 22.9.0`
8.4 `nvm use 22.9.0`

9. Install PM2 `npm install n -g`
9.1 `npm install n -g`
9.2 `n latest`
9.2 `npm i pm2 -g`

10. Run RoyalSRC 
10.2 `./RoyalSRC`  # For testing
10.3 `pm2 start "./RoyalSRC" --name RoyalSRC`

11. Managing RoyalSRC with PM2

11.1 Reattach to logs: `pm2 log RoyalSRC`
11.2 Stop RoyalSRC: `pm2 stop RoyalSRC`


Step 4: Login

12. Connect using SSH
12.1 Host: `Your server IP`
12.2 Port: `1339` or as specified in config.json Lines 6
12.3 Type: `SSH`

First account setup: Access /RoyalSRC/assets/config/login.json

Bonus  How To login on You r phone: Open Google Chrome or Safari and go on  https://ssheasy.com

??? Launching Attacks ???

1. Login to Royal SRC. (View Step 4)
2. Run the command with the format: `<method> <target> <port> <duration>`


Created By t.me/Royaloakap

Check This for Any Support :
https://t.me/c/2118617839/3/784
https://t.me/c/2118617839/9/1170