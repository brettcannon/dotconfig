# [Fish shell](https://fishshell.com/)

[How to switch to fish](https://fishshell.com/docs/current/tutorial.html#tut_switching_to_fish).

For machine-specific settings, try to use universal variables. To see what has already been set that way, see `.config/fish/fishd.MACHINE_ID`.

## Tips

To execute a script, [use `source`](https://fishshell.com/docs/current/commands.html#source), (e.g. `source .venv/bin/activate.fish`).

Recursive [wildcards](https://fishshell.com/docs/current/tutorial.html#tut_wildcards) only requires a single instance of `**`, e.g. `/var/**.log`.

To select an [autosuggestion](https://fishshell.com/docs/current/tutorial.html#tut_autosuggestions) you can use → or Ctrl+F. Alt+→ will let you choose a single word.

[Command substitution](https://fishshell.com/docs/current/tutorial.html#tut_command_substitutions) is done via parentheses.

To run `ssh-agent`, use `eval (ssh-agent -c)`

### Scripting

[Combiners](https://fishshell.com/docs/current/tutorial.html#tut_combiners):
- `&&`, `||`, `!`
- `and`, `or`, `not`

[Conditionals](https://fishshell.com/docs/current/tutorial.html#tut_conditionals):
- `if`/`else if`/`else`
- `switch`

Use `uname` to select on OS, e.g. `Darwin`, `Linux`, `'*'`.

[Functions](https://fishshell.com/docs/current/tutorial.html#tut_functions). Use `--description` to provide a docstring, e.g. `function ls --description 'List contents of directory'`.

[Loops](https://fishshell.com/docs/current/tutorial.html#tut_loops)
- `while`
- `for`

### [Variables](https://fishshell.com/docs/current/tutorial.html#tut_variables)

Variable substitution occurs in double quotes, not single quotes.

All variables are [lists](https://fishshell.com/docs/current/tutorial.html#tut_lists). Indexing is 1-based and negative indexing is supported. Slices use `1..2` syntax.

Controlling variables:
- `set name 'Mister Noodle'`: sets `$name` to `'Mister Noodle'`.
- `set PATH $PATH /spam`: append `/spam` to `$PATH`.
- `set -x name 'Mister Noodle'`/`--export`: sets and exports `$name`.
- `set -e name`/`--erase`: erase `$name`; use `set -e name[1]` to delete the first item of the list.

Useful environment variables:
- `$status`: exit code of last command.
- `$USER`: username.

#### [`$PATH`](https://fishshell.com/docs/current/tutorial.html#tut_path)
For machine-specific settings, set the `$fish_user_paths` universal variable, e.g. `set -U fish_user_paths /usr/local/bin $fish_user_paths`. That will prepend it to `$PATH`. And since it's a universal variable it only needs to be done once manually (never do it in `config.fish` as the variable will be prepending to on every execution!).

To remove a specific entry, do something like `set PATH (string match -v /usr/local/bin $PATH)`.
