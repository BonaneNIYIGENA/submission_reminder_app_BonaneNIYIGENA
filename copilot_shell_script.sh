#!/bin/bash

# This script changes the assignment name in the config file and restarts the submission reminder script.
echo "Enter new assignment name:"
read new_assignment

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=$new_assignment/" submission_reminder_*/config/config.env

# Restart the submission reminder script
bash submission_reminder_*/startup.sh
