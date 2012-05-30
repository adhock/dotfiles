directory=~/.dotfiles/bash
if [ -d $directory ]; then
    for file in $directory/*
    do
        source $file
    done
    
fi
