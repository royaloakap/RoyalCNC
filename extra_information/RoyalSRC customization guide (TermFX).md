Royal SRC TermFX
Created by https://royalprojets.com
Make sure to read to the bottom for designing tools and colors!

1. ## Attack Attributes (assets/attacks/attacks.json) & (assets/dlc/funnel.json)

{HOST}                              `Description`	The targeted host (Example: `70.70.70.7`)
{TARGET}                            `Description`	The targeted host (Example: `70.70.70.7`)
{target}                            `Description`	The targeted host (Example: `70.70.70.7`)
{host}                              `Description`	The targeted host (Example: `70.70.70.7`)
{PORT}                              `Description`	The targeted port (Example: `80`)
{port}                              `Description`	The targeted port (Example: `80`)
{dport}                             `Description`	The targeted port (Example: `80`)
{TIME}                              `Description`	The attack duration (Example: `300`)
{time}                              `Description`	The attack duration (Example: `300`)
{DURATION}                          `Description`	The attack duration (Example: `300`)
{duration}                          `Description`	The attack duration (Example: `300`)
{METHOD}                            `Description`	The method that was used (Example: `OVH-TCP`)
{method}                            `Description`	The method that was used (Example: `OVH-TCP`)

2. ## Command Placeholders General System Stats (commands/title.royal)
<<$total_attack_logs>>              `Description`	Total attacks count on system
<<$max_c2_slots>>                   `Description`	Max slots C2 
<<$max_api_slots>>                  `Description`	Max slots API
<<$total_active_users>>             `Description`	Total Active Users
<<$total_expired_users>>            `Description`	Total Expired Users
<<$total_users>>                    `Description`	Total Users
<<$total_no_active_users>>          `Description`	Total No Active Users ( New User ) First Connection or request
<<$online>>                         `Description`	Total number of users currently logged in
<<$fake_online>>                    `Description`	Fake online count + real online users (default adds `4` fake users)
<<$cnc>>                            `Description`	CNC name set in config.json (Settings > App > Name)
<<$createdBy>>                      `Description`	Created by (`author`)
<<$all_ongoing>>                    `Description`	All ongoing C2/API attacks count
<<$all_ongoing_c2>>                 `Description`	All C2 ongoing attacks count
<<$all_ongoing_api>>                `Description`	All APi ( Funnel) ongoing attacks count

3. ## User-Specific Data (commands/plan.royal & branding/attacks/attack_sent.tfx)
<<$username>>                       `Description`	User username (Example: `root`)
<<$user.initial_days>>              `Description`	Initial Days Exemple: `31`
<<$user.days_left>>                 `Description`	Days until user expiry
<<$user.time_since_creation>>       `Description`	Days since user creation
<<$user.time_expiry_fmt_1>>         `Description`	User expiry date formatted as `Jan 02 2006`
<<$user.time_expiry_fmt_2>>	        `Description`   Years until expiry
<<$user.admin>>                     `Description`	User Administrator status `true/false`
<<$user.reseller>>	                `Description`   User Reseller status `true/false`
<<$user.vip>>                       `Description`	User VIP status `true/false`
<<$user.api>>	                    `Description`   User API access status `true/false`
<<$user.private>>                   `Description`	User Private status `true/false`
<<$user.owner>>	                    `Description`   User Owner access status `true/false`
<<$user.holder>>	                `Description`   User Holder access status `true/false`
<<$user.new_user>>                  `Description`	New user status `true/false`
<<$user.banned>>                    `Description`	User Banned status `true/false`
<<$user.banned_msg>>                `Description`	Custom banned message
<<$user.bypass_power_saving>>       `Description`	Bypass Power Saving Status
<<$user.bypass_anti_spam>>          `Description`	Bypass Anti Spam Status
<<$user.bypass_blacklist>>          `Description`	Bypass Blacklist Status
<<$user.attacks_count>>             `Description`	User Attack Count
<<$user.unique_targets_count>>      `Description`   Total number of unique targets attacked by the user.
<<$user.first_login_date>>          `Description`   Date of the user's very first login.
<<$user.activity_days_count>>       `Description`   Total number of active days (with at least one connection or attack) for the user.
<<$user.longest_attack_target>>     `Description`   Target attacked for the longest duration by the user.
<<$current_attack_targets>>         `Description`   List of targets currently under attack.
<<$user.daily_attack_limit>>        `Description`   Daily attack limit for this user.
<<$user.daily_attack_left>>         `Description`   Number of attacks remaining for today.
<<$user.last_attack_method_used>>   `Description`   Most frequently used attack method.
<<$user.activity_7_days>>           `Description`   User activity over the last 7 days.
<<user.total_created_users()>>      `Description`   Total users created by the current user.
<<$total_uptime_attacks>>           `Description`   Total User attack uptime.
<<$user.attacks_latest>>            `Description`	Users latest attack target
<<$user.most_frequent_target>>      `Description`   Shows the most frequently attacked target by the user.
<<$user.active_hours>>              `Description`   Shows the hours during which the user was most active in the last 2 days.
<<$user.user.current_session_ip>>   `Description`   IP address of the active session.
<<$user.daily_usage_summary>>       `Description`   Summary of daily usage per user.
<<$user.last_login>>                `Description`   user's last login date and time
<<$user.login_count>>               `Description`   total number of logins for this user.
<<$user.total_attack_api>>          `Description`   number from Api ( Funnel ) attacks.
<<$user.total_attack_c2>>           `Description`   number from C2 attacks.
<<$user.clientip>>                  `Description`	User IP address
<<$user.ongoing>>                   `Description`	Ongoing attacks for the user
<<$user.max_sessions>>	            `Description`   Max sessions allowed
<<$user.max_time>>                  `Description`	Max time per attack
<<$user.cooldown>>                  `Description`	Cooldown period
<<$user.max_concurrents>>	        `Description`   Max concurrent attacks
<<$user.most_used_port>>            `Description`   Most used port in user attacks.
<<$user.average_session_time>>      `Description`   Average time of a user session.

