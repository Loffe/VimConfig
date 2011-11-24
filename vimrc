filetype plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set to auto read when a file is changed from the outside
set autoread
syn on
set gfn=Monospace\ 9
set guioptions-=T
" Disable clang uatocomplete by default
let g:clang_complete_copen = 0
let g:clang_complete_auto = 0
let g:slimv_client = 'python ~/.vim/ftplugin/slimv.py -r "xterm -T Slimv -e @p @s -l \"lein repl\" -s"' "

augroup filetypedetect
    au! BufNewFile,BufRead *.phtml set filetype=php
    au! BufNewFile,BufRead *.module set filetype=php
    au! BufNewFile,BufRead *.install set filetype=php
    au! BufNewFile,BufRead *.inc set filetype=php
    au! BufNewFile,BufRead *.x68 set syn=asm68k
    au! BufNewFile,BufRead *.pde set filetype=cpp
    au! BufNewFile,BufRead *.pde source ~/.vim/after/ftplugin/cpp.vim
    au! BufNewFile,BufRead *.pde set filetype=arduino
    au! BufNewFile,BufRead *.fs set filetype=cpp
    au! BufNewFile,BufRead *.vs set filetype=cpp
    au! BufNewFile,BufRead *.org set filetype=org
augroup END

" Wonderfull completetion for css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

let g:tex_flavor='latex'

" let g:netrw_sort_sequence += ',\.class'

" au! BufNewFile,BufRead *.java source ~/.vim/java.vim
" au! BufNewFile,BufRead *.php source ~/.vim/php.vim
" au! BufNewFile,BufRead *.x68 source ~/.vim/x68.vim

set nocompatible
set noswapfile

" source ~/.vim/fuzzy.vim

" source ~/.config/vim/BufClose.vim
" source ~/.config/vim/jcommentar.vim

" switch tabs
nmap <C-Tab> gt
nmap <C-S-Tab> gT
" awesome, inserts new line without going into insert mode
map <S-Enter> O<ESC>

" Go to tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Go to tag in vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Toggle expandtab
map <F2> :call EloffToggleTab()<Enter>
map <S-F2> :set invlist<Enter>

" change buffers
nmap <silent><s-a-right> :bn<Enter>
nmap <silent><s-a-left> :bp<Enter>

set scrolloff=3

" indent
nmap <S-Tab> <<
nmap <Tab> >>

" Highlight trailing whitespace
match Todo /\s\+$/

" Insert current date
nmap <Leader>d :r !date +\%Y\%m\%d<Enter>


set ai
set expandtab
set tabstop=4
set softtabstop=4
set sw=4
set hls
set lcs=tab:→.
set lcs+=trail:.
highlight SpecialKey term=bold ctermfg=4 guifg=Darkgrey

set encoding=utf-8

function! EloffToggleTab()
	set invexpandtab
	echo "Uses " . (&expandtab ? "spaces" :"tabs" )
endfunction

function! GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command! -nargs=? G call GitGrep(<f-args>)

command! Date :r!date +\%Y\%m\%d
