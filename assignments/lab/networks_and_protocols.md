# Networks and Protocols Lab Exercise

## Description

Check for existing public (`id_rsa.pub`) and private (`id_rsa`) key files:

```` sh
cd ~/.ssh/
ls -al
````

Use an existing key pair or [generate a new key pair](https://help.github.com/articles/generating-ssh-keys/);
 use your gwu-issued email address,
 optionally name the file `gwu_id_rsa`,
 and use a strong memorable password.

```` sh
ssh-keygen -t rsa -b 4096 -C "mynetid@gwu.edu"
````

Share your public key with an instructor and wait a few moments.

The instructor will provide you with the IP address.

Use the SSH protocol to log-in to the server.

Retrieve the secret message.
