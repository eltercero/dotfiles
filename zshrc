ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custompanda"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


alias zspec='bundle exec zeus rspec'

 # SSH Tunnel function

 ssh_tunnel_to () {
   #Gets two parameters
   # ssh_tunnel_to 10.0.0.146 57.82.95.10

   local local_port=$(( ( RANDOM % 65535 )  + 1 ))

   echo "local port $local_port"

   ssh -i ~/.ssh/id_rsa.pub -fN -L $local_port:$1:22 admin@$2  &&
   ssh -i ~/.ssh/id_rsa.pub -p $local_port admin@localhost
 }