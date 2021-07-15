----- Installing Shadowsocks (lost sock)
 
apt install shadowsocks-libev
 
Editing the config
 
nano /etc/shadowsocks-libev/config.json
 
We restart the server:
 
systemctl restart shadowsocks-libev.service
 
And that's it, we're done with the server. Moving on to the client.
 
Install the same package on the client machine:
 
apt install shadowsocks-libev
 
We make a config file, for example, in the home directory
 
nano ~ / shsocks.json
 
{
    "server": "123.123.123.123",
    "server_port": 12345,
    "local_port": 1080,
    "password": "password",
    "timeout": 60,
    "method": "aes-256-cfb"
}
 
The only difference is the presence of local_port. The setting specifies which port on the local host the local SOCKS server will use.
 
Launch:
 
ss-local -c ~ / shsocks.json
