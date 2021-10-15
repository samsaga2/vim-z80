vim-z80
=======

Vim syntax for Z80 assembler.

## Plugin installation
Plug 'samsaga2/vim-z80'

## Manual installation
Run the following commands to install Z80 syntax highlighting for the current user:
```
cd ~
git clone https://github.com/samsaga2/vim-z80.git
cd vim-z80
cp -r ftdetect ftplugin syntax ~/.vim
```

## Default file extension
`*.z80`

## Example config
```
autocmd Filetype asm setlocal ts=8 sw=8 noexpandtab
autocmd BufNewFile,BufRead *.asm set filetype=z80
```
