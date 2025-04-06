#! /usr/bin/env bash

# 1. create ~/.fonts if it doesn't exist
# 2. download the font
curl -fLo "agave regular Nerd Font Complete.ttf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Agave/complete/agave%20regular%20Nerd%20Font%20Complete.ttf

# 3. move the font to ~/.fonts
mv "agave regular Nerd Font Complete.ttf" ~/.fonts

# 4. update font cache
fc-cache -fv

 
