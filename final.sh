#!/bin/bash

resumeScript="Press [Enter] to continue..."

function pause()
{
	echo $resumeScript
}

function resume()
{
        read -p "$*"
}

#STEP 8
clear
echo "Next we are going to use Session to make a checkbox"
echo "that allows just incomplete tasks to be viewed"

resume
clear

cp step8.html /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.html
cp step8.js /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.js

resume
clear

#STEP 9

echo "Adding user accounts is also ridiculously easy!"

./fileio -s "meteor add accounts-ui accounts-password" -k

cd /Users/matthewkennedy/Meteor-Demo/simple-todos

meteor add accounts-ui accounts-password

echo "All that has to be added to the html file is {{>loginButtons}}"

cd ..
cp step9.html /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.html
cp step9.js /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.js

resume
clear
