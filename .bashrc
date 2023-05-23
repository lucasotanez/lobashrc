# 
# ██╗      ██████╗     ██████╗  █████╗ ███████╗██╗  ██╗
# ██║     ██╔═══██╗    ██╔══██╗██╔══██╗██╔════╝██║  ██║
# ██║     ██║   ██║    ██████╔╝███████║███████╗███████║
# ██║     ██║   ██║    ██╔══██╗██╔══██║╚════██║██╔══██║
# ███████╗╚██████╔╝    ██████╔╝██║  ██║███████║██║  ██║
# ╚══════╝ ╚═════╝     ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# attach bold at beginning of each PS1
bold='\[\e[01;37m\]'

# attach reg at end of each PS1
# BUT before the final color (input text color)
reg='\[\e[0;37m\]'

# foreground text tags
# bolding ommitted here due to initial bold tag for convenience
black='\[\e[30m\]'
red='\[\e[31m\]'
green='\[\e[32m\]'
yellow='\[\e[33m\]'
blue='\[\e[34m\]'
purple='\[\e[35m\]'
cyan='\[\e[36m\]'
white='\[\e[37m\]'

# PS1='[\u@\h \w]\$ '
# PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\u@\h\[`tput sgr0`\] \w \$ '
PS1="${bold}${blue}  ${cyan}[${yellow}\u@${purple}\h ${black}\w${cyan}] ${blue} ${reg}${red}"

# PS1='\[\e[01;33m\]'
