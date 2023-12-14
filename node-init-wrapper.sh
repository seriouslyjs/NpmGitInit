#!/bin/bash

# The original command (npm, yarn, or pnpm)
ORIGINAL_CMD=$1
# Find the path of the original command. This works correctly even when alias is set
ORIGINAL_CMD_PATH=$(which "$ORIGINAL_CMD")

# Shift the arguments so $1 becomes the first argument of the original command
shift

# Get the directory name
DIR_NAME=$(basename "$(pwd)")

# Get the GitHub username
GH_USERNAME=$(gh api /user --jq '.login')

# Check if the first argument is NOT 'init'
if [ "$1" != "init" ]; then
    # If not 'init', immediately pass all arguments to the original command
    "$ORIGINAL_CMD_PATH" "$@"
    exit
fi

# 1. Get the directory it was called in
echo "Current directory: $DIR_NAME"
echo "Fetching available organizations..."
ORGS=$(gh api -X GET /user/orgs --paginate --jq '.[].login' | tr '\n' ' ')

echo "Available organizations:"
PS3="Please select the number above (or press Enter for $GH_USERNAME): "
select ORG_CHOICE in $ORGS; do
    ORG_CHOICE=${ORG_CHOICE:-$GH_USERNAME}
    break
done
# 2. Run 'gh repo create'
gh repo create $ORG_CHOICE/$DIR_NAME --private -g Node

# 3. Clone the repo into the current directory
# Assuming you want to clone into the current directory
gh repo clone $ORG_CHOICE/$DIR_NAME .

# 4. Run the original init command
"$ORIGINAL_CMD_PATH" "$@"

# 5. Stage and commit the files
git add package.json
git commit -m "Initial commit"
git push -u origin main
