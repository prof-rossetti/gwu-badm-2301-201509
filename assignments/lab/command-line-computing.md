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

List files in the current working directory.

```` sh
ls
ls -al # for a different display
````

Change directories (specifying absolute file path).

```` sh
cd ~/Desktop
````

Make a new directory.

```` sh
mkdir my_folder
````

Remove a directory.

```` sh
rm my_folder # triggers an error
rm -rf my_folder # recursively (-r) forces (-f) removal
````

Change directories (using relative file path).

```` sh
cd my_folder # first re-create this directory if it doesn't exist, else this will trigger an error
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

Congratulations, you are ready for [remote computing](/assignments/lab/network-computing.md).





























## Windows OS

Open the Command Prompt application.

Print the current user's name.

```` sh
whoami
````

Print the current/present working directory.

```` sh
cd
````

List files in the current working directory.

```` sh
dir
````

Change directories (specifying absolute file path).

```` sh
cd ~/Desktop
````

Make a new directory.

```` sh
mkdir my_folder
````

Remove a directory.

```` sh
rmdir my_folder
````

Change directories (using relative file path).

```` sh
cd my_folder # first re-create this directory if it doesn't exist, else this will trigger an error
````

Create a file.

```` sh
type nul > README.md
type nul > index.html
type nul > my_data.csv
type nul > my_message.txt
````

Remove/delete a file.

```` sh
del index.html
````

Edit and save a file, using a text editor like nano, atom, sublime, or vim.

```` sh
atom my_message.txt # requires "Install Shell Commands" from the Atom Settings
notepad my_message.txt # if you don't have a different text editor, its ok to use notepad for this simple example
````

Print file contents.

```` sh
type my_message.txt
````

Move a file to target location.

```` sh
move C:\Users\YOURUSERNAME\Desktop\my_folder\my_message.txt C:\Users\YOURUSERNAME\Desktop
````

Copy a file.

```` sh
xcopy C:\Users\YOURUSERNAME\Desktop\my_message.txt C:\Users\YOURUSERNAME\Desktop\my_folder
````

Congratulations, you are ready for [remote computing](/assignments/lab/network-computing.md).

<hr>

Reference:

 + http://stackoverflow.com/questions/1702762/how-to-create-an-empty-file-at-the-command-line-in-windows
 + http://www.windows-commandline.com/delete-directory-from-command-line/
 + http://superuser.com/a/186860/237810
 + http://stackoverflow.com/a/60254/670433
 + http://serverfault.com/a/4669/220302
