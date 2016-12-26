# dotfiles
My collection of configuration files

## "Installation"
To "install" e.g. the Vim configuration files:

1. `cd dotfiles`
2. `stow --target=$HOME vim`

"Uninstalling" is the same command as installing but with `--delete`.

## Adding configuration files
Simply mirror the file and directory structure found in one's home
directory. Any machine-specific configuration should go into a
`*.local` file which will not be included in version control. Any
notes on what should be in the local file will be in a `README.md`
file in the program's subdirectory in this repository.
