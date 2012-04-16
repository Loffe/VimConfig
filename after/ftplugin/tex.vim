nmap <F6> :!pdflatex %<Enter>
nmap <F5> I\[ <Esc>A \]<Esc>
"nmap <S-F5> :s/\\[(.+)\\]/(\1)/

map § I%<Esc>
map <silent> ½ ^:s/^\(\s*\)%/\1/<Enter>

noremap <buffer> <Up> gk
noremap <buffer> <Down> gj
noremap <buffer> k gk
noremap <buffer> j gj
inoremap <buffer> <Up> <C-o>gk
inoremap <buffer> <Down> <C-o>gj
