>>> Royal SRC TermFX <<<

Created by https://t.me/royaloakap

Make sure to read to the bottom for designing tools and colors!


##### build/attacks/attacks.json  #####

{HOST}                              `Description` The targeted host (Example: 70.70.70.7)
{PORT}                              `Description` The targeted port (Example: 80)
{TIME}                              `Description` The attack duration (Example: 300)
{METHOD}                            `Description` The method that was used (Example: OVH-TCP)

##### branding/title.royal #####
`Response Type: String`
<<$maxslots>> string                `Description` Max slots on System
<<$online>> int                    `Description` Total number of users who are currently logged in (Example: 3)
<<$cnc>> string                    `Description` CNC name set in the Settings > General > Name section of config.json
<<$createdBy>> string               `Description` Created by
<<$ClientIP>> string               `Description` Client IP
<<sleep()>> func                   `Description` Sleep 
<<sleep(250)>> func                   `Description` Sleep 250
<<sleep(500)>> func                   `Description` Sleep 500
<<sleep(1000)>> func                   `Description` Sleep 1000
<<sleep(2500)>> func                   `Description` Sleep 2500
<<sleep(5000)>> func                   `Description` Sleep 5000
<<sleep(7500)>> func                   `Description` Sleep 7500
<<sleep(10000)>> func                   `Description` Sleep 10000
<<time()>> func                    `Description` utc time zone
<<$date>> string                   `Description` utc Date zone
<<$os>> string                     `Description` SSH Client that user connected with (Example: SSH-2.0-PuTTY_Release_0.81)


##### branding/attacks/attack_sent.tfx #####
`Response Type: none`

<<$username>> string              `Description` User username (Example: root)
<<$days_left>> int                `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$admin>> bool                   `Description` User Administrator status (true/false)
<<$reseller>> bool                `Description` User Reseller status (true/false)
<<$banned>> bool                  `Description` User Banned status (true/false)
<<$vip>> bool                     `Description` User Reseller status (true/false)
<<$raw>> bool                     `Description` User Raw acces status (true/false)
<<$holder>> bool                  `Description` User Holder acces status (true/false)
<<clear()>> func                  `Description` Clear the terminal screen
<<$newuser>> bool                 `Description` New user status (true/false)
<<$maxsessions>> int              `Description` Max session (ex: 1)
<<$maxtime>> int                  `Description` Max Time (ex: 120)
<<$cooldown>> int                 `Description` Cooldown (ex: 30)
<<$concurrents>> int              `Description` Max Concurrents (ex: 3)
<<$ongoing>> int                `Description` My ongoing attacks
<<$powersaving>>                  `Description` Bypass Power Saving Status
<<$bypassblacklist>>              `Description` Bypass BlackList Status
<<$allongoing>> int                  `Description` All ongoing attacks

##### SOON build/theme/cfxinfo.royal #####

`Response Type: string`
<<$cfx.ip>>                         `Description` Self explanatory
<<$cfx.code>>                       `Description` Self explanatory
<<$cfx.country>>                    `Description` Self explanatory
<<$cfx.hosting>>                    `Description` Self explanatory
<<$cfx.org>>                        `Description` Self explanatory
`Response Type: int`
<<$cfx.port>>                       `Description` Self explanatory
<<$cfx.players.current>>            `Description` Self explanatory
<<$cfx.players.max>>                `Description` Self explanatory

##### SOON build/theme/ipinfo.royal #####

`Response Type: string`
<<$host.ip>>                        `Description` Self explanatory
<<$host.region>>                    `Description` Self explanatory
<<$host.country>>                   `Description` Self explanatory
<<$host.continent>>                 `Description` Self explanatory
<<$host.city>>                      `Description` Self explanatory
<<$host.zip>>                       `Description` Self explanatory
<<$host.isp>>                       `Description` Self explanatory
<<$host.org>>                       `Description` Self explanatory
<<$host.timezone>>                  `Description` Self explanatory
`Response Type: int`
<<$host.asn>>                       `Description` Self explanatory



##### build/theme/views/ #####
- Custom Login
    - <<usernameposition(row,column)>> func
    - <<passwordposition(row,column)>> func
    - <<newpwdposition(row,column)>> func
    - <<cnewpwdposition(row,column)>> func
