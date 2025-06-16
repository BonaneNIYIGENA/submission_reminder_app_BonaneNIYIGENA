#!/bin/bash

# Prompt user for their name
read -p "Enter your name: " username

# Create main directory with correct structure
main_dir="submission_reminder_${username}"

# Create files in their correct locations
mkdir -p "$main_dir"/{app,modules,assets,config}

# config.env
cat > "$main_dir/config/config.env" << 'EOL'
# This is the config file
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
EOL

# submissions.txt (with 5+ records)
cat > "$main_dir/assets/submissions.txt" << 'EOL'
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Bob, Shell Navigation, not submitted
Carol, Shell Navigation, submitted
Dave, Shell Navigation, not submitted
Eve, Git, not submitted
Frank, Shell Navigation, not submitted
Bonane, Linux, not submitted
Aimable, Python, not submitted
Max, Programming, submitted
Kenny, Linux, not submitted
Aline, Linux, not submitted
EOL

# functions.sh
cat > "$main_dir/modules/functions.sh" << 'EOL'
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Load config
    source "$(dirname "$(dirname "${BASH_SOURCE[0]}")")/config/config.env"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done < <(tail -n +2 "$submissions_file") # Skip the header
}
EOL

# reminder.sh
cat > "$main_dir/app/reminder.sh" << 'EOL'

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Source environment variables and helper functions
source "$PROJECT_ROOT/config/config.env"
source "$PROJECT_ROOT/modules/functions.sh"

# Path to the submissions file
submissions_file="$PROJECT_ROOT/assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"
EOL

# startup.sh to run the reminder script
cat > "$main_dir/startup.sh" << 'EOL'

# Change to script directory
cd "$(dirname "$0")"

# Execute reminder.sh scripts
./app/reminder.sh
EOL

# Set executable permissions to all files 
chmod +x "$main_dir/app/reminder.sh"
chmod +x "$main_dir/modules/functions.sh"
chmod +x "$main_dir/startup.sh"

echo "Environment setup complete in ${main_dir}"
echo "Run the app with: cd ${main_dir} && ./startup.sh"
