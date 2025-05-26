# parse results from tftf when in results directory
alias my_parse='python3 ~/pixel-deepspace/tf-a-test/tools/google/parse_tftf_results.py kernel.log lga'

# reset the board hard, jpopko document
alias my_reset='sudo ~/ds_ftdi_buttons/ds_ftdi_buttons --sn 45101FDDS05273 -m creset_fastboot --wait-fastboot'

# and the more general one
alias my_buttons='sudo ~/ds_ftdi_buttons/ds_ftdi_buttons -m'

# easier tmux commands
alias ta='tmx2 attach -t'
alias tls='tmx2 ls'
alias tnew='tmx2 new -s'

# dhub for matsul deepspace
alias my_dhub='sudo python3 ~/usb_driver/dhub/dhub.py --devfile_path=/dev/serial/by-id/usb-Google_ds_devboard_45101FDDS05273_1-if00-port0 --debug_port_socket_path=/tmp/dhub_debug_port_45101FDDS05273.sock --baudrate=3000000 --no-tmux-session'

# fastboot for matsul deepspace
alias my_fastboot='fastboot -s ece9eb12bfba8a5813c24f3831451609'

# adb for matsul deepspace
alias my_adb='adb -s ece9eb12bfba8a5813c24f3831451609'

# nicer picocom with a port parameter (use like alias; apc is the one)
function my_picocom () {
  sudo picocom /dev/pts/$1 --imap lfcrlf
}

# my cl_flashstation; remember -b for build and -t for target
alias my_cl_f='/google/bin/releases/android/flashstation/cl_flashstation -s ece9eb12bfba8a5813c24f3831451609'

# pull the results of tftf tests after device reboots into ramdump mode
alias my_fastboot_ramdump='fastboot oem ramdump stage_file kernel.log && fastboot get_staged kernel.log'

# quicker fastboot devices
alias fd='fastboot devices'

# quicker adb devices
alias ad='adb devices'

# fetch_artifact
alias my_fa='/google/data/ro/projects/android/fetch_artifact'

# flash kernel bby
alias fk='sudo bash ~/my_scripts/kernel/flash_kernel.sh'

# flash smol kernel stuff yes
alias sfk='sudo bash ~/my_scripts/kernel/smol_kernel.sh'

# source device cloud environment 
alias dc_start='source /google/bin/releases/si-sw-eng-prod-team/dc_checkout/dc_setup.sh'

# boot to fastboot with buttons in device cloud
alias dc_vol_pwr='dc_buttons --script E,ER,W0.1,ED,EDP,W5.0,E'

# list vim sessions quicker
alias lv='ls *.vim'

# git aliases
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gl='git log'
alias glp='git log -p'
alias gp='git pull'
alias gr='git reset'
alias grb='git rebase'
alias gs='git status'
