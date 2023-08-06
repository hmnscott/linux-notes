# Commands from Chapter 4

## The Filesystem Hierarchy Standard


## Managing Files and Directories
pwd
ls -F 
mkdir proj_files
mv <source> <target>
mv project* proj_files
ls -F proj_files
mv myscript myscript2           # rename file
cp /etc/hosts .
cp hosts hosts2                 # copy a file
cp -r proj_files /home/user1    # recursive copy
cp -i                           # interactive mode, default
mv -i
mv -f                           # force, override interactive mode
alias
rm myprogram
rm -f hosts2 
rm -rf                          # recursive, force
rmdir                           # only removes empty dir
unlink                          # removes files


## Finding Files
locate inittab
find <start dir> -criteria <what to find>
find /etc -name inittab
find /etc -name "host*"
find /var -size +4096k          # files greater than 4096k
find /boot -type d              # find directories

### Table 4-3 - Common criteria used with the `find` command
-amin -x        # files that were accessed less than x min ago
-amin +x        # files that were accessed more than x min ago
-atime -x       # files that were accessed less than x days ago
-atime +x       # files that were accessed more than x days ago
-empty          # empty files or directories
-fstype x       # files if they are a certain filesystem (ext2, etc)
-group x        # files owned by certain group


## Linking Files


## File and Directory Permissions


