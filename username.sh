#!/bin/bash
# username.sh
# Carolina Caraballo Velez
# CPSC 298
echo "CREATE A USERNAME!"
echo "1. Only lowercase case letters, digits & underscore"
echo "2. MUST start with a lowercase"
echo "3. MUST contain at least 3 but no more than 12 characters"
echo "Enter your username: "
read -r username

while echo "$username" | grep -E -v "^[a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "HEY! Follow the rules!"
	echo "Re-enter your username: "
	read -r username
done
echo "Thank you! Username created succesfully"

