# My Setup

These are my notes for setting up a new MacBook to my preference.

## Setup terminal

Download [iTerm2](https://iterm2.com/downloads/stable/latest).

Install OhMyZsh:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install [Menlo for Powerline font](https://github.com/abertsch/Menlo-for-Powerline).

In iTerm preferences:

- Replace the default profile in settings with [iTerm-theme.json](/iTerm-theme.json)
- Setup handy key shortcuts. Import [iTerm-shortcuts.itermkeymap](./iTerm-shortcuts.itermkeymap)

Copy [.zshrc](/.zshrc) and other dot files to home directory.

**Enable Touch ID Authentication for sudo:**

```
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local

sudo vim /etc/pam.d/sudo_local
```

Uncomment the following line:

```
#auth       sufficient     pam_tid.so
```

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
brew install aws/tap/aws-sam-cli git telnet yarn
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
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

And add some global packages:

```
pnpm add -g git-branch-selector node-gyp
```

## Install Python

```
brew install pyenv
```

Update `pip`:

```
python3 -m pip install --upgrade pip
```

## Install AWS Cli v2

```
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

## Install MySQL 8.0

```
brew install mysql
```

Start the `mysql` service:

```
brew services start mysql
```

Use the setup script to set sensible defaults:

```
mysql_secure_installation
```

## Install Ansible 2.9

```
pip install ansible==2.9.27
```

## Install Terraform

```
brew install tfenv
```

```
tfenv install <version>
tfenv use <version>
```

## Install nginx

```
brew install nginx
```

Setup configuration files at `$HOMEBREW_PREFIX/etc/nginx`

## Install PHP 7.4

Yes, I know it's old and unsecure!

```
brew tap shivammathur/php
brew install shivammathur/php/php@7.4
brew link php@7.4
```

Setup php.ini at `$HOMEBREW_PREFIX/etc/php/7.4/`

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

### iStat Menus.app (paid)

A status bar system monitor.
[Download](https://bjango.com/mac/istatmenus)

### Keka

An archiver that supports lots of formats.
[Download](https://www.keka.io)

### Obsidian

A markdown note taker.
[Download](https://obsidian.md)

### PixelSnap 2 (paid)

A contents-of-screen measurer.
[Download](https://getpixelsnap.com)

### Postman

A GraphQL and REST API client.
[Download](https://www.postman.com/downloads/)

### Rectangle

A window layout manager.
[Download](https://rectangleapp.com)

### Sequel Ace

A MySQL client.
[Download](https://github.com/Sequel-Ace/Sequel-Ace) and import my dark theme for the query window [SequelAce-theme.spTheme](/SequelAce-theme.spTheme).

### Slack

A team chat app.
[Download](https://slack.com/downloads)

### Sourcetree

A Git GUI.
[Download](https://www.sourcetreeapp.com)

### Visual Studio Code

An IDE.
[Download](https://code.visualstudio.com) and turn on Settings Sync and sign in with Github.
