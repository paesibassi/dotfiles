. ~/.config/fish/functions/fish_prompt.fish

# miniconda
set PATH $PATH /Users/federico/miniconda3/bin
source /Users/federico/miniconda3/etc/fish/conf.d/conda.fish

# apache maven
set PATH $PATH /opt/apache-maven/bin

# user bin files
set PATH $PATH /Users/federico/bin

# git
set -x LC_ALL en_US.UTF-8

# Google Cloud SDK
if [ -f '/Users/federico/google-cloud-sdk/path.fish.inc' ]; . '/Users/federico/google-cloud-sdk/path.fish.inc'; end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
