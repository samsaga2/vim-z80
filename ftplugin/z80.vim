if exists("b:loaded_ftplugin")
   finish
endif

let b:loaded_ftplugin=1

setlocal tabstop=8
setlocal shiftwidth=8

setlocal foldmethod=marker
setlocal commentstring=;;%s

function! b:IndentLabel()
    let saved_unnamed_register = @@

    if getline('.') =~ "^\s*[a-zA-Z0-9_.]+:$" then
        echom "ok"
        normal! V:s/\s+//g
    endif

    let @@ = saved_unnamed_register
endfunction

inoremap <buffer> :normal! all b:IndentLabel()