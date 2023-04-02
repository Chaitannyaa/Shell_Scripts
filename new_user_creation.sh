#!/bin/bash

echo -e "Enter the new username: \c" 
read username

# Choose which department group the new user should belong to
echo "Which department should the new user belong to?"
echo "1. DevOps"
echo "2. Testers"
echo "3. Developers"
echo -e "Enter the department group:  \c"
read usrgrp

# Add the new user to the selected department
case $usrgrp in
    1) sudo useradd --home /home/DevOps/$username -m $username; sudo gpasswd -a $username DevOps ;;
    2) sudo useradd --home /home/Testers/$username -m $username; sudo gpasswd -a $username Testers ;;
    3) sudo useradd --home /home/Developers/$username -m $username; sudo gpasswd -a $username Developers ;;
    *) echo "Invalid Choice"; exit 1 ;;
esac

# Generate a random password for the new user
password=$(openssl rand -base64 6)

echo "$username:$password" | sudo chpasswd

# Grant sudo privileges to the new user
echo "Grant sudo privileges to the new user? (y/n): "
read sudo_privileges
sudo_privileges=${sudo_privileges,,}
if [[ $sudo_privileges == y ]]; 
then
  sudo usermod -aG sudo $username
fi

# Send an email to the new user
echo -e "Enter the email address of the new user:  \c"
read email_address
echo "Dear $username,

On behalf of the entire team here at Doodle, I would like to extend a warm welcome to you. 
We are thrilled to have you as a part of our team and look forward to your contributions to our company.

Here are your system login credentials. You can use the following details to log in to your system:

Username: $username
Password: $password

Please note that this is a one-time password, and we recommend that you change it immediately after logging in for the first time.

Once again, welcome to the team, and we look forward to working with you.

Best regards,
Chaitannyaa Gaikwad
DevOps Engineer
Doodle" | mail -s "Welcome to Doodle! - Your System Credentials" $email_address

# Display a message about the new user's creation
echo "New user '$username' has been created! and user is informed about his system credentials"
