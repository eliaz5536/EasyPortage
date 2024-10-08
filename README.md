# EasyPortage
Small Gentoo Linux Update Scheduler.

# Description
Gentoo Linux is a meta-distribution linux distribution that allows the user to customize their choice of system such as its kernel. Unlike other well-known linux distributions, it is a source-based distribution, meaning that the user has the preference to compile the source code from any package of their preference themselves for optimizing their system, which is achieved using Portage. 

However, it is required for the user to type long emerge commands in their machine in order to compile to get the latest packages that fits the profile set of your target system.

This following script aims to automate comamnds (which can be customized) in Gentoo Linux for portage for the user to updating their system daily, weekly, monthly or yearly up to the user's preference without typing long emerge commands, with addition of also removing unecessary files. This would be ideal to use cron to run scheduled tasks from the user's preference to decide the time to execute the following options of the script.   

# Installation
```
# Clone the following repository
git clone https://github.com/eliaz5536/easyportage.git # Clone repository

# Access the repository and change file permission of the script to be executable
chmod +x easyportage.sh 

# Launch NetAuto
./easyportage.sh
```

# Symlink
It is recommended for ease-of-use, to create a symlink to the /usr/bin directory to execute the script directory without directing to the same directory to execute such a script.
```
ln -s ~/easyportage/easyportage.sh /usr/bin
```

# Usage
```
EasyPortage

Usage: ./easyportage.sh [options]
```

# Help
```
EasyPortage

Usage: ./easyportage.sh [options]

Options:
  --usage                                                Show Usage information
  -h, --help                                             Show help message
  -d, --daily                                            Executes commands to run once everyday
  -w, --weekly                                           Executes commands to run once a week
  -m, --monthly                                          Executes commands to run once a month
  -c, --clean                                            Remove unecessary files and packages

```

# License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
