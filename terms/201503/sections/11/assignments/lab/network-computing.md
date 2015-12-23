# Network Computing Lab Exercise

Reference lecture notes on
 [Hardware](/notes/information-system-components/hardware.md),
 [Networks and Protocols](/notes/information-system-components/networks-and-protocols.md),
 and [Information Security and Privacy](/notes/information-security-and-privacy.md), as well as the [Command-line Computing Lab](/assignments/lab/command-line-computing.md).

## Description

There is a secret message hidden for you on a secure, remote server. Your mission is to access the server and retrieve the message.

The server grants access to any "public key"
 which has been added to its list of "authorized keys".

An instructor is ready to add your public key to the list of authorized keys so you can access the server.

If you do not have an existing key pair, you will need to generate a new one.

### Part I

#### Generate Key Pair

If you are using Mac OS,
 or if you are using Windows OS and have downloaded the [Git Bash](https://git-for-windows.github.io/) Application:
  follow these [key generation instructions](https://help.github.com/articles/generating-ssh-keys/).

Else if you are using Windows OS and not the GitHub Desktop Application:
  use the [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) PuttyGen program, as demonstrated by an instructor and detailed in this [tutorial](https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-windows).

When generating your key pair:
  + always use a password you will remember
  + optionally name the files `gw_id_rsa` and `gw_id_rsa.pub`, else note the alternate name and substitute it when executing the instructions below

Finally, note the names and location of the generated files, usually inside the `~/.ssh` directory.

```` sh
cd ~/.ssh
ls -al
````

#### Share Public Key with Server Administrator

After generating a key-pair, copy the contents of your public key, and paste into an email or chat message to an instructor.

Copy contents of public key file ...

Mac OS:

```` sh
pbcopy < ~/.ssh/gw_id_rsa.pub
````

Windows OS:

```` sh
type path/to/gw_id_rsa.pub | clip
````






After receiving your public key, the instructor will add it to the server's list of authorized keys.





















### Part II

#### Access the Server

After confirmation from an instructor that the server has been updated to authorize your public key,
 use the SSH protocol to login to the server.
 Your username on the remote server is the same as your GW `net_id` (e.g. "sammy_student" for sammy_student@gwu.edu).

The server IP will likely be different than the example address below ("54.88.47.221"), so make sure to substitute the most recent IP address sent to you by an instructor when performing the instructions below.

Mac OS:

Use the `ssh` command to login as your username ("sammy_student") to a server ("54.88.47.221") using your public key as an identity file.

```` sh
ssh sammy_student@54.88.47.221 -i ~/.ssh/gw_id_rsa.pub
````

If you get an error like *"WARNING: UNPROTECTED PRIVATE KEY FILE. Permissions 0644 ... are too open."*, make sure you performed the [`ssh-agent` step](https://help.github.com/articles/generating-ssh-keys/#step-3-add-your-key-to-the-ssh-agent) and try again. If for some reason that doesn't work, you might need to change private key file permissions with `chmod 400 ~/.ssh/gw_id_rsa`, and try again.

Windows OS:

Use the PuTTY application, as demonstrated in this [PuTTY SSH tutorial](https://docs.joyent.com/public-cloud/instances/connecting/ssh-from-windows).

#### Locate and Access the Secret Message

Navigate to your "inbox" directory and print the contents of a file called `secret_message.txt`.

Demonstrate to an instructor or copy and paste the results into an email or chat message to an instructor.









<hr>

Bonus:

Use the SCP protocol to download a file from the remote server.

```` sh
scp -i ~/.ssh/gw_id_rsa.pub sammy_student@54.175.158.91:/home/sammy_student/inbox/secret_message.txt ~/Desktop/
````

Use the SCP protocol to upload a file to the remote server.

```` sh
scp -i ~/.ssh/gw_id_rsa.pub ~/Desktop/my_data.csv sammy_student@54.175.158.91:/home/sammy_student/outbox/
````

Bonus:

Use an SSH connection and MySQL connection to access and query a shared database which resides on the remote server. You may provide your credentials to a DBMS like Sequel Pro as follows:

![use the same ssh credentials as before clicking on a button that looks like a key to select your public key file; for a mysql connection use the same username as ssh but leave the password blank](/resources/images/sequel-pro-ssh-mysql-connection-credentials.png)
