#!/bin/bash


if ! type spicetify &> /dev/null; then
    echo "Spicetify not installed. Quitting..."
    sleep 3
    exit 1
fi

spicetify apply -n
sleep 0.5;
echo "Spicetify theme applied"