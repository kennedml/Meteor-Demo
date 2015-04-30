#!/bin/bash
gcc -std=gnu99 -w -o fileio fileio.c
resumeScript="Press [Enter] to continue..."
welcome="Welcome to the automated Meteor Demo. Press [Enter] to begin!"
createApp="Creating an app with Meteor is incredibly simple. You simply type \"meteor create appname\""
ourApp="Our app is going to be a simple todo list, so we will start our project by typing \"meteor create simple-todos\""
function pause()
{
	echo $resumeScript
}

function resume()
{
	read -p "$*"
}

echo $welcome
resume
clear
echo $createApp
echo $ourApp
#pause
resume
clear
echo ""
./fileio -s "create simple-todos" -k
echo ""

meteor create simple-todos
#pause
resume
clear

cp simple-todos.html simple-todos/simple-todos.html
cp simple-todos.js simple-todos/simple-todos.js
cp simple-todos.css simple-todos/simple-todos.css

./fileio -s "cd simple-todos" -k
echo ""
./fileio -s "cat simple-todos.html" -k
echo -e "\n\n"
cat simple-todos.html
echo -e "\n\n\n"
#pause
resume
clear
./fileio -s "cat simple-todos.js" -k
echo -e "\n\n"
cat simple-todos.js
echo -e "\n\n\n"
#pause
resume
clear

./fileio -s "cd /simple-todos" -k
echo -e "\n\n"
./fileio -s "meteor" -k
cd simple-todos
meteor
#tmux new-session -s meteor_demo \; split-window -v meteor
