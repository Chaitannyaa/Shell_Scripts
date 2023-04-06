#!/bin/bash

echo "Let's find the greater number from your and computer choice"

echo "Please choose any number from 1-100"

read Player

sleep 3

Computer=$((1 + RANDOM % 100))

echo "Computer choice is $Computer"

echo "Your choice is $Player"

sleep 3

if [ $Computer -ge $Player ]
then
	echo "Computer Won the match"
else
	echo "You Won the match"
fi
