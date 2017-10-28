#echo "\e[3m$(fortune -sa)\e[0m\n" # display a random short quote at start

export DEFAULT_USER="sublime"
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=/home/sublime/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="kardan"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

plugins=(completion git sudo last-working-dir lol copydir copyfile autojump history)

source $ZSH/oh-my-zsh.sh

# =============================================================================
#                                   POWERLEVEL9K
# =============================================================================

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir dir_writable rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status disk_usage)

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LINUX_ICON=$' \uf300 '
POWERLEVEL9K_HOME_ICON=$'\uf015'
POWERLEVEL9K_HOME_SUB_ICON=$'\uf114'
POWERLEVEL9K_FOLDER_ICON=$' \uf114'


POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$'\uf432 '
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="red"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="red"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="black"


POWERLEVEL9K_OS_ICON_BACKGROUND="red"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="white"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="black"
POWERLEVEL9K_DISK_USAGE_BACKGROUND="white"
POWERLEVEL9K_DISK_USAGE_FOREGROUND="black"
POWERLEVEL9K_DISK_USAGE_ONLY_WARNING=true
POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL=90
POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL=95
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# =============================================================================
#                                   Plugins
# =============================================================================
# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

#zplug "plugins/bundler", from:oh-my-zsh, if:"which bundle"
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh, if:"which git"
zplug "plugins/globalias", from:oh-my-zsh
zplug "plugins/gpg-agent", from:oh-my-zsh, if:"which gpg-agent"
#zplug "plugins/httpie", from:oh-my-zsh, if:"which httpie"
#zplug "plugins/nanoc", from:oh-my-zsh, if:"which nanoc"
#zplug "plugins/nmap", from:oh-my-zsh, if:"which nmap"
#zplug "plugins/vi-mode", from:oh-my-zsh

#zplug "b4b4r07/enhancd", use:init.sh
zplug "b4b4r07/enhancd", use:enhancd.sh
#zplug "b4b4r07/zsh-vimode-visual", defer:3
#zplug "knu/zsh-manydots-magic", use:manydots-magic, defer:2
zplug "seebi/dircolors-solarized", ignore:"*", as:plugin
zplug "zsh-users/zsh-autosuggestions", at:develop
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

#if ! zplug check; then
#  zplug install
#fi
#
#zplug load

# Supports oh-my-zsh plugins and the like
zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/dnf", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/go", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

if zplug check "seebi/dircolors-solarized"; then
  if which gdircolors > /dev/null 2>&1; then
    alias dircolors="gdircolors"
  fi
  if which dircolors > /dev/null 2>&1; then
    scheme="dircolors.256dark"
    eval $(dircolors ~/.zplug/repos/seebi/dircolors-solarized/$scheme)
  fi
fi

# =============================================================================
#                                   Options
# =============================================================================

# improved less option
export LESS="--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS"

# Watching other users
WATCHFMT="%n %a %l from %m at %t."
#watch=(notme)         # Report login/logout events for everybody except ourself.
LOGCHECK=60           # Time (seconds) between checks for login/logout activity.
REPORTTIME=5          # Display usage statistics for commands running > 5 sec.
#WORDCHARS="\"*?_-.[]~=/&;!#$%^(){}<>\""
WORDCHARS="\"*?_-[]~&;!#$%^(){}<>\""

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Don;t overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Don"t display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.

# Changing directories
setopt pushd_ignore_dups        # Don"t push copies of the same dir on stack.
setopt pushd_minus              # Reference stack entries with "-".

setopt extended_glob

# =============================================================================
#                                   Aliases
# =============================================================================
# Directory coloring
if [[ $OSTYPE = (darwin|freebsd)* ]]; then
	# Prefer GNU version, since it respects dircolors.
	alias ls='() { $(whence -p gls) -Ctr --file-type --color=auto $@ }'
	export CLICOLOR="YES" # Equivalent to passing -G to ls.
	export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"
else
	alias ls='() { $(whence -p ls) -Ctr --file-type --color=auto $@ }'
fi

