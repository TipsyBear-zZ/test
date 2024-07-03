eval "$(/opt/homebrew/bin/brew shellenv)"

# alias
alias zrc='. ~/.zshrc'
alias zvi='vi ~/.zshrc'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias env='printenv'
alias gc='git checkout'
alias gb='git branch'
alias gp='git pull'
function pr() {
  command git fetch $1 pull/$2/head:$2 && git checkout $2
}

# env
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '(%b) ' # vcs_info_msg_0_変数をどのように表示するかフォーマットの指定
precmd () { vcs_info } # プロンプトを表示する直前に毎回実行する
setopt prompt_subst
export PS1='%F{#b58900}%n%f[%D %*] %B%F{#01ff00}%3~%f%b %F{cyan}${vcs_info_msg_0_}%f$ '
export CLICOLOR=1

# bind
bindkey '^f' forward-word
bindkey '^b' backward-word

