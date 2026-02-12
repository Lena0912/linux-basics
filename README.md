# Linux & Bash Automation Journey 🚀

This repository contains my practical work and scripts developed while learning Linux system administration and Bash scripting as part of my **Cloud Support Engineer** training.

## 🛠 Project: System Health Check Script
The core of this repository is a Bash script (`health_check.sh`) designed to automate routine server monitoring tasks.

### Features:
* **Disk Usage Monitoring**: Tracks available space on the root partition.
* **Memory Analysis**: Reports real-time RAM usage in Megabytes.
* **Network Connectivity**: Automatically pings external services (Google) to verify internet access.
* **Timestamping**: Every report is generated with a precise system date and time.

## 🧠 Skills Acquired
During this module, I have mastered the following concepts:
* **File System Navigation**: Managing directories and files via CLI (`cd`, `ls`, `cp`, `mv`).
* **Permissions & Security**: Implementing the principle of least privilege using `chmod` (e.g., `600` for secrets, `+x` for execution).
* **Data Processing**: Using pipes (`|`) and filters (`grep`, `wc`) to analyze logs and system outputs.
* **Resource Troubleshooting**: Monitoring system health with `df -h`, `free -m`, and `neofetch`.
* **Networking Basics**: Diagnosing connectivity using `ifconfig` and `ping`.
* **Version Control**: Managing code lifecycle with Git and GitHub.
  🕒 Automation & Backup Systems
Cron Scheduling: Mastered the crontab syntax (m h dom mon dow command) to schedule recurring system tasks.

Bash Scripting: Developed a robust backup script utilizing variables and command substitution.

Data Compression: Integrated the tar utility with gzip compression (-czf) to optimize storage and manage backups efficiently.

