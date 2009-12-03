map <silent>§ I#<Esc>
map <silent>½ ^x

let php_sql_query=1
let php_htmlInStrings=1
let php_folding=1

map <silent>_ :cal PlaceAfterUnderScore()<enter>
map <silent>- :cal PlaceAfterUnderScoreBack()<enter>

function! PlaceAfterUnderScore()
    cal search('_.', 'eW')
endfunction

function! PlaceAfterUnderScoreBack()
    cal search('_.', 'eWb')
endfunction
