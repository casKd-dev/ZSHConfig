plugins=(
  docker
  docker-compose
  git
  golang
  history
  perms
  sudo
  systemadmin
  systemd
  zsh-completions
  zsh-syntax-highlighting
)
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