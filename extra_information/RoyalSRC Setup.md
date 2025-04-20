# Royal SRC Tutorial ⬇️

Thank you for choosing Royal SRC; you won't regret it ! 👑

**Current Royal SRC version**: `1.8.6.0`

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
## https://royalprojets.com_bot 
---

## Step 1: Initial Setup

Run the following commands to disable IPv6:

```bash
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
```

1.Open assets/config/config.json and replace line 4 with your license key.
2.Check the rest of assets/config/config.json for any custom settings.
3.Open assets/attacks/attacks.json and update relevant lines.
4.Open assets/config/presets.json and replace your presets as needed.
5.Open assets/config/bots.json and setupd your bots ( Discord & Telegram ) ROYAL SRC AIO EXCLUSIVE !!.
5.Open assets/config/funnel.json and link your APIS/SERVER/BOTS ( ROYAL SRC AIO EXCLUSIVE !! ).

1. Step 1: Install RoyalSRC ( RUN ALL CMD IN ``)

Upload the RoyalSRC files to your server. (/root/)

Step 2: Install MongoDB

Update the server: `sudo apt-get update -y && sudo apt-get upgrade -y`
Install gnupg: `sudo apt-get install gnupg`
Add MongoDB Key: `curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
apt-key list`

Add MongoDB repository: `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list`
Install OpenSSL dependency: `sudo -i wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb`
And Depackage: `sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb`

Install MongoDB: 
`sudo apt update`
`sudo apt install mongodb-org`
`sudo systemctl start mongod`
`cd RoyalSRC`
`chmod 777 *`
`./RoyalSRC` (It s just for Create Database And Collections.)
If you have mongo error dont problem go step 2.1 ⬇️

Step 2.1: Secure MongoDB with Authentication
Connect to MongoDB without authentication:

Run: `mongo`
Switch to database `use Royal`

Create a MongoDB user: Replace "your_password" with a strong password.
go to "https://passwordsgenerator.net/", select 35 Lenght ( NO INCLUDE Symbols !!!) exemple: ( "HsncgKtUYdXCRB9WhTeQ75PL6pAxDJ8y2bZ" )

Create user for acces to your Mongo Database:
Run:⬇️
`db.createUser({
  user: "root",
  pwd: "your_password",
  roles: [{ role: "readWrite", db: "Royal" }]
})`
Run: `exit;`

Enable authentication in MongoDB by editing the configuration file:

Open the MongoDB configuration file:

Put CMD `sudo nano /etc/mongod.conf`

Add the following under the security section:
`
security:
  authorization: "enabled"

`  

Save and close the file. ( Control + o and ENTER / Control + X for quit nano)

Restart MongoDB to apply the changes:

Put CMD `sudo systemctl restart mongod`
And Check Status `sudo systemctl status mongod`
If good ( No Error ). ( Control + C for quit mongo Console log)

In your config.json file, update the MongoDB URL with the username and password:
"Database": {
  "MongoURL": "mongodb://root:your_password@localhost:27017/Royal"
}

To verify that authentication is working, try connecting to MongoDB using the command line with the new credentials:

`mongo -u root -p your_password --authenticationDatabase Royal`


After following these steps, your MongoDB instance will require a username and password for access, securing your data.

2.2 Running Royal SRC with PM2, Install NVM and Node.js

Run: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash`
Run: `source ~/.bashrc`
Run: `nvm install 22.9.0`
Run: `nvm use 22.9.0`

2.3. Install PM2
Run: `npm install n -g`
Run: `n latest`
Run: `npm i pm2 -g`

2.4. Run RoyalSRC 
Run: `cd RoyalSRC`
Run: `./RoyalSRC`  # For testing
After 10/15s. ( Control + C )

And for Finish Start with PM2: `pm2 start "./RoyalSRC" --name RoyalSRC`

2.5 Managing RoyalSRC with PM2

Reattach to logs: `pm2 log RoyalSRC`
Stop RoyalSRC: `pm2 stop RoyalSRC`


Step 2.6: Login

12. Connect using SSH ( Use https://putty.org it's better )
12.1 Host: `Your server IP`
12.2 Port: `1339` or as specified in config.json Lines 6
12.3 Type: `SSH`

First account saving in: /RoyalSRC/assets/config/login.json

Bonus  How To login on You r phone: Open Google Chrome or Safari and go on  https://ssheasy.com

??? Launching Attacks ???

1. Login to Royal SRC. (View Step 4)
2. Run the command with the format: `<method> <target> <port> <duration>`
2.1 Bonus mode  DEBUG: `<method> <target> <port> <duration> -d` ( Only Owner User )


👑 Created By royalprojets.com
