compiler python
nnoremap <buffer> <leader>d :silent make *.py <bar> redraw! <bar> :copen <CR>
nnoremap <leader>r :w <bar> :!clear && python3 %<CR>
nnoremap <F9> :w <bar> :!clear && python3 main.py<CR>

set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set colorcolumn=80

setlocal path=.,**
set wildignore=*.pyc,*/__pycache__

set include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)

function! PyInclude(fname)
    let parts = split(a:fname, ' import ') "(1) [conv.metrics] (2) [conv, conversion]
    let l = parts[0] "(1) conv.metrics (2) conv
    if len(parts) > 1
        let r = parts[1] "conversion
        let joined = join([l, r], '.' ) " conv.conversion
        let fp = substitute(joined, '\', '\', 'g') . '.py'
        let found = glob(fp, 1)
        if len(found)
            return found
        endif
    endif
    return substitute(l, '\', '\', 'g') . '.py'
endfunction

setlocal includeexpr=PyInclude(v:fname)
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
map <leader>cd :lcd %:p:h<CR>
