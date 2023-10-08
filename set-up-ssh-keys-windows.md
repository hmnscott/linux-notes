# Set up ssh keys from Windows

* Create key pair using PuTTY Key Generator
  * Change number of bits to 4096
  * It is generally easier to copy the public key from the dialog box instead of using the 'Download Public Key' button.
* If it does not exist, create the directory and file `~/.ssh/authorized_keys`
* Copy the public key to the file `authorized_keys`. The public key should be on one line.
* SSH into the server using the private key

## Links
* https://www.youtube.com/watch?v=33dEcCKGBO4