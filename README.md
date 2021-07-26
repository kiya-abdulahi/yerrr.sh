# yerrr

## Introduction

In the past couple of years, I've found myself setting up a new machine several times. Whether it was upgrading to a new laptop, getting a new one due to maintenance issues, or starting a new job.

That being said, there are a few different apps/software I use for my dev environment.

## Homebrew

> The Missing package Manager for macOS (or Linux)

There is a sweet package manager called [homebrew](brew.sh). It allows you to install stuff you use everyday with a simple command. For example if you want to install [jq](https://stedolan.github.io/jq/):

```
brew install jq
```

## Script

I put together a script called `yerrr.sh` that:

- Installs `Homebrew`
- Installs the following packages via `Homebrew`
    - [fzf](https://github.com/junegunn/fzf)
    - [go](https://golang.org/)
    - [jq](https://stedolan.github.io/jq/)
    - [nvm](https://github.com/nvm-sh/nvm)
    - [postgresql](https://www.postgresql.org/)
    - [tree](http://mama.indstate.edu/users/ice/tree/)
    - [vercel-cli](https://vercel.com/home)
    - [zsh](https://en.wikipedia.org/wiki/Z_shell)
- Installs [oh-my-zsh](https://ohmyz.sh/)
- Installs the following applications via `Homebrew`:
    - [bitwarden](https://bitwarden.com/)
    - [docker](https://docs.docker.com/get-docker/)
    - [firefox](https://www.mozilla.org/en-US/firefox/new/)
    - [insomnia](https://insomnia.rest/)
    - [iterm2](https://iterm2.com/)
    - [kap](https://getkap.co/)
    - [slack](https://slack.com/)
    - [spectacle](https://www.spectacleapp.com/)
    - [spotify](https://www.spotify.com/)
    - [tableplus](https://tableplus.com/)
    - [visual-studio-code](https://code.visualstudio.com/)
    - [zoom](https://zoom.us/)
- Enable tap-to-click on my macs trackpad

## Running the script

- Clone this repo
- `cd` into the directory
- Feel free edit the packages/apps you want the script to download and any additional things you want to do when configuring your dev environment on your macbook!
- In order to make this script executable on your machine, you may need to run the following:

```
chmod +x yerrr.sh
```

- Next, run the following and see the magic happen:

```
./yerrr.sh
```

## Caveats

Be on the lookout for the Caveats homebrew spits out with certain packages. For example, [nvm](https://github.com/nvm-sh/nvm) makes it a point to create a `~/.nvm` directory and add it to your desired shells' (bash or zsh) path.
