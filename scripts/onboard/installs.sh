 #! /bin/bash

 runDev() {
    echo "-----------------------" 
    echo "$1"
    echo "$2"
    echo "$3"
 }

 runDesign() {
 
    echo "$1"
    echo "$2"
    echo "$3"
 }

 runMktr() {
 
    echo "$1"
    echo "$2"
    echo "$3"
 }

 if [ "$1" == "Developer" ]; then
    runDev "$@"
 fi

 if [ "$1" == "Designer" ]; then
    runDesign "$@"
 fi

 if [ "$1" == "Marketer" ]; then
    runMktr "$@"
    ls -al
 fi

