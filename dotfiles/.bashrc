#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT="%d-%m-%y %T "

# Shell options
shopt -s histappend
shopt -s checkwinsize

# Personal directories
export HDD="/mnt/HDD/STORAGE"

# Enable color prompt
force_color_prompt=yes

alias rm="rm -Iv"

alias home="clear && cd $HOME && ls -hl --group-directories-first --color=auto"
alias dow="clear && cd $HOME/downloads && ls -hl --group-directories-first --color=auto"
alias img="clear && cd $HOME/images && ls -hl --group-directories-first --color=auto"
alias doc="clear && cd $HOME/docs && ls -hl --group-directories-first --color=auto"
alias pho="clear && cd $HOME/phone && ls -hl --group-directories-first --color=auto"
alias cfg="clear && cd $HOME/.config && ls -hl --group-directories-first --color=auto"
alias hdd="clear && cd $HDD && ls -hl --group-directories-first --color=auto"
alias lib="clear && cd $HDD/library && ls -hl --group-directories-first --color=auto"
alias sch="clear && cd $HDD/scholar && ls -hl --group-directories-first --color=auto"
alias rpr="clear && cd $HDD/r-projects && ls -hl --group-directories-first --color=auto"
alias pyt="clear && cd $HDD/python-projects && ls -hl --group-directories-first --color=auto"
alias tex="clear && cd $HDD/latex-projects && ls -hl --group-directories-first --color=auto"

# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    [ ! "${BRANCH}" == "" ] && STAT=`parse_git_dirty` && echo "[${BRANCH}${STAT}]" || echo ""
}

# get current status of git repo
function parse_git_dirty {
status=`git status 2>&1 | tee`
dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
bits=''
if [ "${renamed}" == "0" ]; then
bits=">${bits}"
fi
if [ "${ahead}" == "0" ]; then
bits="*${bits}"
fi
if [ "${newfile}" == "0" ]; then
bits="+${bits}"
fi
if [ "${untracked}" == "0" ]; then
bits="?${bits}"
fi
if [ "${deleted}" == "0" ]; then
bits="x${bits}"
fi
if [ "${dirty}" == "0" ]; then
bits="!${bits}"
fi
if [ ! "${bits}" == "" ]; then
echo " ${bits}"
else
echo ""
fi
}

export PS1="\[\e[1;34m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\] \W \[\e[1;32m\]\`parse_git_branch\`\[\e[m\]: "

# wget options
# alias wget="wget --hsts-file ~/dotfiles/config/wget/wget-hsts"

# Enable delete key in st terminal
# tput smkx

alias vim="nvim"
alias R="R --vanilla"
alias mpv="mpv --geometry=960x540"
alias screenkey="screenkey -t 1 -f 'Fira Code'"
export RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc"
