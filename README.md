# EasyPortage
Gentoo Linux Update Scheduler using Bash Script.

# Description
Gentoo Linux is a meta-distribution linux distribution, allowing the user customize their choice of  system, even by its components such as its kernel. Unlike other well-known linux distributions, it is a source-based distribution, meaning that the user has the preference to compile the source code from any package of their preference themselves for optimizing their system, which is achieved using Portage. 

This following script fixes such problems of automating certain process in Gentoo to ensure the user has a choice of updating effectively without the need to type excessively to perform the same tasks.
This can be performed daily, weekly, monthly or yearly for you to customize.

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
It is recommended for ease-of-use, to create a symlink to the /usr/bin directory to ensure it 
```
sn -ln ~/easyportage/easyportage.sh /usr/bin
```

# Cronjob
You can manually input the executable on the cronjob to ensure that it executes the easyportage file on the following.
```
<INSERT HERE>
```

# Usage
```
EasyPortage

Usage: ./easyportage.sh [options]
```

# License

