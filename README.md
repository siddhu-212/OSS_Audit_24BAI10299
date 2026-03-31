🚀 Open Source Software Capstone Project | VITyarthi

👨‍💻 Author: Siddhant Kumar
🎓 Roll No: 24BAI10299
📚 Course: Open Source Software
🏫 University: VIT Bhopal University

📌 Project Description

This project contains five Bash scripts demonstrating essential Linux system administration and Open Source Software (OSS) concepts.

Each script automates common Linux tasks and highlights the philosophy and practical usage of open-source tools.

The project focuses on:

System monitoring
Package inspection
Disk usage auditing
Log file analysis
Open-source philosophy generation

All scripts were developed and tested on Ubuntu 24.04 LTS.

📂 Scripts Overview
🔹 Script 1 — System Identity Report

Displays detailed system information along with a welcome message.

Information displayed:

Linux distribution name
Kernel version
Current logged-in user
Home directory path
System uptime
Current date and time
Open source license information (GPL v2)

Concepts Used

Variables
Command substitution $()
echo, uname, whoami, uptime, date
grep, cut, tr
🔹 Script 2 — FOSS Package Inspector

Checks whether a specified package (for example Python3) is installed on the system.

If installed, the script displays:

Package version
Installation status
Package description

The script also prints an Open Source philosophy message using a case statement.

Concepts Used

if-then-else statements
case statements
dpkg -l command
Pipes and exit codes
🔹 Script 3 — Disk and Permission Auditor

Audits important Linux directories and reports their disk usage and permissions.

Directories inspected:

/etc
/var/log
/home
/usr/bin
/tmp

It also checks Python installation directories and binary location.

Concepts Used

for loops
Arrays
du, ls -ld
awk, find
[ -d ] conditional checks
🔹 Script 4 — Log File Analyzer

Analyzes Linux log files and searches for specific keywords.

Features:

Accepts log file path and optional keyword
Counts keyword occurrences (case-insensitive)
Displays last five matching log entries
Handles missing or empty files safely
Example Usage
./script4.sh /var/log/syslog error
./script4.sh /var/log/syslog warning

Concepts Used

while read loops
if-then conditions
Counters
Positional parameters $1, $2
grep and tail
🔹 Script 5 — Open Source Manifesto Generator

An interactive script that generates a personalized Open Source philosophy statement.

Features:

Accepts user input
Generates a custom OSS message
Saves output to a .txt file
Displays result on terminal

Concepts Used

read for input
String handling
File writing using >>
date command
cat
⚙️ How to Run the Project
🔧 Prerequisites
Linux OS (Ubuntu 20.04 or later recommended)
Bash shell
Python3 (optional for package inspection)

Install Python if required:

sudo apt install python3
🔧 Steps to Execute
1️⃣ Clone the Repository
git clone https://github.com/your-username/oss-linux-scripts.git
2️⃣ Navigate to the Project Directory
cd oss-linux-scripts
3️⃣ Make Scripts Executable
chmod +x *.sh
4️⃣ Run the Scripts
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
🔗 Dependencies
Dependency	Purpose	Installation
bash	Shell interpreter	Pre-installed
python3	Package inspection	sudo apt install python3
dpkg	Package manager	Pre-installed
coreutils	du, ls, whoami	Pre-installed
grep	Log searching	Pre-installed

✅ The project works out-of-the-box on Ubuntu 22.04 / 24.04 LTS

🌟 Features

✔ Interactive Bash scripts
✔ Real-world Linux administration tasks
✔ Clean and readable terminal output
✔ Beginner-friendly implementation
✔ Fully open-source

📜 License

This project follows the principles of the GNU General Public License v2 (GPL v2).

🎯 Learning Outcomes

Through this project, the following concepts were learned:

Bash scripting fundamentals
Linux system commands
File and log processing
Automation using shell scripts
Open Source Software philosophy
📄 Project Submission

This project was developed as part of the Open Source Software course at VIT Bhopal University.

Tested on Ubuntu 24.04.4 LTS (VirtualBox environment)
All scripts were executed and verified successfully
The complete project report (PDF) has been submitted separately on the VITyarthi portal as per academic guidelines.
