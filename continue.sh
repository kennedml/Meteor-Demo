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
#pause
resume
echo -e "\n\n"

#STEP 3

./fileio -s "cat simple-todos.js"

cat /Users/matthewkennedy/Meteor-Demo/step3.js
resume
clear
cp step3.js /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.js

#STEP 4

echo "Lets add a form to our app!"
echo -e "\n\n"
cat step4stub.html
echo -e "\n\n"
pause
resume
clear
cp step4.html /User/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.html
cat step4stub.js
resume
clear
cat step4sort.js
resume
clear
cp step4.js /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.js

#STEP 5

cat step5stub.html
continue
clear
echo "Without any action handlers we just have useless objects!"
echo -e "\n\n"
cat step5stub.js
cp step5.html /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.html
cp step5.js /Users/matthewkennedy/Meteor-Demo/simple-todos/simple-todos.js
resume
clear

#STEP 6

echo "Now we are ready to take advantage of Meteors free cloud hosting!"

./fileio -s "meteor deploy uwectodo.meteor.com" -k
cd /Users/matthewkennedy/Meteor-Demo/simple-todos

meteor deploy uwectodo.meteor.com

pause
resume
clear
echo "Time to be a (near) instant iOS developer!"
echo -e "\n\n"
../fileio -s "meteor add-platform ios" -k
echo -e "\n\n"
meteor add-platform ios

../fileio -s "meteor run ios" -k
echo -e "\n\n"
meteor run ios
