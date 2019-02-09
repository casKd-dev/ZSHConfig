export ZSHCONF="/home/caskd/ZSHFiles/conf"      # Root

# Load required stuff only, skip configs if tty1
case $(tty) in
	/dev/tty1)
		startx || echo "Mom, cancel my meetings! X got screwed by the package manager again."; # Start X server automatically if tty1
	;;
    *)
        case $(uname -rv) in
            *ARCH*)
                plugins+=(
                    archlinux
                )
            ;;
            *Ubuntu*)
                plugins+=(
                    ubuntu
                )
            ;;
            *)
                echo "Unknown distribution, loading general plugins only"
            ;;
        esac

        # Variables
        source $ZSHCONF/vars.zsh                        # Enviroment variables
        source $ZSHCONF/themevars.zsh                   # Theme variables
        source $ZSHCONF/plugins.zsh                     # Plugins
        source $ZSHCONF/external.zsh                    # External Sources
        source $ZSHCONF/custom.zsh                      # Custom commands at end

        echo -e "Theme: $ZSH_THEME"
        echo "Plugins: ${plugins[@]}"
    ;;
esac