#!/bin/bash
#================================================================
# HEADER 
#================================================================
# Script Name    : easyportage.sh
# Description    : 
# Author         : Eliaz Simon
# Date           : 2024-08-15
# Version        : 1.0
# Usage          : ./easyportage.sh
# Notes          : 
# Dependencies   : 
#================================================================
# MIT License
# Copyright (c) 2024 Eliaz Simon
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this
# software and associated documentation files (the Software), to deal in the Software
# without restriction, including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to the following
# conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or
# substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#================================================================

# Capture the current time
current_time=$(date +"%T")

# Capture the current date
current_date=$(date +"%Y-%m-%d")

# Capture the current year
current_year=$(date +"%Y")

#################################################################
# ANSI Color Code Escape Sequences			        #
#################################################################

# Colors
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LIGHT_GRAY="\e[37m"
GRAY="\e[90m"
LIGHT_RED="\e[91m"
LIGHT_GREEN="\e[92m"
LIGHT_YELLOW="\e[93m"
LIGHT_BLUE="\e[94m"
LIGHT_MAGENTA="\e[95m"
LIGHT_CYAN="\e[96m"

# Background Colors
BLACK_BG="\e[40m"
RED_BG="\e[41m"
GREEN_BG="\e[42m"
YELLOW_BG="\e[43m"
BLUE_BG="\e[44m"
MAGENTA_BG="\e[45m"
CYAN_BG="\e[46m"
WHITE_BG="\e[47m"

# Bold
BOLD_BLACK="\e[1;30m"
BOLD_RED="\e[1;31m"
BOLD_GREEN="\e[1;32m"
BOLD_YELLOW="\e[1;33m"
BOLD_BLUE="\e[1;34m"
BOLD_MAGENTA="\e[1;35m"
BOLD_CYAN="\e[1;36m"
BOLD_LIGHT_GRAY="\e[1;37m"
BOLD_GRAY="\e[1;90m"
BOLD_LIGHT_RED="\e[1;91m"
BOLD_LIGHT_GREEN="\e[1;92m"
BOLD_LIGHT_YELLOW="\e[1;93m"
BOLD_LIGHT_BLUE="\e[1;94m"
BOLD_LIGHT_MAGENTA="\e[1;95m"
BOLD_LIGHT_CYAN="\e[1;96m"
BOLD_WHITE="\e[1;97m"

# Italic
ITALIC_BLACK="\e[3;30m"
ITALIC_RED="\e[3;31m"
ITALIC_GREEN="\e[3;32m"
ITALIC_YELLOW="\e[3;33m"
ITALIC_BLUE="\e[3;34m"
ITALIC_MAGENTA="\e[3;35m"
ITALIC_CYAN="\e[3;36m"
ITALIC_LIGHT_GRAY="\e[3;37m"
ITALIC_GRAY="\e[3;90m"
ITALIC_LIGHT_RED="\e[3;91m"
ITALIC_LIGHT_GREEN="\e[3;92m"
ITALIC_LIGHT_YELLOW="\e[3;93m"
ITALIC_LIGHT_BLUE="\e[3;94m"
ITALIC_LIGHT_MAGENTA="\e[3;95m"
ITALIC_LIGHT_CYAN="\e[3;96m"
ITALIC_WHITE="\e[3;97m"

# Styles
BOLD="\e[1m"
ITALIC="\e[3m"

ENDCOLOR="\e[0m"

