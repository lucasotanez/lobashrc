# 
# ██╗      ██████╗     ██████╗  █████╗ ███████╗██╗  ██╗
# ██║     ██╔═══██╗    ██╔══██╗██╔══██╗██╔════╝██║  ██║
# ██║     ██║   ██║    ██████╔╝███████║███████╗███████║
# ██║     ██║   ██║    ██╔══██╗██╔══██║╚════██║██╔══██║
# ███████╗╚██████╔╝    ██████╔╝██║  ██║███████║██║  ██║
# ╚══════╝ ╚═════╝     ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
#
# Customizable bash terminal config.
#
# ============================================================================================
#
# Font (recommended): JetBrainsMonoNL Nerd Font (any font that includes symbols will work)
# Terminal theme (recommended): Catppuccin Mocha
# Terminal Emulator: Any (bash)
#
# DIRECTIONS:
# 1. To use these prompts out of the box, simply uncomment whichever line 
#    beginning with "PS1" you want to use.
#
# OR
#
# 2. To edit/customize these prompts, change values and strings, then uncomment
#    whichever line you want to use. Make sure to read specific code comments.

# ============================================================================================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# icon cheat sheet link:
# https://www.nerdfonts.com/cheat-sheet 
# you may want to change these manually,
# especially if you use a different OS 

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
clear='\[\e[00m\]'

# PS1='[\u@\h \w]\$ '
# PS1="${bold}${blue}  ${white}[${blue}\u${white}@${purple}\h ${black}\w${white}] ${blue} \n ${bold}${yellow}󱞪 ${reg}${green}"
# PS1="${bold}${blue}  ${white}[${blue}\u${white}@${purple}\h ${black}\w${white}] ${blue} ${reg}${green}" 
PS1="${bold}${blue}  ${cyan}[${yellow}\u${white}@${purple}\h ${black}\w${cyan}] ${red}  ${reg}${green}" 

return
# !!! toggle above return statement if using backgrounded styles

# background color tags
blackB='\[\e[40m\]'
redB='\[\e[41m\]'
greenB='\[\e[42m\]'
yellowB='\[\e[43m\]'
blueB='\[\e[44m\]'
purpleB='\[\e[45m\]'
cyanB='\[\e[46m\]'
whiteB='\[\e[47m\]'

# these prompts use background colors and icons to make a pretty prompt bar,
# for best results use a terminal theme with only 10 colors (pairs of duplicates) such as Catppuccin 
PS1="${bold}${white}${blackB} \u ${black}${purpleB} ${black}  \h ${whiteB}${purple}${black}${whiteB} \w \$ ${clear}${white} " 

# you can add your favorite icons to this array:
randicons=('󱢮' '󰄛 ' '󰡗 ' '󰠖 ' ' ' '  ')
getrandicon () { echo ${randicons[$(( $RANDOM % ${#randicons[@]} ))]}; }

# this prompt gets a random icon from the "randicons" array to display before the user
# PS1="${bold}${white}${blackB}  $(getrandicon)  \u  ${black}${purpleB} ${black} \h  ${whiteB}${purple}${black}${whiteB} \w \$  ${clear}${white} " 