4. ##### attacks/attack-sent.royal #####
<<$user.most_used_attack_time>>     `Description`   Most used attack time by the user.
<<$target>>                         `Description`   The targeted host (Example: 70.70.70.7)
<<$target.host>>                    `Description`   The targeted host (Example: 70.70.70.7)
<<$target.method>>                  `Description`   The method that was used (Example: OVH-TCP)
<<$target.time_sent>>               `Description`   The unix time when the attack was sent (Example: 1703566826)
<<$target.region>>                  `Description`   Region of target (Example: ON)
<<$target.country>>                 `Description`   Country of target (Example: Canada)
<<$target.country_code>>            `Description`   Country code of target (Example: CA)
<<$target.city>>                    `Description`   Country of target (Example: Toronto)
<<$target.zip>>                     `Description`   Organization of target (Example: M5A)
<<$target.isp>>                     `Description`   ISP of target (Example: Cloudflare, Inc.)
<<$target.org>>                     `Description`   Organization of target (Example: Cloudflare, Inc.)
<<$target.timezone>>                `Description`   Time zone of target (Example: America/Toronto)
5. ##### Commands/lookup-cfx.royal #####

`Response Type: string`
<<$cfx.ip>>                         `Description`   Server Fivem IP
<<$cfx.code>>                       `Description`   Server Fivem Code CFX
<<$cfx.country>>                    `Description`   Server Fivem Country
<<$cfx.owner                        `Description`   Server Fivem Owner
<<$cfx.gametype                     `Description`   Server Fivem Game Type
<<$cfx.map                          `Description`   Server Fivem Map
<<$cfx.project_name                 `Description`   Server Fivem Projet Name
<<$cfx.project_desc                 `Description`   Server Fivem Projet Description
<<$cfx.discord_link                 `Description`   Server Fivem Discord Link
<<$cfx.resources_count              `Description`   Server Fivem Ressource count 
<<$cfx.self_reported                `Description`   Server Fivem Self Reported
<<$cfx.server_version               `Description`   Server Fivem Version
<<$cfx.enhanced_hosting             `Description`   Server Fivem Hosting
<<$cfx.hosting>>                    `Description`   Server Fivem Hosting
<<$cfx.org>>                        `Description`   Server Fivem Org
<<$cfx.city>>                       `Description`   Server Fivem City
<<$cfx.region>>                     `Description`   Server Fivem Region
<<$cfx.postal>>                     `Description`   Server Fivem Code Postal
<<$cfx.timezone>>                   `Description`   Server Fivem Timezone
<<$cfx.hostname>>                   `Description`   Server Fivem HostName
`Response Type: int`
<<$cfx.port>>                       `Description`   Server Fivem Port
<<$cfx.players.current>>            `Description`   Server Fivem Players Online
<<$cfx.players.max>>                `Description`   Server Fivem Players Max

6. ##### Commands/lookup-mc.royal #####

`Response Type: string`
<<$mc.ip>>                         `Description`    Server MC IP
<<$mc.code>>                       `Description`    Server MC Domain
<<$mc.country>>                    `Description`    Server MC Country
<<$mc.hosting>>                    `Description`    Server MC Hosting
<<$mc.org>>                        `Description`    Server MC Org
<<$mc.port>>                       `Description`    Server MC Port
<<$mc.players.current>>            `Description`    Server MC Players Online
<<$mc.dns.name>>                   `Description`    dnsData.Name
<<$mc.dns.type>>                   `Description`    dnsData.Type
<<$mc.dns.class>>                  `Description`    dnsData.Class
<<$mc.dns.ttl>>                    `Description`    strconv.Itoa(dnsData.TTL)
<<$mc.dns.rdlength>>               `Description`    strconv.Itoa(dnsData.RDLength)
<<$mc.dns.rdata>>                  `Description`    dnsData.RData
<<$mc.dns.address>>                `Description`    dnsData.Address

7. ##### Commands/lookup-host.royal #####

