📅 submission_reminder_app

A simple Linux-based shell application to help students stay on top of their assignment deadlines.This application provides an automated way to remind students of pending submissions. It does this by setting up the environment, storing configurations, and running reminder checks through easily maintainable shell scripts.

🔧 Project Setup

1. Clone the Repository

Commands:
git clone https://github.com/YourUsername/submission_reminder_app_YourUsername.git
cd submission_reminder_app_YourUsername

2. Run the Setup Script

Commands:
chmod +x create_environment.sh
./create_environment.sh

✅ This script will:
Prompt you for your name
Create a directory named submission_reminder_{yourName}
Create the required subdirectories and files:
config/config.env
app/reminder.sh
modules/functions.sh
data/submissions.txt
startup.sh

Add executable permissions to all .sh files

🚀 Running the Application

After setup, run the app:

Command:
cd submission_reminder_{yourName}
./scripts/startup.sh

This script will use the configuration to check which students haven't submitted the assignment and display reminders accordingly.

✏️ Update Assignment Name
Use the copilot script to change the assignment name dynamically.

Commands:
chmod +x copilot_shell_script.sh
./copilot_shell_script.sh

✅ This script will:
Prompt you for a new assignment name
Update the ASSIGNMENT value in config/config.env
Re-runs the startup.sh script to show updated reminders

🌿 Git Workflow
The project has two branches:
feature/setup → for testing
main → for final, production-ready code

✅ Final main branch should include only:
create_environment.sh
copilot_shell_script.sh
README.md

💡 Credits
ALU Student, Bonane NIYIGENA
Software Engineer
