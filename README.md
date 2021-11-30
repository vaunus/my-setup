# Dot Files and MacOS Setup

These are my notes for setting up a new MacBook to my preference.

## Setup terminal
Download [iTerm2](https://iterm2.com/downloads/stable/latest).

Install OhMyZsh:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install [Menlo for Powerline font](https://github.com/abertsch/Menlo-for-Powerline).

Replace the default profile in settings with [iTerm-theme.json](/iTerm-theme.json).

Copy [.zshrc](/.zshrc) and other dot files to home directory.

## Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Check everything is ok:
```
brew doctor
```
Install some `brew` packages:
```
brew install git yarn
```

## Install Node
Bootstrap the `n` version manager:
```
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
```
Then use that to install `node`, `npm` and a real install of `n`:
```
bash n lts && rm n && npm install -g n
```
Install `pnpm`:
```
curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm
```

## Install Python
```
brew install pyenv
```
Update `pip`:
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
Start the `mariadb` service:
```
brew services start mariadb
```
Use the setup script to set sensible defaults:
```
sudo mysql_secure_installation
```

## Install JetBrains Mono font
A developer-friendly font. 
[Download](https://www.jetbrains.com/lp/mono) and then install the regular ttf.

## Setup apps
### 1Password (paid)
A password manager.
[Download](https://1password.com)

### CleanShot X (paid)
A screenshot/video capture tool.
[Download](https://cleanshot.com)

### Collective (paid)
A clipboard history manager.
[Download](http://www.generation-loss.com/collective)

### ColorSnapper (paid)
A system-wide colour picker.
[Download](https://colorsnapper.com) OR use open source alternative [Pika](https://github.com/superhighfives/pika).

### Insomnia
A GraphQL and REST API client.
[Download](https://insomnia.rest)

### iStat Menus.app (paid)
A status bar system monitor.
[Download]( https://bjango.com/mac/istatmenus)

### Keka
An archiver that supports lots of formats.
[Download]( https://www.keka.io)

### Obsidian
A markdown note taker.
[Download]( https://obsidian.md)

### PixelSnap 2 (paid)
A contents-of-screen measurer.
[Download]( https://getpixelsnap.com)

### Rectangle
A window layout manager.
[Download]( https://rectangleapp.com)

### Sequel Ace
A MySQL client.
[Download]( https://github.com/Sequel-Ace/Sequel-Ace) and  import my dark theme for the query window [SequelAce-theme.spTheme](/SequelAce-theme.spTheme).

### Slack
A team chat app.
[Download]( https://slack.com/downloads)

### Sourcetree
A Git GUI.
[Download]( https://www.sourcetreeapp.com)

### Visual Studio Code
An IDE.
[Download]( https://code.visualstudio.com) and turn on Settings Sync and sign in with Github.

### Zoom
A video meetings app.
[Download](https://zoom.us/download)
