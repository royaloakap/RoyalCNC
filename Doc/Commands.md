# Commands information

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