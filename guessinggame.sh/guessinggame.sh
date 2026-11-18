#!/bin/bash

function guess_game {
    local files=$(ls -1 | wc -l)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    echo "Try to guess:"

    while [[ $guess -ne $files ]]
    do
        read guess
        if [[ $guess -lt $files ]]
        then
            echo "Too low! Try again:"
        elif [[ $guess -gt $files ]]
        then
            echo "Too high! Try again:"
        else
            echo "Congratulations! You guessed correctly!"
            echo "There are $files files in the current directory."
        fi
    done
}

guess_game
