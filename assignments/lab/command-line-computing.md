# Command Line Computing Lab

## Mac OS

Open the Terminal application.

Print the current user's name.

```` sh
whoami
````

Print the current/present working directory.

```` sh
pwd
````

Change directories (specifying absolute file path).

```` sh
cd ~/Desktop
````

List files in the current working directory.

```` sh
ls
ls -al # for a different display
````

Make a new directory.

```` sh
mkdir my_folder
mkdir my_folder # triggers an "existing directory" error
mkdir -p my_folder
````

Remove a directory.

```` sh
rm my_folder # triggers an error
rm -rf my_folder # recursively (-r) forces (-f) removal
````

Change directories (using relative file path).

```` sh
cd my_folder # first create this directory if it doesn't exist, else this will trigger an error
````

Create a file.

```` sh
touch README.md
touch index.html
touch my_data.csv
touch my_message.txt
````

Remove a file.

```` sh
rm index.html
````

Edit and save a file, using a text editor like nano, atom, sublime, or vim.

```` sh
atom my_message.txt # requires "Install Shell Commands" from the Atom Settings
````

Print file contents.

```` sh
cat my_message.txt
````

Move a file.

```` sh
mv ~/Desktop/my_folder/my_message.txt ~/Desktop
````

Copy a file.

```` sh
cp ~/Desktop/my_message.txt ~/Desktop/my_folder
````

Congratulations, you are ready for [remote computing](/assignments/lab/command-line-computing.md).


## Windows OS



Open the Command Prompt application.

> TODO: note any differences between windows and mac commands
