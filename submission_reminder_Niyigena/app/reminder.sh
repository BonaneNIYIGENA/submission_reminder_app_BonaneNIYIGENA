
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
