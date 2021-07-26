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
    echo "installing homebrew.."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# update homebrew
brew update

# list of packages i use
PACKAGES=(
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
echo "installing packages.."
brew install ${PACKAGES[@]}

# install oh-my-zsh to manage zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# list of casks (apps) i use
CASKS=(
    bitwarden
    docker
    firefox
    insomnia
    iterm2
    kap
    slack
    spectacle
    spotify
    tableplus
    visual-studio-code
    zoom
)

# install casks above
echo "intalling apps.."
brew install --cask ${CASKS[@]}

echo "cleaning up.."
brew cleanup

echo "configuring mac settings.."
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
