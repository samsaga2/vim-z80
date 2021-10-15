" borrowed from https://github.com/philj56/vim-asm-indent/blob/master/indent/asm.vim
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal indentexpr=GetAsmIndent()
setlocal indentkeys=<:>,!^F,o,O

let s:cpo_save = &cpo
set cpo&vim

function s:buffer_shiftwidth()
    return shiftwidth()
endfunction

function! GetAsmIndent()
    let line = getline(v:lnum)
    let ind = s:buffer_shiftwidth()

    " If the line is a label (starts with ':' terminated keyword), 
    " then don't indent

    if line =~ '\v\s*[a-zA-Z0-9\.]+:'
        let ind = 0
    endif

    return ind
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save
