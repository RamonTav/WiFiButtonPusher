--nodemcu_test_startup
-- load credentials, 'SSID' and 'PASSWORD' declared and initialize in there
dofile("credentials.lua")

-- Set the Access Point
wifi.setmode(wifi.SOFTAP)
wifi.ap.config({ssid=SSID, pwd=PASSWORD})

-- Configure the DHCP service
dhcp_config = {}
dhcp_config.start = "192.168.1.1"
wifi.ap.dhcp.config(dhcp_config)
dhcpStart = wifi.ap.dhcp.start()

-- Launch application script
dofile("application.lua")
