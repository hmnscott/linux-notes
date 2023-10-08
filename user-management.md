# User Management

```shell
# add user
sudo useradd username

# add user with home directory
sudo useradd -m username

# remove user, by default user home directory is not removed
sudo userdel username

# remove user and user home directory
sudo userdel -r username

# change password
sudo passwd username

# create system user
sudo useradd -r username

# file with user information
cat /etc/passwd
```

## More information on `/etc/passwd`
* Sample line from `/etc/passwd`
  * `username:x:1000:1000:FirstName LastName:/home/username:/bin/bash`
* Fields in `/etc/passwd`
  * 1: Username
  * 2: Usually x, means the password is hashed and not stored in `/etc/passwd`
  * 3: User ID or UID
    * Normal users are created with UID of 1000 or above. System users will usually have a UID less than 1000.
  * 4: Group ID or GID
  * 5: The "Gecos" field. Used for user information like first and last name.
  * 6: Home directory for user
  * 7: User shell

## Links
* Learn Linux TV
  * https://www.learnlinux.tv/linux-essentials-managing-users/