#!/usr/bin/env sh

if [ -d "pokerogue" ]; then
    printf "\e[0;92mupdating client...\e[0m\n"
    cd pokerogue && git pull && cd ..
else
    printf "\e[0;92mdownloading client...\e[0m\n"
    git clone https://github.com/pagefaultgames/pokerogue.git
fi

if [ -d "rogueserver" ]; then
    printf "\e[0;92mupdating server...\e[0m\n"
    cd rogueserver && git pull && cd ..
else
    printf "\e[0;92mdownloading server...\e[0m\n"
    git clone https://github.com/pagefaultgames/rogueserver.git
fi

wait