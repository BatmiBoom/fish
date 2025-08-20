# Variables de entorno

# Basic environment variables
set -gx LANG "en_US.UTF-8"
set -gx EDITOR "nvim"

# Python
set -gx PYENV_ROOT "$HOME/.pyenv"

# DOCKER
set -gx DOCKER_DEFAULT_PLATFORM "linux/amd64"

# MANPATH
set -gx MANPATH /usr/local/man $MANPATH
