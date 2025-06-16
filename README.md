# 📅 submission_reminder_app

A simple Linux-based shell application to help students stay on top of their assignment deadlines.  
This application provides an automated way to remind students of pending submissions. It does this by setting up the environment, storing configurations, and running reminder checks through easily maintainable shell scripts.

---

## 🔧 Project Setup

### 1. Clone the Repository
**Commands:**
```bash
git clone https://github.com/YourUsername/submission_reminder_app_YourUsername.git
cd submission_reminder_app_YourUsername
```

### 2. Run the Setup Script
**Commands:**
```bash
chmod +x create_environment.sh
./create_environment.sh
```

**✅ This script will:**
- Prompt you for your name  
- Create a directory named `submission_reminder_{yourName}`  
- Create the required subdirectories and files:
  - `config/config.env`
  - `app/reminder.sh`
  - `modules/functions.sh`
  - `startup.sh`
  - `assets/submissions.txt`

- Add executable permissions to all `.sh` files

---

## 🚀 Running the Application

After setup, run the app:  
**Command:**
```bash
cd submission_reminder_{yourName}
./scripts/startup.sh
```
This script will use the configuration to check which students haven't submitted the assignment and display reminders accordingly.

---

## ✏️ Update Assignment Name

Use the copilot script to change the assignment name dynamically.  
**Commands:**
```bash
chmod +x copilot_shell_script.sh
./copilot_shell_script.sh
```

**✅ This script will:**
- Prompt you for a new assignment name  
- Update the `ASSIGNMENT` value in `config/config.env`  
- Re-run the `startup.sh` script to show updated reminders

---

## 📁 File & Directory Structure
```
submission_reminder_{yourName}/
├── app
│   └── reminder.sh
├── assets
│   └── submissions.txt
├── config
│   └── config.env
├── modules
│   └── functions.sh
└── startup.sh
```

---

## 💡 Credits
**ALU Student, Bonane NIYIGENA**  
Software Engineer
