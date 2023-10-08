# systemctl

```shell
sudo systemctl --type=service --state=running
sudo systemctl status <service>
sudo systemctl start <service>
sudo systemctl stop <service>
sudo systemctl restart <service>
sudo systemctl reload <service>  # trigger configuration reload

# control if service should be run automatically at boot time
sudo systemctl enable <service>
sudo systemctl disable <service>
```