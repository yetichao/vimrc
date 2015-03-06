#!/bin/sh
#me settings begin
#me defined function
grep_param='--color -rn --exclude-dir=.git --exclude-dir=.svn --exclude-dir=lang  --exclude-dir=po'
function jgrep()
{
    find . -type f -name "*\.java" -print0 | xargs -0 grep ${grep_param} "$@"
}

function cgrep()
{
    find . -type f \( -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.h' -o -name 'Makefile' -o -name 'configure' \) -print0 | xargs -0 grep ${grep_param} "$@"
}

function resgrep()
{
    for dir in `find . -name res -type d`; do find $dir -type f -name '*\.xml' -print0 | xargs -0 grep --color -n "$@"; done;
}
function tmp_proxy()
{
    export http_proxy=http://127.0.0.1:8087
    export https_proxy=https://127.0.0.1:8087
}
#alias
if tput colors > /dev/null;
then
alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -lA --color=auto'
else
alias ls='ls -F --color=never'
alias l='ls -lF --color=never'
alias ll='ls -lF --color=never'
alias la='ls -lA --color=never'
fi
alias du='du -h'
alias df='df -h'
alias ps='ps -A'
alias vi='vim'
#alias make='make -j5'
alias mk='make'
alias grep='grep --exclude-dir=.git --exclude-dir=.svn'
alias cls='clear'
#apt related 
#alias ainstall='sudo apt-get install -y'
#alias ai='sudo apt-get install -y'
#alias ainst='sudo apt-get install -y'
#alias areinstall='sudo apt-get install --reinstall -y'
#alias aremove='sudo apt-get remove'
#alias apurge='sudo apt-get purge'
#alias asearch='apt-cache search'
#alias aupdate='sudo apt-get update'
#alias apdate='sudo apt-get update'
#alias asource='apt-get source'
#alias asrc='apt-get source'
#alias afile='dpkg -L'
#alias dfile='dpkg -L'
#alias alist='dpkg -l |grep '
#alias dlist='dpkg -l'
#alias aowner='dpkg -S'
#alias downer='dpkg -S'
#alias ainfo='dpkg -s'
#alias dinfo='dpkg -s'
#alias atry='dpkg --dry-run'
#alias dinst='sudo dpkg -i'
#alias di='sudo dpkg -i'
#alias abuild='sudo apt-get build-dep -y'
alias explorer='xdg-open'
#emerge
#alias elist='emerge --search'
#alias el='emerge --search'
#alias es='emerge --searchdesc'
#alias ei='sudo emerge'
#alias eu='sudo emerge --unmerge'
#alias unmerge='sudo emerge --unmerge'

#driver devel
#alias insmod='sudo insmod'
#alias rmmod='sudo rmmod'
#alias mknod='sudo mknod'
#php unit
alias phpunit='phpunit --stderr'

#midnight commander
alias mc='mc --nocolor'
alias caja='caja --no-desktop'
alias rsync='rsync --progress'
alias wget='wget -N'

#path settings
path_basic=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games/bin
#use sun java
#JAVA_HOME=/opt/jdk1.6.0_35
#amd64
JAVA_HOME=/opt/jdk1.6.0_38
#use openjdk amd64 
#JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
#JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export JAVA_HOME
java_path=${JAVA_HOME}/bin
android_sdk=/opt/android-sdk-linux
android_ndk=/opt/android-ndk-r8b
export android_path=${android_sdk}/tools:${android_sdk}/platform-tools:${android_ndk}
armcc_path=/home/qinghao/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/:/opt/android-ndk-r8b/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/:/opt/FriendlyARM/toolschain/4.4.3/bin
ccache_bin=/usr/lib64/ccache/bin
export ANDROID_SDK_ROOT=${android_sdk}
export ANDROID_NDK_ROOT=${android_ndk}
export ANDROID_SDK=${android_sdk}
export ANDROID_NDK=${android_ndk}
export ANDROID_HOME=${android_sdk}
export ANDROID_ABI=armeabi-v7a
export PATH=.:${HOME}/bin:${ccache_bin}:${armcc_path}:${java_path}:${android_path}:${path_basic}:/opt/bin:$PATH:/usr/games
# git branch info
if [ -f ~/.git-prompt.sh ]; then
  . ~/.git-prompt.sh
fi
export PS1='\u@\h \W$(__git_ps1 "(\[\e[1;32m\]%s\[\e[0m\])")\$ '
#export PS1='\w \$ '
export EDITOR=vim
export USE_CCACHE=1
export CCACHE_DIR="/var/tmp/ccache"
export CCACHE_SIZE="10G"
export XDG_DATA_DIRS=${XDG_DATA_DIRS}:/opt/share
#if test `tty |grep pts|wc -l` -gt 0;
#then
#wmname LG3D
#fi
#export OPENGROK_DISTRIBUTION_BASE="/opt/opengrok/lib/"
#export OPENGROK_INSTANCE_BASE="/opt/opengrok/DATA"
#export CATALINA_HOME=/usr/share/tomcat-7
#export OPENGROK_TOMCAT_BASE=$CATALINA_HOME
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
export XDG_DATA_DIRS=/usr/share/:${XDG_DATA_DIRS}
if test ".$DISPLAY" != "." ; then
    vgaout
fi
export PATH=${HOME}/bin:$PATH

