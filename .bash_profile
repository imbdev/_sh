export PATH="$PATH:/Users/shourav/:/Applications/MAMP/Library/bin/:/usr/local/bin/sublime"
export PATH="/Applications/MAMP/bin/php/php7.0.0/bin:/usr/local/Cellar/rsync/3.1.2/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias c='clear'
alias l='ls -ltra'

#DEVELOPMENT ALIASES
#=================== 
alias blue="ssh devhtmlf@devhtmlfive.com"
alias msq='/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot' 
alias may="cd /Users/shourav/Documents/2017/5.MAY/"
alias june="cd /Users/shourav/Documents/2017/6.JUNE/"
alias july="cd /Users/shourav/Documents/2017/7.JULY/"
alias aug="cd /Users/shourav/Documents/2017/8.AUGUST/"
alias sep="cd /Users/shourav/Documents/2017/9.SEPTEMBER/"
alias oct="cd /Users/shourav/Documents/2017/10.OCTOBER/"
alias nov="cd /Users/shourav/Documents/2017/11.NOVEMBER/"
alias dec="cd /Users/shourav/Documents/2017/12.DECEMBER/"

alias imb="cd /Users/shourav/Documents/2017/5.MAY/MOMMY-BOSS/wp-content/themes/imb-thm-2017"
alias heather="cd /Users/shourav/Documents/2017/5.MAY/HEATHER-KODIE/wp-content/themes/imb-thm-HEATHER"
alias jennifer="cd /Users/shourav/Documents/2017/6.JUNE/JENIFER-BROWN/wp-content/themes/oi-thm-JENNIFER-Prod"
alias wpfree='cd /Users/shourav/Documents/2017/7.JULY/WPFREETUTORIAL/wp-content/themes/tru-thm-WPFREE'
alias testing="cd /Users/shourav/Documents/_DEV/testing-local"
alias vuejs="cd /Users/shourav/Documents/_DEV/testing-local/vuejs-training"
alias shan="cd /Users/shourav/Documents/2017/4.APRIL/SHAN-STYLE"
alias clonewp="/Users/shourav/_sh/wp-clone.sh"

#WP INSTALL RELATED
#===================
alias installwp='/Users/shourav/_sh/wp-install.sh'
alias installplugin='/Users/shourav/_sh/plugin-install.sh'
alias configwp='/Users/shourav/_sh/config-wp.sh'

#RUBY CONFIG
#===========
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#SSH KEY TO KEY CHAIN
/usr/bin/ssh-add -K ~/.ssh/id_rsa
