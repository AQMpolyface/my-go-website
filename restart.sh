#!/bin/bash

#useless. html and css automatically refreshes.
kill $(ps aux | grep go | awk '{print $2}')


nginx -t

rm nohup.out

nohup go run main.go & disown
