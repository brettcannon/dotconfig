function fish_prompt
    set -g -x __fish_git_prompt_color_branch yellow
    set -g -x __fish_git_prompt_showdirtystate 'yes'
    set -g -x __fish_git_prompt_showuntrackedfiles 'yes'
    set -g -x __fish_git_prompt_char_dirtystate '⚡'
    set -g -x __fish_git_prompt_char_stagedstate '→'
    set -g -x __fish_git_prompt_char_untrackedfiles '☡'
    set -g -x __fish_git_prompt_char_stashstate '↩'
    #set __fish_git_prompt_char_upstream_ahead '+'
    #set __fish_git_prompt_char_upstream_behind '-'
    set_color normal
    if __fish_git_prompt
        echo -n " "
    end
    set_color -o red
    echo -n "> "
    set_color normal
end
