# Dot Files and MacOS Setup

These are my notes for setting up a new MacBook to my preference.

## Setup terminal
Download iTerm from https://iterm2.com/downloads/stable/latest

Install OhMyZsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Menlo for Powerline font
https://github.com/abertsch/Menlo-for-Powerline

Replace the default profile in settings with [iTerm-theme.json](/iTerm-theme.json)

Copy [.zshrc](/.zshrc) and other dot files to `~`

## Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Check everything is ok
```
brew doctor
```
Install some `brew` packages
```
brew install git yarn
```

## Install Node
Bootstrap the `n` version manager
```
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
```
Then use that to install `node`, `npm` and a real install of `n`
```
bash n lts && rm n && npm install -g n
```
Install `pnpm`
```
curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm
```

## Install Python
```
brew install pyenv
```
```
pip install pip
```
Install some `pip` packages
```
pip install ansible aws-sam-cli awscli onelogin-aws-cli
```

## Install MySQL (mariadb)
```
brew install mariadb
```
Start the service
```
brew services start mariadb
```
Use the setup script to set sensible defaults
```
sudo mysql_secure_installation
```

## Install JetBrains Mono font
Install from https://www.jetbrains.com/lp/mono

## Setup apps
### 1Password (paid)
A password manager.

https://1password.com

### CleanShot X (paid)
A screenshot/video capture tool.

Install from https://cleanshot.com

### Collective (paid)
A clipboard history manager.

Install from http://www.generation-loss.com/collective

### Colorsnapper (paid)
A system-wide colour picker.

Install from https://colorsnapper.com

OR OpenSource alternative [Pika](https://github.com/superhighfives/pika)

### Insomnia
A GraphQL and REST API client.

Install from https://insomnia.rest

### Keka
An archiver that supports lots of formats.

Install from https://www.keka.io

### Obsidian
A markdown note taker.

Install from https://obsidian.md

### PixelSnap 2 (paid)
A contents-of-screen measurer.

Install from https://getpixelsnap.com

### Rectangle
A window layout manager.

Install from https://rectangleapp.com

###Sequel Ace
A MySQL client.

Install from https://github.com/Sequel-Ace/Sequel-Ace.

Import a dark theme for query window settings [SequelAce-theme.spTheme](/SequelAce-theme.spTheme)

### Slack
A team chat app.

Install from https://slack.com/downloads

### Sourcetree
A Git GUI.

Install from https://www.sourcetreeapp.com

### Visual Studio Code
An IDE.

Install from https://code.visualstudio.com

Turn on Settings Sync and sign in with Github.

### iStat Menus.app (paid)
A status bar system monitor.

Install from https://bjango.com/mac/istatmenus

### Zoom
A video meetings app.

Install from https://zoom.us/download
