#!/usr/bin/env bash


read -p "which theme: " theme
case $theme in
    dark|d)
        echo "Black"
        /home/r0s/development/desktop/themes/dark/st.sh
        /home/r0s/development/desktop/themes/dark/vim.sh
        /home/r0s/development/desktop/themes/dark/bar.sh
        /home/r0s/development/desktop/themes/dark/tcsh.sh
    ;;
    white|w)
        echo "white"
        /home/r0s/development/desktop/themes/white/st.sh
        /home/r0s/development/desktop/themes/white/vim.sh
        /home/r0s/development/desktop/themes/white/bar.sh
        /home/r0s/development/desktop/themes/white/tcsh.sh
    ;;
    *)
    echo "error"
    ;;
esac
