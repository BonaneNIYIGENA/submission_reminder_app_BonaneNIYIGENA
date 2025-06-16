# submission_reminder_app_BonaneNIYGENA

2 files created and a README.md
├── copilot_shell_script.sh
├── create_environment.sh
├── README.md

1. Run the create_environment.sh
2. Input your name [in this case I inputed my name(Bonane)] as prompted
3. Then this is the structure created(as instructed)
└── submission_reminder_Bonane
    ├── app
    │   └── reminder.sh
    ├── assets
    │   └── submissions.txt
    ├── config
    │   └── config.env
    ├── modules
    │   └── functions.sh
    └── startup.sh

4. Based on the data in the config.env which is the assignment name(which happens to be "Shell navigation"), when we run startup.sh it will show those who didnot submit that particular assignment(Shell Navigation)

5. After running startup.sh you have a report form text of reminders to only those who didnot submit that particular assignment
Command to run startup.sh: bash submission_reminder_Bonane/startup.sh // cd submission_reminder_Bonane then bash startup.sh 

Task2:
6. Run copilot_shell_script.sh on this new student(for better definition of it)
7. Input another assignment name(Git as the one I inserted) you want to check for as prompted after running copilot.sh scripts

! Same structure as we input the name after running create_environment.sh but with a different name
submission_reminder_Niyigena
    ├── app
    │   └── reminder.sh
    ├── assets
    │   └── submissions.txt
    ├── config
    │   └── config.env
    ├── modules
    │   └── functions.sh
    └── startup.sh

But now what the difference is that in the config.env, the assignment name changes into the new one meaning (From "Shell navigation" to "Git") which then displays the students who didnot submit the Git assignment

 
