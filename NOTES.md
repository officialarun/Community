#AUTHORIZATION REQUIRED BUT NO AUTH. PROTOCOL SPECIFIED 

## When does it happen?
1: When you try to run a graphical application as a different user

2: Usually occurs when a graphicl application is unable to connect to the X server(the graphical display server)


## How to solve this
There are many ways to check and follow protocols but first check whether your user is added to the sudo group:
ie : whether the user has the priveleges to open certain files as root or not
If not!
### Login to the default user which can access the root:
### Execute the following commnads:
```bash
sudo su
```

Replace the username with the user which contains the dir where you are trying to open/run the file:
```bash 
usermod -aG sudo username
```
Check whether your user is now added to the sudo group:
```bash
groups username
```
## Now you can safely exit and login back to the same user where changes will be reflected:
### Note you may need to use 'sudo' before the commands to give them elevated priveleges to execute those files:

### To check which groups does your user belong:
```bash
groups username
```
