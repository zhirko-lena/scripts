#! /usr/bin/bash

STR="1234567890abcdefghijklmnopqrstuvwxyz";
echo $STR
echo "First character: ${STR:0:1}";
echo ": ${STR:0:3}";
echo ": ${STR:3:3}";
echo "Last character: ${STR: -1}";
