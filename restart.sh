#!/bin/bash

#useless whn pushing new html & css. html and css automatically refreshes, cuz served on command.
kill $(ps aux | grep go | awk '{print $2}')

nginx -t

rm nohup.out

nohup go run main.go & disown
