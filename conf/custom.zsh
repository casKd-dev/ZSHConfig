# Aliases
alias dc="docker-compose"

# Check if running in TTY
case $(tty) in
	/dev/tty1)
		startx; # Start X server automatically if tty1
	;;
	/dev/tty[2-9])
		export TERM="xterm";
		ZSH_THEME="dpoggi"; source $ZSHCONF/resources/dpoggi-timestamp.zsh-theme;
	;;
	/dev/pts/*)
		export TERM="xterm-256color";
		ZSH_THEME="powerlevel9k/powerlevel9k"; source $ZSHCONF/resources/powerlevel9k/powerlevel9k.zsh-theme;
		#ZSH_THEME="spaceship"; source $ZSHCONF/resources/spaceship-prompt/spaceship.zsh-theme;
		neofetch
	;;
	*)
		echo "We did not recognize the terminal type you are currently using!"
	;;
esac
