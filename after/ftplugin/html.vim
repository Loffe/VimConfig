function! ReplaceSpecialChars()
    :%s/å/\&aring;/
    :%s/ä/\&auml;/
    :%s/ö/\&ouml;/
    :%s/Å/\&Aring;/
    :%s/Ä/\&auml;/
    :%s/Ö/\&Ouml;/
endfunction
