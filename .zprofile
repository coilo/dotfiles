export COMPOSER_PATH=$HOME/.composer/vendor/bin
export NODEBREW_PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$COMPOSER_PATH:$NODEBREW_PATH:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
