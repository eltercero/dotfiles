c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

rails_migrate_down() {
  version=$(ls db/migrate | fzf | awk -F _ '{print $1}')
  [[ -n "$version" ]] && rails db:migrate:down VERSION="$version"
}

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
