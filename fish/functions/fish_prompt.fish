function fish_prompt
    set -g __fish_git_prompt_showcolorhints 'yes'
    set -g __fish_git_prompt_color_branch yellow
    set -g __fish_git_prompt_showdirtystate 'yes'
    #set -g __fish_git_prompt_char_dirtystate '🧩'
    set -g __fish_git_prompt_char_stagedstate '→'
    #set -g __fish_git_prompt_char_invalidstate '✖'
    set -g __fish_git_prompt_showuntrackedfiles 'yes'
    #set -g __fish_git_prompt_char_untrackedfiles '🆕'
    set -g __fish_git_prompt_showstashstate 'yes'
    #set -g __fish_git_prompt_char_stashstate '↩'
    set_color normal
    if __fish_git_prompt
        echo -n " "
    end
    set_color -o red
    echo -n "> "
    set_color normal
end