<<$host.ip>>                       `Description`   Host IP
<<$host.region>>                   `Description`   Host Region
<<$host.country>>                  `Description`   Host Country
<<$host.continent>>                `Description`   Host Continent
<<$host.city>>                     `Description`   Host City
<<$host.zip>>                      `Description`   Host ZIP
<<$host.isp>>                      `Description`   Host ISP
<<$host.org>>                      `Description`   Host Organisation
<<$host.timezone>>                 `Description`   Host Timezone

8. ## Login and Position Settings (assets/theme/views)
<<usernameposition(row,column)>>   `Description`   Set position for username input
<<passwordposition(row,column)>>   `Description`   Set position for password input
<<newpwdposition(row,column)>>	   `Description`   Set position for new password input
<<cnewpwdposition(row,column)>>	   `Description`   Set position for confirm new password input

9. ## System and Date Information
<<$uptime_server>>                 `Description`   Duration since the last system startup.
<<time()>>	                       `Description`   UTC time zone
<<$date>>	                       `Description`   UTC date
<<$short_date>>                    `Description`   current date in short format (e.g., DD/MM/YYYY).
<<$full_time>>                     `Description`   full time (e.g., HH:MM:AM/PM).
<<$os>>	                           `Description`   SSH client used for connection (e.g., SSH-2.0-PuTTY_Release_0.81)
<<cpu_usage()>>                    `Description`   CPU usage percentage
<<memory_usage()>>                 `Description`   memory usage percentage
<<os_version()>>                   `Description`   operating system (OS) version
<<kernel_version()>>               `Description`   kernel version (especially useful on Linux)
<<disk_space_used()>>              `Description`   Disk space used.
<<disk_space()>>                   `Description`   Free disk space.

10. ## Terminal 
<<clear()>>	                       `Description`   Clear A page
<<$default_screen>>                `Description`   Screen By Default `80X24`
<<full_screen()>>                  `Description`   Full Screen Defaut `132X40`
<<full_screen_custom(90x30)>>      `Description`   Full Screen `90x30`
<<skipline()>>                     `Description`   Skip Defaut `1` Line
`Bonus`: Custom Skipline           `  Exemple  `   <<skipline(5)>> Skip `5` Line

11. ## Sleep Functions
<<sleep(150)>>                     `Description`   Sleep Custom for `150`  milliseconds
<<10()>>                           `Description`   Sleep for `10`  milliseconds
<<20()>>                           `Description`   Sleep for `20`  milliseconds
<<100()>>                          `Description`   Sleep for `100` milliseconds
                          `Description`   Sleep for `200` milliseconds
                          `Description`   Sleep for `300` milliseconds
<<400()>>                          `Description`   Sleep for `400` milliseconds
<<500()>>                          `Description`   Sleep for `500` milliseconds
<<600()>>                          `Description`   Sleep for `600` milliseconds
<<700()>>                          `Description`   Sleep for `700` milliseconds
<<800()>>                          `Description`   Sleep for `800` milliseconds
<<900()>>                          `Description`   Sleep for `900` milliseconds
<<1000()>>                         `Description`   Sleep for `1`   second

12. ## Bonus (assets/theme/)

<<$top_3_users_by_attacks>>        `Description`   Top 3 users ranked by number of attacks.
<<$new_features_available>>        `Description`   New features or updates available.
<<$attack_methods_availability>>   `Description`   List of available attack methods.
<<all_users_rank()>>               `Description`   Ranking of users by rank.
<<top_methods_usage()>>            `Description`   Most used methods in the RoyalSRC.
<<$top_reseller_activity>>         `Description`   Displays the top reseller of the day and the number of users added by them.
<<$attack_peak_hour_today>>        `Description`   Displays the hour today when the highest number of attacks were sent.
<<$attack_method_least_used>>      `Description`   Displays the least used attack method currently in the system.
<<$attack_status>>                 `Description`   Attacks Status Disable/enable
<<$maintenance_status>>            `Description`   Maintenance Status Disable/enable
<<$api_status>>                    `Description`   API status (online or offline).
<<$global_total_users_created>>    `Description`   Total number of users created in the system.
<<$global_new_users_today>>        `Description`   Number of users created today.
<<$global_users_currently_banned>> `Description`   Number of users currently banned.
<<$global_active_resellers_count>> `Description`   Number of resellers currently active.
<<$global_active_admin_count>>     `Description`   Number of admins currently active.
<<$global_users_expired_today>>    `Description`   Number of users who expired today.
<<$global_average_attack_time>>    `Description`   Average duration of attacks on the system.
<<$global_top_target_today>>       `Description`   Most attacked target today.
<<$global_peak_user_activity>>     `Description`   Time with the highest number of users connected.
<<$>>                              `Description`   Additional placeholders for future use
<<$>>                              `Description`   Additional placeholders for future use


13. ## Soon-to-Be-Added Features
<<$fake_bots>>                     `Description`   Placeholder for future bot count feature
<<$>>                              `Description`   Additional placeholders for future use
<<$>>                              `Description`   Additional placeholders for future use
<<$>>                              `Description`   Additional placeholders for future use
<<$>>                              `Description`   Additional placeholders for future use
