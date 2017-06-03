#set -g -x fish_greeting ''

set -g -x EDITOR vim
set -g -x CLICOLOR 1

alias cputop "top -ocpu -R -F -s 2"

set -g -x CC clang
set -g -x CXX clang++
set -g -x CFLAGS "-Wno-unused-value -Wno-empty-body -Qunused-arguments -Wno-deprecated-declarations"

set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
#set __fish_git_prompt_char_dirtystate '⚡'
#set __fish_git_prompt_char_stagedstate '→'
#set __fish_git_prompt_char_untrackedfiles '☡'
#set __fish_git_prompt_char_stashstate '↩'
#set __fish_git_prompt_char_upstream_ahead '+'
#set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
  set_color normal
  if __fish_git_prompt
    echo -n " "
  end
  set_color -o red
  echo -n "> "
  set_color normal
end

function fish_right_prompt
  set_color -o green
  prompt_pwd
  set_color normal
end
