# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/.zsh_history"

ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Configured from compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' menu select=1 # open completion menu with tab
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/rei/.config/zsh/.zshrc'

# End of lines added by compinstall

# Enable the "new" completion system (compsys).
zmodload zsh/complist
autoload -Uz compinit && compinit

# Options
setopt append_history
setopt share_history
setopt histfindnodups
setopt histignorealldups
setopt histignorespace
setopt auto_menu
setopt menu_complete
setopt autocd
setopt auto_param_slash
setopt no_case_glob
setopt no_case_match
setopt globdots
setopt extended_glob
setopt interactive_comments
unsetopt beep

# cd via yazi
function ycd() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# Activate vim mode
bindkey -v
export KEYTIMEOUT=1

# make some keybinds work in zsh
bindkey "^[[1;5C" forward-word # Ctrl+Left
bindkey "^[[1;5D" backward-word # Ctrl+Right
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey "^[[3~" delete-char # Del
bindkey "^[[3;5~" delete-word # Ctrl+Del
bindkey "^H" backward-delete-word # Ctrl+Backspace
bindkey "^[[Z" reverse-menu-complete # Shift+Tab

# Aliases
alias ls='ls -h --color=auto --group-directories-first'
alias la='ls -lah --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias nv='nvim'
alias cl='clear'
alias yz='yazi'
# alias cat='bat'

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# fzf
source <(fzf --zsh)

# Source powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

# Load plugins.
# Theme for syntax highlighting
source $ZDOTDIR/syntax-highlight-themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh
# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
