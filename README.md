# 🚀 Open Source Software Capstone Project | VITyarthi

👨‍💻 Author :- Nitin Kolhe
🎓 Roll No: 24BCE10532
📚 Course: Open Source Software

---

## 📌 Project Description

This project consists of 5 Bash scripts that demonstrate core concepts of Linux system administration and Open Source Software (OSS).

Each script focuses on real-world tasks such as:

* System monitoring
* Package inspection
* Disk auditing
* Log analysis
* Open source philosophy generation

---

## 📂 Scripts Overview
                 

### 🔹 Script 1 — System Identity Report

Displays a welcome screen with complete system information including:

* Linux distribution name
* Kernel version
* Logged-in user
* Home directory
* System uptime
* Current date & time
* Open source license (GPL v2)

Concepts Used:
Variables, command substitution `$()`, `echo`, `uname`, `whoami`, `uptime`, `date`, `grep`, `cut`, `tr`

---

### 🔹 Script 2 — FOSS Package Inspector

Checks whether a package (e.g., Python3) is installed using `dpkg`, displays:

* Version
* Installation status
* Package details
* OSS philosophy note using `case`

Concepts Used:
`if-then-else`, `case`, `dpkg -l`, pipes, exit codes

---

### 🔹 Script 3 — Disk and Permission Auditor

Audits key Linux directories:

* `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`

Also checks Python directories and binary location.

Concepts Used:
`for` loop, arrays, `du`, `ls -ld`, `awk`, `find`, `[ -d ]` conditions

---

### 🔹 Script 4 — Log File Analyzer

* Accepts log file + optional keyword
* Counts keyword occurrences (case-insensitive)
* Displays last 5 matches
* Handles missing/empty files

Concepts Used:
`while read`, `if-then`, counters, `$1 $2`, `grep`, `tail`, exit codes

Usage:

```bash
./script4.sh /var/log/syslog error
./script4.sh /var/log/syslog warning




### 🔹 Script 5 — Open Source Manifesto Generator

* Takes user input interactively
* Generates a personalized OSS philosophy
* Saves output to `.txt` file
* Displays result on terminal

Concepts Used:
`read`, string handling, file writing (`>>`), `date`, `cat`


## ⚙️ How to Run

### 🔧 Prerequisites

* Linux OS (Ubuntu 20.04+ recommended)
* Bash shell
* Python3 (optional for inspection)

Install Python if needed:

```bash
sudo apt install python3
```



### 🔧 Steps

#### 1️⃣ Clone Repository

```bash
git clone https://github.com/your-username/oss-linux-scripts.git
cd oss-linux-scripts
```

#### 2️⃣ Make Scripts Executable

```bash
chmod +x *.sh
```

#### 3️⃣ Run Scripts

```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```



## 🔗 Dependencies

| Dependency | Purpose              | Install                    |
| ---------- | -------------------- | -------------------------- |
| bash       | Shell interpreter    | Pre-installed              |
| python3    | Package inspection   | `sudo apt install python3` |
| dpkg       | Package manager      | Pre-installed              |
| coreutils  | `du`, `ls`, `whoami` | Pre-installed              |
| grep       | Log searching        | Pre-installed              |

✅ Works out-of-the-box on **Ubuntu 22.04 / 24.04 LTS**

## 🌟 Features

✔ Interactive scripts
✔ Real-world Linux tasks
✔ Clean and readable output
✔ Beginner-friendly
✔ Fully open-source



## 📜 License

This project follows the principles of the
**GNU General Public License v2 (GPL v2)**



## 🎯 Learning Outcomes

* Bash scripting fundamentals
* Linux system commands
* File and log handling
* Automation techniques
* Open source philosophy



## 📄 Project Submission

📌 This project was developed as part of the Open Source Software course.
📌 Tested on Ubuntu 24.04 LTS (VirtualBox environment).
📌 Full report submitted separately as per academic requirements.



📄 Project Report
The full project report (PDF) has been submitted separately on the VITyarthi portal as per submission requirements.

This project was completed as part of the Open Source Software (OSS) course at VIT. All scripts were written and tested on Ubuntu 24.04.4 LTS running as a VirtualBox VM.



