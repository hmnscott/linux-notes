# What I usually do on fresh install

* Update OS and packages
```shell
# on debian based distros
sudo apt update
sudo apt dist-upgrade

# on redhat based distros
sudo dnf upgrade
```
* Install and configure firewall
```shell
# on debian based distros
sudo apt install ufw
sudo ufw limit ssh
sudo ufw enable
```
* Install full vim
```shell
sudo apt install vim
vim --version
```
* Change hostname
* Install bin-script folders with personal scripts and add links to bin folder
* Add the following of my personal files to home directory
  * .vimrc
  * .bashrc_additional
  * .bash_aliases
```shell
# add the following to .bashrc
if [ -f ~/.bashrc_additional ]; then
    . ~/.bashrc_additional
fi
```
* Add user with sudo access
```shell
sudo useradd -m username
sudo passwd username
sudo usermod -aG sudo username
```
* Disable root account
* Configure ssh access
  * [Set up ssh key for ssh login from Windows](set-up-ssh-keys-windows.md)
  * [Disable root ssh access and password authentication for ssh](ssh-config.md)
* Install 
  * tmux
  * curl
  * screenfetch
  * git
  * iperf3
* Install Flatpak
* Add "back ports" repository on debian
* Set runlevel so OS boots to command line
* Install github cli
* Configure sudo using the command `sudo visudo`
  * Enter the following lines below `Defaults env_reset`
```shell
Defaults    timestamp_timeout=120    # set to 120 minutes
Defaults    editor=/usr/bin/vim
```
* Clean thing up with `sudo apt autoremove`