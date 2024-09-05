## Scenario 1: You want to access the remote machine from your local machine:
## Generate SSH key on your local machine:
In this case, you need to generate a key-pair because it's your local machine's private key that will be used to authenticate you when accessing the remote machine via SSH.
```bash
ssh-keygen -t rsa
```
## Considering you have a remote repo and you're to clone it's repo on your machine
Check whether SSH server is installed on your system:
```bash
sudo apt update
sudo apt install ssh-server
```
```bash
sudo systemctl start ssh
```
## Check the ssh service status:
```bash
sudo systemctl status ssh
```
### Find the public ssh key on your machine:
```bash
cat ~/.ssh/id_rsa.pub
```
## Copy and paste this in remote machine's authorized-keys
## Navigate using
```bash
cd /home
cd user
ls -al
cd .ssh
ls
```
## If authorized keys dir is not present create one!
```bash
vim authorized_key
```
## Paste the public ssh key generated on your machine onto the authorized_key file created :
## Find the IP address on the remote machine:
```bash
ip addr
```
## Use the following command to acces the remote repo:
```bash
ssh Aditya@10.12.34.76
```
Note: here 'Aditya' is the username of the person where the remote repo is to be established
After running this command ,enter the password in password prompt :Connection is established





