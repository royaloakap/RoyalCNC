>>> Royal SRC TermFX <<<
Created by https://t.me/Royaloakap

Make sure to read to the bottom for designing tools and colors!

##### assets/attacks/attacks.json
{HOST}:                           `Description` The targeted host (Example: 70.70.70.7)
{PORT}:                           `Description` The targeted port (Example: 80)
{TIME}:                           `Description` The attack duration (Example: 300)
{METHOD}:                         `Description` The method that was used (Example: OVH-TCP)
##### branding/title.royal
Response Type: String

<<$all_logs>>:                    `Description` Total Attacks on System
<<$maxslots>>:                    `Description` Max slots on System
<<$online>>:                      `Description` Total number of users who are currently logged in (Example: 3)
<<$cnc>>:                         `Description` CNC name set in the Settings > General > Name section of config.json
<<$createdBy>>:                   `Description` Created by
<<$ClientIP>>:                    `Description` Client IP
##### Sleep Functions
<<sleep()>>:                      `Description` Sleep
<<sleep(250)>>:                   `Description` Sleep 250 ms                     
<<sleep(500)>>:                   `Description` Sleep 500 ms
<<sleep(1000)>>:                  `Description` Sleep 1000 ms
<<sleep(2500)>>                   `Description` Sleep 2500 ms
<<sleep(5000)>>:                  `Description` Sleep 5000 ms
<<sleep(7500)>>:                  `Description` Sleep 7500 ms
<<sleep(10000)>>:                 `Description` Sleep 10000 ms
<<time()>>:                       `Description` UTC time zone
<<$date>>:                        `Description` UTC date zone
<<$os>>:                          `Description` SSH Client that user connected with (Example: SSH-2.0-PuTTY_Release_0.81)
##### branding/attacks/attack_sent.tfx
Response Type: none

<<$username>>:                    `Description` User username (Example: root)
<<$days_left>>:                   `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$user_time_since_creation>>:    `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$user_time_expiry_fmt_1>>       `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$user_time_expiry_fmt_2>>       `Description` Days until user expiry (Example: "1" if expiry is in 1 Years) 
<<$admin>>:                       `Description` User Administrator status (true/false)
<<$reseller>>:                    `Description` User Reseller status (true/false)
<<$banned>>:                      `Description` User Banned status (true/false)
<<$bannedmsg>>:               `Description` Custom Message Banned
<<$vip>>:                         `Description` User VIP status (true/false)
<<$api>>:                         `Description` User API status (true/false)
<<$private>>                      `Description` User Private status (true/false)
<<$owner>>:                       `Description` User Owner access status (true/false)
<<$holder>>:                      `Description` User Holder access status (true/false)
<<clear()>>:                      `Description` Clear the terminal screen
<<$newuser>>:                     `Description` New user status (true/false)
<<$maxsessions>>:                 `Description` Max sessions (Example: 1)
<<$maxtime>>:                     `Description` Max time (Example: 120)
<<$cooldown>>:                    `Description` Cooldown (Example: 30)
<<$concurrents>>:                 `Description` Max concurrents (Example: 3)
<<$ongoing>>:                     `Description` My ongoing attacks
<<$powersaving>>:                 `Description` Bypass Power Saving Status
<<$bypassblacklist>>:             `Description` Bypass Blacklist Status
<<$allongoing>>:                  `Description` All ongoing attacks
<<$fake_online>>:                 `Description` Fake online count + real online user (default adds 4 fake online users)
##### SOON assets/theme/cfxinfo.royal
Response Type: string

<<$cfx.ip>>:                      `Description` Self-explanatory
<<$cfx.code>>:                    `Description` Self-explanatory
<<$cfx.country>>:                 `Description` Self-explanatory
<<$cfx.hosting>>:                 `Description` Self-explanatory
<<$cfx.org>>:                     `Description` Self-explanatory
Response Type: int

<<$cfx.port>>:                    `Description` Self-explanatory
<<$cfx.players.current>>:         `Description` Self-explanatory
<<$cfx.players.max>>:             `Description` Self-explanatory
##### SOON assets/theme/ipinfo.royal
Response Type: string

<<$host.ip>>:                      `Description` Self-explanatory
<<$host.region>>:                  `Description` Self-explanatory
<<$host.country>>:                 `Description` Self-explanatory
<<$host.continent>>:               `Description` Self-explanatory
<<$host.city>>:                    `Description` Self-explanatory
<<$host.zip>>:                     `Description` Self-explanatory
<<$host.isp>>:                     `Description` Self-explanatory
<<$host.org>>:                     `Description` Self-explanatory
<<$host.timezone>>:                `Description` Self-explanatory
Response Type: int

<<$host.asn>>:                     `Description` Self-explanatory
##### assets/theme/views/
Custom Login
<<usernameposition(row,column)>>:  `Description` Set position for username input
<<passwordposition(row,column)>>:  `Description` Set position for password input
<<newpwdposition(row,column)>>:    `Description` Set position for new password input
<<cnewpwdposition(row,column)>>:   `Description` Set position for confirm new password input


### Soon ###
<<$fake_bots>>
<<$>>
<<$>>
<<$>>
<<$>>
<<$>>