#!/usr/bin/env bash
echo ""
echo ""
echo ""
echo "██╗   ██╗███████╗██████╗ ██████╗ ██████╗"
echo "╚██╗ ██╔╝██╔════╝██╔══██╗██╔══██╗██╔══██╗"
echo " ╚████╔╝ █████╗  ██████╔╝██████╔╝██████╔╝"
echo "  ╚██╔╝  ██╔══╝  ██╔══██╗██╔══██╗██╔══██╗"
echo "   ██║   ███████╗██║  ██║██║  ██║██║  ██║"
echo "   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝"
echo ""
echo ""
echo ""
echo "███╗   ██╗███████╗██╗    ██╗    ███╗   ███╗ █████╗  ██████╗"
echo "████╗  ██║██╔════╝██║    ██║    ████╗ ████║██╔══██╗██╔════╝"
echo "██╔██╗ ██║█████╗  ██║ █╗ ██║    ██╔████╔██║███████║██║"
echo "██║╚██╗██║██╔══╝  ██║███╗██║    ██║╚██╔╝██║██╔══██║██║"
echo "██║ ╚████║███████╗╚███╔███╔╝    ██║ ╚═╝ ██║██║  ██║╚██████╗▄█╗"
echo "╚═╝  ╚═══╝╚══════╝ ╚══╝╚══╝     ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝"
echo ""
echo ""
echo ""
echo "██╗    ██╗██╗  ██╗ ██████╗     ██████╗ ██╗███████╗██████╗"
echo "██║    ██║██║  ██║██╔═══██╗    ██╔══██╗██║██╔════╝╚════██╗"
echo "██║ █╗ ██║███████║██║   ██║    ██║  ██║██║███████╗  ▄███╔╝"
echo "██║███╗██║██╔══██║██║   ██║    ██║  ██║██║╚════██║  ▀▀══╝"
echo "╚███╔███╔╝██║  ██║╚██████╔╝    ██████╔╝██║███████║  ██╗"
echo " ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝     ╚═════╝ ╚═╝╚══════╝  ╚═╝"
                                                          
# check if homebrew installed, otherwise install it
if test ! $(which brew); then
    echo "installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
    echo "homebrew already installed"
fi

# update homebrew
echo "updating homebrew"
brew update

# list of packages i use
packages=(
    fzf
    go
    jq
    nvm
    postgresql
    tree
    vercel-cli
    zsh
)

# install packages above
echo "installing packages"
brew install ${packages[@]}

# install oh-my-zsh to manage zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# list of apps i use
apps=(
    bitwarden
    docker
    firefox
    insomnia
    iterm2
    kap
    notion
    slack
    spectacle
    spotify
    tableplus
    visual-studio-code
    zoom
)

# install apps above
echo "intalling apps"
brew install --cask ${apps[@]}

echo "cleaning up"
brew cleanup

echo "configuring mac settings"
echo "some mac settings require restart to take effect"
# enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Click -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "you're all set"
echo ""
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠤⠲⠦⠉⠉⠉⠏⠉⠒⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠲⠃⢀⣤⠀⠀⠀⠲⠂⠀⠠⠆⠀⠙⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠁⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⢀⠊⠁⠀⢁⡴⠚⠉⣉⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠠⠤⠔⠒⡄⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⡆⢰⠆⠀⠋⣠⠔⠉⠁⣀⡠⠄⠒⠂⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠊⠁⠀⠀⠀⠀⠀⣠⡴⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⢠⡆⠀⠀⠀⡜⠁⣠⠔⠋⢁⡔⠒⠒⠤⡀⠀⠀⠀⠀⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠀⠀⠀⢀⣀⣤⣶⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⡆⡶⠀⠀⢀⡜⠁⢀⣀⢸⠀⠀⠀⠀⠈⢆⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⠊⠁⠀⢀⡀⣴⡿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠰⡀⠀⠀⠘⠀⡞⠁⠀⠉⢇⠀⣿⣄⠀⠈⡆⠀⠕⠒⠉⣉⡒⡄⠀⠀⠀⠀⢀⠤⠊⠁⢀⡠⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⡀⠀⠀⢇⠀⣤⡄⠈⢢⡈⠻⡖⢀⡞⣀⠔⠊⠁⠀⠀⠉⠐⠒⠠⢎⢁⡠⠔⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⢂⠘⢿⣦⡇⠉⠓⢶⡫⠞⠁⣀⣤⣤⣤⣤⣤⣤⣤⠴⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠦⠭⡇⠀⡠⠊⠀⣠⣮⣬⣿⣿⣿⣿⣿⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠁⢀⠔⡧⠊⠀⢀⡜⠁⠙⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣀⣡⠎⠀⠀⢠⠊⠀⠀⠀⣸⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⣰⣧⣀⣀⡠⣴⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⣤⣤⣾⡿⠿⠋⠁⠀⢹⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠿⠛⠛⠛⠛⠻⢿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠁⡰⢤⣀⣀⡄⢠⠞⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
