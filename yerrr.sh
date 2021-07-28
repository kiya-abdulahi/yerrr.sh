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
                                                          
if test ! $(which brew); then
    echo "installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "successfully installed homebrew!"
else
    echo "homebrew already exists!"
    echo "updating homebrew"
    brew update
    echo "sucessfully updated homebrew!"
fi

packages=(
    fzf
    go
    jq
    nvm
    postgresql
    tree
    vercel-cli
    yarn
    zsh
)

echo "installing packages"
for package in ${packages[@]}; do
    if test "$(brew ls --versions $package)"; then
        echo "$package already exists!"
    else
        echo "installing $package"
        brew install $package
        echo "successfully installed $package!"
    fi
done

echo "installing oh-my-zsh to manage zsh config"
if test -d ~/.oh-my-zsh; then
    echo "oh-my-zsh already exists!"
else
    # sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "successfully installed oh-my-zsh!"
fi

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

echo "installing apps"
for app in ${apps[@]}; do
    if test ! "$(brew info $app | grep "Not installed")"; then
        echo "$app already exists!"
    else
        echo "installing $app"
        brew install --cask $app
        echo "successfully installed $app!"
    fi
done

echo "cleaning up old versions of brew formulae"
brew cleanup
echo "succesfully completed brew cleanup!"

echo "configuring mac settings"
echo "enabling tap to click"
if test $(defaults read com.apple.AppleMultitouchTrackpad Click); then
    echo "tap to click already enabled"
else
    echo "enabling tap to click"
    defaults write com.apple.AppleMultitouchTrackpad Click -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    echo "succesfully enabled tap to click!"
    echo "some mac settings require restart to take effect"
fi

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
