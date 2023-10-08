# Additional ssh Configuration

The following instructions will
1. disable root ssh access
2. disable password authentication for ssh

* Add the following line to the end of `/etc/ssh/sshd_config`
```shell
Include /etc/ssh/sshd_config.d/*.conf
```
* Add the following lines to a file ending in `.conf` in `/etc/ssh/sshd_config.d/`
```shell
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
PermitRootLogin no
```
* I also comment out the above configurations in `/etc/ssh/sshd_config`
* Restart the ssh server
```shell
sudo systemctl reload ssh
```


## Links
* https://www.cyberciti.biz/faq/how-to-disable-ssh-password-login-on-linux/