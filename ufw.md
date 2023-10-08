# UFW Notes

## Common commands
```shell
# check if ufw is installed
which ufw

# check status
sudo ufw status
sudo ufw status numbered verbose

# enable/disable ufw
sudo ufw enable
sudo ufw disable

# allow port/service
sudo ufw allow 22
sudo ufw allow ssh
# Using `limit` you can deny connections from an IP address that has attempted
# to initiate 6 or more connections in the last 30 seconds.
sudo ufw limit 22
sudo ufw limit ssh
sudo ufw limit 2022/tcp comment "SSH port rate limit"
sudo ufw allow 8787 comment "rstudio-server"
sudo ufw limit 8787 comment "rstudio-server"

# allow connection from ip address or subnet
sudo ufw allow from 192.168.1.100 to any port 22
sudo ufw allow from 192.168.2.0/24 to any port 22 proto tcp

# show rules added
sudo ufw show added

# delete rule by number
sudo ufw delete 4

# delete rule by command
sudo ufw delete allow 22
```

## Links
* https://www.cyberciti.biz/faq/howto-limiting-ssh-connections-with-ufw-on-ubuntu-debian/
* https://linuxize.com/post/how-to-list-and-delete-ufw-firewall-rules/
* https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands
* https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04

