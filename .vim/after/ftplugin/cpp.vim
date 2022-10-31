
nnoremap <leader>r :!clear && g++ -c *.cpp -std=c++11 -g -Wall -I ../include && g++ *.o -o ../bin/debug/main && ../bin/debug/main<CR>
nnoremap <buffer> <leader>d :silent make *.cpp <bar> redraw! <bar> :copen<CR>
nnoremap <leader>b :!clear && g++ -c *.cpp -std=c++11 -O3 -Wall -I ../include && g++ *.o -o ../bin/release/main && ../bin/release/main<CR>
nnoremap <leader>t :!clear && g++ -c % -std=c++11 -g -Wall && g++ *.o -o main && ./main && rm *.o<CR>
compiler cpp

" Snipets for c++ files"
nnoremap ,class :-1read $HOME/.vim/cpp_snipeta/class.cpp<CR>3jfc
nnoremap ,main :-1read $HOME/.vim/cpp_snipeta/mainfunc.cpp<CR>fs
nnoremap ,for :-1read $HOME/.vim/cpp_snipeta/foriloop.cpp<CR>fs
nnoremap ,forj :-1read $HOME/.vim/cpp_snipeta/forjloop.cpp<CR>fs
nnoremap ,swit :-1read $HOME/.vim/cpp_snipeta/switch.cpp<CR>fs
lcd %:p:h"

setlocal path=../*

set include=^\\s*\\#include\\s*\\\"\\zs[a-zA-Z]\\+\\.h\\ze

setlocal define=^\\s*\\<\\(void\\\|class\\)\\>

map <leader>cd :lcd %:p:h<bar>:lcd ../ <CR>
map <leader>cf :lcd %:p:h<CR>
map <F3> :tabe ~/Code/cpp_apps/cpp_test/test.cpp<CR>


function! Class(name)
    lcd %:p:h
    lcd ../ 
    execute "!touch src/".a:name.".cpp"
    execute "!touch include/".a:name.".h"
    execute "e include/".a:name.".h"
    execute "-1read ~/.vim/cpp_snipeta/class.cpp"
    execute "%s/className/".a:name."/g"
    execute "tabe src/".a:name.".cpp"
endfunction

