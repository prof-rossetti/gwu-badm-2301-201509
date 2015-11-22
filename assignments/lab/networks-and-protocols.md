# Networks and Protocols Lab Exercise

Reference lecture notes on
 [Hardware](/notes/hardware.md),
 [Networks and Protocols](/notes/networks-and-protocols.md),
 and [Information Security and Privacy](/notes/information-security-and-privacy.md), as well as the [Command-line Computing Lab](/assignments/lab/command-line-computing.md).

## Description

There is a secret message hidden for you on a secure, remote server. Your mission is to access the server and retrieve the message.

The server grants access to any "public key"
 which has been added to its list of "authorized keys".

An instructor is ready to add your public key to the list of authorized keys so you can access the server.

If you do not have an existing key pair, you will need to generate a new one.

### Generate Key Pair

If you are using Mac OS,
 or if you are using Windows OS and have downloaded the GitHub Desktop Application:
  follow these [key generation instructions](https://help.github.com/articles/generating-ssh-keys/).

Else if you are using Windows OS and have not downloaded the GitHub Desktop Application:
  use the [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) program, as demonstrated by an instructor.

When generating your key pair,
 choose to name the files `gw_id_rsa` and `gw_id_rsa.pub`,
 or note the names you chose and substitute them when executing the instructions below.

### Share Public Key with Server Administrator

After generating a key-pair, share your public key with an instructor.

```` sh
pbcopy < ~/.ssh/gw_id_rsa.pub
# ... copies the contents of the gw_id_rsa.pub file to your clipboard
# ... so you can paste into an email or chat message
````

After receiving your public key, the instructor will add it to the server's list of authorized keys.

### Access the Server

After confirmation from an instructor that the server has been updated to authorize your public key,
 use the SSH protocol to login to the server.
 Your username on the remote server is the same as your GW `net_id` (e.g. "sammy_student" for sammy_student@gwu.edu).

```` sh
ssh sammy_student@54.88.47.221 -i ~/.ssh/gw_id_rsa.pub
````

Navigate to your "inbox" directory and print the contents of a file called `secret_message.txt`.

Demonstrate to an instructor or copy and paste the results into an email or chat message to an instructor.

Bonus:

Use the SCP protocol to upload a file to the remote server.

```` sh
scp ~/Desktop/my_data.csv sammy_student@54.88.47.221:outbox -i ~/.ssh/gw_id_rsa.pub
````

Bonus:

Use an SSH connection and MySQL connection to access and query a shared database which resides on the remote server. You may provide your credentials to a DBMS like Sequel Pro as follows:

![use the same ssh credentials as before clicking on a button that looks like a key to select your public key file; for a mysql connection use the same username as ssh but leave the password blank](/resources/images/sequel-pro-ssh-mysql-connection-credentials.png)
