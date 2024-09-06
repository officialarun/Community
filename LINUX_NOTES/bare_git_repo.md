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
## Set the correct permissions on the .ssh directory and the authorized_keys file:
```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```
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

## Now setting up the bare git repo:
Navigate to the the place you want to create the bare git repo:
You can easily initialize a bare git repository as discussed earlier, by using git init --bare command. The repository should preferably have a .git suffix.
```bash
git init --bare
```
## Step 2: Clone The Remote Git Repository
You can simply clone your remote repo using ssh protocol and the syntax will be in the order git clone ssh://username@publicIP/<absolute path of repo>
```bash
git clone ssh://username@publicIP/<absolute path of repo>
```
## Step 3: Create a File and Commit Some Changes
Simply add a few files and put some content into it, similarly committing 2-3 changes will help you visualize better.

## Remove local repo using rm -rf and clone again to ensure everything is working

Verify the content of your files using cat command
Pros & Cons of a Bare Git Repo:
Pros:
One can get real practical exposure to using a distributed VCS.
You can have your own remote git repo independent of any third-party client eg: Gitlab, Github.
No need to create an account with a third-party client.
Practically good for a small team working remotely.
Cons:
Additional headache to maintain a remote server containing code.
Loss of server might result in loss of all the files.
Cannot visualize the files stored in our remote repo.





