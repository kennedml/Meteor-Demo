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

cd /root/todo_test/simple-todos

echo $continueScript
pause
resume
echo -e "\n\n"
./fileio -s "Collections" -k
./fileio -s "cat simple-todos.html"
echo -e "\n\n"
cat simple-todos.html
echo -e "\n\n\n"
pause
resume
clear
