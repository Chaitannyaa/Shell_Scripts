#!/bin/bash

echo "Let's find the greater number between your choice and the computer's choice."

echo "Please choose any number from 1-100."
read Player
if ! [[ $Player =~ ^[1-9][0-9]?$|^100$ ]]; then
    echo "Please enter a valid number from 1-100 only."
    exit 1
fi

sleep 3

Computer=$((1 + RANDOM % 100))

echo "Computer choice is $Computer."
echo "Your choice is $Player."

sleep 3

if [ $Computer -gt $Player ]; then
    echo "Computer won the match."
elif [ $Player -gt $Computer ]; then
    echo "You won the match."
else
    echo "Your choice matched with the computer's choice."
    echo "You both can get married :)"
fi
