set -Ux EDITOR vim

set PATH $HOME/bin $PATH
set PATH $HOME/Software/Android/sdk/tools $PATH
set PATH $HOME/Software/Android/sdk/platform-tools $PATH
set ANDROID_HOME $HOME/Software/Android/sdk

for file in ~/.bash/*
	. $file
end


abbr -a ga="git add"
abbr -a gc="git commit"
abbr -a gco="git checkout"
abbr -a gst="git status"
abbr -a gl="git pull"
abbr -a gp="git push"
abbr -a gu="git up"
abbr -a s="git status -sb"
abbr -a l="git log"


source ~/.config/fish/nvm-wrapper/nvm.fish