#================================================================
# FUNCTION: info
# DESCRIPTION:
#     Prints info message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_info
# DESCRIPTION:
#     Prints bold info message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
bold_info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: success
# DESCRIPTION:
#     Prints success message using the provided parameter.
#     $1 - A message
# RETURNS:
#     None
#================================================================
success() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}SUCCESS${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: warning
# DESCRIPTION:
#     Prints warning message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
warning() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_warning
# DESCRIPTION:
#     Prints bold warning message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
bold_warning() {
	local message=$1
 	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: error
# DESCRIPTION:
#     Prints error message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_error
# DESCRIPTION:
#     Prints bold error message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
bold_error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: usage
# DESCRIPTION:
#     Prints default usage information.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
usage() {
	echo "EasyPortage"
  	echo " "
	echo "Usage: ./easyportage.sh [options]"
	exit 0
}

#================================================================
# FUNCTION: daily
# DESCRIPTION:
#     Ensures system is synchronized with the latest version of all packages, with addition to its database.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
daily() {
	info "Executing emerge --sync command"
	emerge --sync
	success "Completed executing emerge --sync command"

	info "Executing emerge-webrsync -v command"
	emerge-webrsync -v
	success "Completed executing emerge-webrsync -v command"

	command="eix"	
	output=$($command 2>&1)
	exit_status=$?
	if [[ $exit_status -ne 0 && $output == *"command not found"* ]]; then
		error "Eix is not compiled on your machine"
	else 
		info "Executing eix-update command"
		eix-update
		success "Completed executing eix-update command"
	fi
}

#================================================================
# FUNCTION: weekly
# DESCRIPTION:
#     Checks synchronization of overlays as part of basic system check to maintain consistency.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
weekly() {
	info "Executing emaint sync -a command"
	emaint sync -a	
	success "Completed executing emaint sync -a command"

	info "Executing emerge --ask --verbose --update --deep --newuse @world command"
	emerge --ask --verbose --update --deep --newuse @world
	success "Completed executing emerge --ask --verbose --update --deep --newuse @world command"
}

#================================================================
# FUNCTION: monthly
# DESCRIPTION:
#     Performs deep system update and world upgrade to optimize performance, maintain long-term system health, and synced to portage tree.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
monthly() {
	info "Executing emerge --sync && emerge --auDN @world command"
	emerge --sync && emerge --auDN @world
	success "Completed executing emerge --sync && emerge --auDN @world command"

	info "Executing emerge --update --deep --with-bdeps=y @world command"
	emerge --update --deep --with-bdeps=y @world
	success "Completed executing emerge --update --deep --with-bdeps=y @world command"
}

#================================================================
# FUNCTION: clean
# DESCRIPTION:
#     Verifies and removes unecessary and unused files/packages that are not used from the portage tree.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
clean() {
	info "Executing revdep-rebuild command"
	command="revdep-rebuild"	
	output=$($command 2>&1)
	exit_status=$?
	if [[ $exit_status -ne 0 && $output == *"command not found"* ]]; then
		error "Gentoolkit is not compiled on your machine"
	else 
		info "Executing revdep-rebuild command"
		revdep-rebuild
		success "Completed executing revdep-rebuild command"
	fi


	success "Completed executing revdep-rebuild command"
	info "Executing emerge --depclean command"
	emerge --depclean
	success "Completed executing emerge --depclean command"
	info "Executing rm -rf /usr/tmp/portage/* command"
	rm -rf /usr/tmp/portage/*
	success "Completed executing rm -rf /usr/tmp/portage/* command"
}

#================================================================
# FUNCTION: help
# DESCRIPTION:
#     Prints default help information.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
help() {
	echo "EasyPortage"
	echo " "
	echo "Usage: ./easyportage.sh [options]"
	echo " "
	echo "Options:"
  	printf "  ${BOLD}--usage${ENDCOLOR}						Show usage information\n"
	printf "  ${BOLD}-h, --help${ENDCOLOR}						Show help message\n"
	printf "  ${BOLD}-d, --daily${ENDCOLOR}						Executes commands to run once everyday\n"
	printf "  ${BOLD}-w, --weekly${ENDCOLOR}						Executes commands to run once a week\n"
	printf "  ${BOLD}-m, --monthly${ENDCOLOR}						Executes commands to run once a month\n"
	printf "  ${BOLD}-c, --clean${ENDCOLOR}						Remove unecessary files and packages\n"
	echo " "
	exit 0
}
 
while [[ "$#" -gt 0 ]]; do
	case $1 in
		-u|--usage) usage ;;
		-h|--help) help ;;
		-d|--daily) daily ;;
		-w|--weekly) weekly ;;
		-m|--monthly) monthly ;;
		-c|--clean) clean ;;
		*) error "Unknown parameter passed: "; exit 1 ;;
	esac
	shift
done
