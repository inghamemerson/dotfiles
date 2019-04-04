source ~/.profile
# first thing's first, load in non-version-controlled stuff
if [ -f ~/.bash_private ]; then . "$HOME/.bash_private"; fi

# then the rest (exports, aliases, prompt, etc)
if [ -f ~/.bash_exports ]; then . "$HOME/.bash_exports"; fi
if [ -f ~/.bash_aliases ]; then . "$HOME/.bash_aliases"; fi
if [ -f ~/.bash_prompt ]; then . "$HOME/.bash_prompt"; fi
# if [ -f ~/.bash_gitstatus ]; then . "$HOME/.bash_gitstatus"; fi
# if [ -f ~/.rvm/scripts/rvm ]; then . "$HOME/.rvm/scripts/rvm"; fi

if  which brew > /dev/null; then

	# bash completion.
	if [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
		source "$(brew --prefix)/share/bash-completion/bash_completion";
	elif [ -f /etc/bash_completion ]; then
		source /etc/bash_completion;
	fi

	# homebrew completion
	source "$(brew --prefix)/etc/bash_completion.d/brew"

	# hub completion
	if  which hub > /dev/null; then
		source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
	fi;
fi;

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

source /Users/inghamemerson/.rvm/scripts/rvm