# Directory management
alias randomdisk="sudo dd if=/dev/urandom | pv | sudo dd of=/dev/"
alias zerodisk="sudo dd if=/dev/zero | pv | sudo dd of=/dev/"
alias torrent="torrench -t --copy"
alias rice="cd ~/rice"
alias mount="sudo mount"
alias disks="sudo fdisk -l"
alias tdir="cd /mnt/Data/Downloads/Torrents"
alias htop="htop -d 0"
alias reload="i3-msg reload"
alias config="vim ~/.config/i3/config"
alias pac="sudo pacman -S"
alias pacs="sudo pacman -Ss"
alias remove="sudo rm -rf"
alias pacr="sudo pacman -Rc"
alias start="sudo systemctl start"
alias autostart="nano ~/.config/openbox/autostart"
alias restart="sudo systemctl restart"
alias status="sudo systemctl status"
alias stop="sudo systemctl stop"
alias disable="sudo systemctl disable"
alias enable="sudo systemctl enable"
alias home="cd ~/"
alias downloads="cd /mnt/Data/Downloads"
alias desktop="cd /mnt/Data/Desktop"
alias cleanpac="sudo pacman -Rs `pacman -Qqtd | grep -Fv -f <(pacman -Qqtdm)`"
alias aur="yaourt -S"
alias aurs="yaourt -Ss"
alias aurr="yaourt -Rc"
alias copy="rsync -av --info=progress2"
alias move="mv"
alias back="cd .."
alias root="sudo su"
alias matrix="cmatrix"
alias key="gpg --recv-keys"
alias open="caja"
alias opens="sudo caja"
alias services="cd /usr/lib/systemd/system/"

# Generic command adaptations.
#grep() { $(whence -p grep) --colour=auto $@ }
#egrep() { $(whence -p egrep) --colour=auto $@ }


# =============================================================================
#                                 Completions
# =============================================================================

# case-insensitive (all), partial-word and then substring completion
zstyle ":completion:*" matcher-list \
  "m:{a-zA-Z}={A-Za-z}" \
  "r:|[._-]=* r:|=*" \
  "l:|=* r:|=*"

zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}


# =============================================================================
#                                   Startup
# =============================================================================

# Load SSH and GPG agents via keychain.
setup_agents() {
  [[ $UID -eq 0 ]] && return

  local -a ssh_keys gpg_keys
  ssh_keys=(~/.ssh/**/*pub(.N:r))
  gpg_keys=$(gpg -K --with-colons 2>/dev/null | awk -F : '$1 == "sec" { print $5 }')

  if which keychain > /dev/null 2>&1; then
    if (( $#ssh_keys > 0 )) || (( $#gpg_keys > 0 )); then
	  #alias keychain='() { $(whence -p keychain) --quiet --eval --inherit any-once --agents ssh,gpg $ssh_keys ${(f)gpg_keys} }'
	  alias run_agent='() { $(whence -p keychain) --quiet --eval --inherit any-once --agents ssh,gpg $ssh_keys ${(f)gpg_keys} }'
	  #[[ -t ${fd:-0} || -p /dev/stdin ]] && eval "$keychain)"
	  [[ -t ${fd:-0} || -p /dev/stdin ]] && eval $keychain
    fi
  fi
}
setup_agents
unfunction setup_agents

# Fixes for alt-backspace and arrows keys
bindkey '^[^?' backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Source local customizations.
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
[[ -f ~/.zshrc.alias ]] && source ~/.zshrc.alias

# vim: ft=zsh

# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
bindkey "^k" kill-line
bindkey "^d" delete-char
bindkey "^y" accept-and-hold
bindkey "^w" backward-kill-word
bindkey "^u" backward-kill-line
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^F" history-incremental-pattern-search-forward

# History
if zplug check "zsh-users/zsh-history-substring-search"; then
	zmodload zsh/terminfo
	bindkey "$terminfo[kcuu1]" history-substring-search-up
	bindkey "$terminfo[kcud1]" history-substring-search-down
	#bindkey -M emacs "^P" history-substring-search-up
	#bindkey -M emacs "^N" history-substring-search-down
	#bindkey -M vicmd "k" history-substring-search-up
	#bindkey -M vicmd "j" history-substring-search-down
	bindkey "^[[1;5A" history-substring-search-up
	bindkey "^[[1;5B" history-substring-search-down
fi

# Do not require a space when attempting to tab-complete.
bindkey "^i" expand-or-complete-prefix
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
