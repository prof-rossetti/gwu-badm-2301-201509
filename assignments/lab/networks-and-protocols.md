# Networks and Protocols Lab Exercise

## Description

### Generating a Key Pair

Check for existing public (`id_rsa.pub`) and private (`id_rsa`) key files:

```` sh
cd ~/.ssh/
ls -al
````

Use an existing key pair or [generate a new key pair](https://help.github.com/articles/generating-ssh-keys/);
 use your gwu-issued email address,
 optionally name the file `gwu_id_rsa`,
 and use a strong memorable password.

On Mac OS:

```` sh
ssh-keygen -t rsa -b 4096 -C "mynetid@gwu.edu"
````

On Windows OS, use the [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) program, as demonstrated by an instructor.

After generating a key-pair, share your public key with an instructor and wait a few moments.

The instructor will provide you with the IP address of a remote server.

Use the SSH protocol to log-in to the server. Your remote username is your GW email `net_id`.

```` sh
ssh mynetid@remote_host
````

Retrieve the secret message.

```` sh
cd mynetid/inbox
cat secret_message.txt
````

BONUS: Create a new .txt file on your local computer, then use
  the SCP protocol to upload the file into a directory on the remote server.

```` sh
scp source_file_name username@destination_host:destination_folder
````
