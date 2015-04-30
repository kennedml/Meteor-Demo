#!/bin/bash

resumeScript="Press[Enter] to continue..."
continueScript="Lets continue the project up here!"

function pause()
{
	echo $resumeScript
}

function resume()
{
	read -p "$*"
}

echo $continueScript
pause
resume
echo -e "\n\n"

#STEP 3

./fileio -s "cat simple-todos.js"

echo -e "\n\n"
cat /root/Meteor-Demo/step3.js
echo -e "\n\n\n"
pause
resume
clear
cp step3.js ~/Meteor-Demo/simple-todos/simple-todos.js

#STEP 4

echo "Lets add a form to our app!"
echo -e "\n\n"
cat step4stub.html
echo -e "\n\n"
pause
resume
clear
cp step4.html /root/Meteor-Demo/simple-todos/simple-todos.html
echo "Next, lets add the form listener!"
echo -e "\n\n"
cat step4stub.js
echo -e "\n\n"
pause
resume
clear
echo "Uh oh! Our todo list is unsorted...Lets fix our js file!!"
echo -e "\n\n"
cat step4sort.js
echo -e "\n\n"
pause
resume
clear
cp step4.js /root/Meteor-Demo/simple-todos/simple-todos.js

#STEP 5

echo "Next, lets add a checkbox and a delete button!"
echo -e "\n\n\n"
cat step5stub.html
echo -e "\n\n\n\n"
pause
continue
clear
echo "Without any action handlers we just have useless objects!"
echo -e "\n\n"
cat step5stub.js
cp step5.html /root/Meteor-Demo/simple-todos/simple-todos.html
cp step5.js /root/Meteor-Demo/simple-todos/simple-todos.js
clear
#STEP 6

echo "Now we are ready to take advantage of Meteors free cloud hosting!"

cd ~/Meteor-Demo/simple-todos
meteor deploy uwectodo.meteor.com
