![gentoo-banner](https://github.com/eliaz5536/gentoo-update-script/assets/5835036/96810555-601a-46f1-a4c5-ea5a21461f3f)

# EasyPortage
Gentoo Linux Update Scheduler using Bash Script.

# Gentoo Linux
Gentoo Linux is a meta-distribution linux distribution, meaning that you as the user are responsible for customizing your system, even by its components such as its kernel. Unlike other well-known linux distributions, it is a source-based distribution, meaning that the user has the preference to compile the source code from any package of their preference themselves for optimizing their system, which is achieved using Portage. 

However, Gentoo Linux meets its issues very commonly on the fact that it takes a very long time to compile the source code using Portage, which requires tweaking the settings from make.conf to ensure that based on the user's preference that matches their criteria. 

It is critical and even essential to always update & upgrade source-based linux distribution as any lack of change ccan result in conflicts of files, which is not like binary-based distributions.

# Commands
```
# ------------------------------------------
# Daily Maintenance
Focuses on keeping the system synchronized with the latest package versions and security updates, enduring ongoing stability and security.

# - Updates the portage tree
emerge --sync

# - Update the eix database, which improves search speed and accuracy for packages (`eix` must be installed for this command to work)
eix-update

# ------------------------------------------
# Daily & Weekly Maintenance
# - Updates all installed packages to their latest verions, including dependencies
emerge -auDN @world

# ------------------------------------------
# Weekly Maintenance
Includes additional checks and synchronization of overlays to maintain consistency and reliability across repositories.
# - Synchronizes overlays (additional package repositories) and performs basic system checks.
emaint sync -a

# ------------------------------------------
# Monthly Maintenance
Provides a comprehensive system update, including dependency cleanup and rebuilds, to optimize performance and maintain long-term system health.
# - Performs a full system update including synchroniztion of the Portage tree
emerge --sync && emerge -auDN @world

# - Cleans up unusued dependencies after updates
emerge --depclean

# - Rebuilds packages that might have broken dependencies
revdep-rebuild

# ------------------------------------------

# Others
# Updates the entire system which includes dependencies:
emerge --update --deep --with-bdeps=y @world

# To update all installed packages to the latest available versions, update the Gentoo repository with emaint:
emaint --auto sync
# OR

# Run emerge to update the whole system with dependencies
emerge --ask --verbose --update --deep --newuse @world
# Or with short options
emerge -avuDN @world

# OR 
sudo emerge -uDU @world

# Updates the local copy of the portage tree so that your local system can download and install the latest version of the software
sudo emerge --sync

# Checks and updates all packages on the system to the latest version. 
# This should be run regularly to avoid falling behind on a critical update
sudo emerge --update --deep world

# Ensure no temporary work files have been left around by any failed merges
rm -rf /usr/tmp/portage/*

# --------------------------------------

# Check for unusued dependencies
emerge -pvc

# Check for packages you want to keep and add them to your world set
emerge --noreplace packaga packageb....

# Unmerge what remaining unusued
emerge -c

# Run emptytree on your world set to rebuild everything
emerge -e @world

# optional command?
emerge -e world && emerge --depclean -a


# Step 7: Verify system integrity (optional)
sudo emaint --check world
sudo emaint --fix world

----

# Perform world upgrade by doing the following
emerge --ask -uvDU @world

```

# Installation
```
<insert code over here>
```

# Help
```
<insert help usage over here>
```

# Usage
```
<insert usage over here>
```
# License
```
insert MIT license over here
```
