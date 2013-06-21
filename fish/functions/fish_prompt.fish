function fish_prompt
    set -l me (whoami)

    set_color yellow
    printf '%s ' $me
 
    set_color magenta
    printf '%s ' (hostname | cut -d . -f 1)
 
    set_color $fish_color_cwd
    printf '%s ' (pwd | sed -e s/\\/Users\\/$me/~/g)

    set_color cyan
    git branch 2> /dev/null | grep -e '^\*' | sed -e 's/\* //' | tr '\n' ' '
 
    # Line 2
    echo
    set_color red
    printf '$ '

    set_color normal
end
