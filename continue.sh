#!/bin/bash
resumeScript="Press [Enter] to continue..."
welcome="Welcome to the automated Meteor Demo. Press [Enter] to begin!"
createApp="Creating an app with Meteor is incredibly simple. You simply type \"meteor create appname\""
ourApp="Our app is going to be a simple todo list, so we will start our project by typing \"

function pause()
{
        echo $resumeScript
}

function resume()
{
        read -p "$*"
}

cd ~/todo-test
pwd

#echo ("Let\'s continue the demo over here!")
#pause
#resume
#echo -e "\n\n"
#./fileio -s "Collections" -k
#pause
#resume
#clear
#./fileio -s "cat simple-todos.html"
#echo -e "\n\n"
#cat simple-todos.html
#echo -e "\n\n\n"
#pause
#resume
#clear
#echo -e ("Next we need to add the mongodb package")
#./fileio -s "meteor mongo" -k

#meteor mongo
#pause
#resume

