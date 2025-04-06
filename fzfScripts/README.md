# Fzf Scripts

Scripts I use

## Clone

```bash
git clone https://github.com/adelgado0723/scripts_mac.git
cd scripts_mac
```

## Build and Install

```
sudo make clean build install
```

## Descriptions

### fzf-bookman

Search your qutebrowswer bookmarks and quickmarks.

- qutebrowser

### fzf-colpick

Copy a color to your clipboard using fzf, change the colors if needed

- xclip

### fzf-confedit

Choose from a list of configuration files to edit.

- none

### fzf-currencies

Convert prices between currencies using https://rate.sx

- xclip
- curl

### fzf-docker-kill -- needs man entry

Search for a running docker container to kill.

- docker

### fzf-docker-rm -- needs man entry

Search for a docker container and remove it.

- docker

### fzf-emoji

Select emoji and copy it to clipboard.

- xclip
- python3
- awk
- notify-send

### fzf-hub

A hub that you can execute all the other scripts from.

- all other dmscripts dependencies

### fzf-icons

Select icon and copy it to the clipboard.

- xclip
- python3
- awk
- notify-send
- curl
- xdotool

### fzf-ip

Get IP from interface (or external).

- dig
- ip
- jq

### fzf-kill

Search for a process to kill.

- none

### fzf-logout

Logout, shutdown, reboot or lock screen.

- systemd
- lock** (needs custom "lock" command on the system)
- notify-send

### fzf-maim

Choose type of screenshot to take with maim.

- maim
- tee
- xdotool
- xclip
- xrandr

### fzf-man

Search for a manpage or get a random one.

- xargs

### fzf-music

Music player using fzf

- mpd
- mpc

### fzf-nordlayer

A nordlayer wrapper using DMENU

- nordlayer

### fzf-note

Store multiple one-line texts or codes and copy one of them when needed.

- xclip
- notify-send

### fzf-radio

Choose between online radio stations with fzf.

- mpv
- notify-send
  youtube-dl

### fzf-record

Fzf script to record video,audio,webcam.

- ffmpeg
- pulseaudio
- alsa
- slop (for recording a specific area)

### fzf-reddit

Fzf as a reddit viewer using reddio.

- reddio
- yad

### fzf-setbg

A wallpaper setting utility using fzf, imv and swaybg/xwallpaper

- xwallpaper or swaybg
- imv

### fzf-sounds

Choose a ambient background sound to play

- ffmpeg

### fzf-tmux-cht.sh -- needs man entry

- tmux
- curl

### fzf-tmux-sessionizer -- needs man entry

- tmux

### fzf-translate

Translate using Google Translate (through Lingva Translate)

- curl
- jq

### fzf-usbmount

Mount or unnmount usb drives using fzf.

- udisks2

### fzf-weather

Simple graphical weather app

- curl
- yad

### fzf-websearch

- jq
- brave

### fzf-wifi

Connect to wifi using fzf

- nmcli
- notify-send
- Any Nerd Font

### fzf-wiki

Search an offline copy of the Arch Wiki.

- arch-wiki-docs

### fzf-youtube

Youtube subscription manager without API access

- curl
- a browser (brave by default)
