#!/bin/bash

# Configuration
SERVER="mjm836@tux.cs.drexel.edu"
DIRECTORY="~/public_html/cs-465-001-group-6"

# Connect to server and execute commands
ssh $SERVER "cd $DIRECTORY && git pull & chmod 644 *.html"

# Add error handling
if [ $? -eq 0 ]; then
    echo "Git pull completed successfully"
else
    echo "Error: Git pull failed"
    exit 1
fi