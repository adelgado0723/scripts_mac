#!/bin/bash

# Directory to search for Zone.Identifier files
# expect the directory to be passed as an argument

# Find and delete Zone.Identifier files
find $1 -type f -name '*:Zone.Identifier' -exec rm -v {} +

echo "Zone.Identifier files have been deleted."
