UniFi Controller Docker Container
============================================
This docker container is a near fully baked container of the Ubiquiti UniFi Controller. If you're starting from scratch you **must** place the **system.properties** & **keystore** files in the destination of your /var/lib/unifi/`volume. Otherwise you'll have a java error in either starting the **bonjour** or **unpnp** services, yeah that took a couple hours to debug. If you already have an existing backup of a controller, simply point the Volume to this directory and everything should work like pie, mmm pie. 
 
Also, because the container may not be using the hosts's networking and instead using the Docker NAT, you will need to provision all AP's using the L3 mthod found here: [UniFi - Layer 3 methods](https://community.ubnt.com/t5/UniFi-Controller-Installation/UniFi-Layer-3-methods-for-UAP-adoption-and-management/ta-p/455643)

Resource Requirements 
----------
|Resource|Minimum|Recommended|
|---|---:|---:|
|RAM:|256 MB|1024 MB|
|DISK|500 MB|2 GB|

EXPOSE
----------
|Purpose|Protocol|Ports|
|---|:---:|---:|
|Web HTTP|TCP|8080|
|Web HTTPS|TCP|8443|
|Portal HTTP|TCP|8880|
|Portal HTTPS|TCP|8843|
|UniFi Shutdown Port|TCP|8081|
|STUN|UDP|3478|

SystemD unit volume mounts
----------
|Volume|Filesystem Location|
|---|---:|
|/var/lib/unifi|/opt/unifi|

