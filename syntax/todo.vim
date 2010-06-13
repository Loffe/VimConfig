syntax match High /^+++\s.*$/
syntax match Medium /^++\s.*$/
syntax match Low /^+\s.*$/

syntax match Done /@done/ contained

syntax match HighDone /^+++\s.*@done$/ contains=Done
syntax match MediumDone /^++\s.*@done$/ contains=Done
syntax match LowDone /^+\s.*@done$/ contains=Done

highlight High guibg=#f44
highlight Medium guibg=#f88
highlight Low guibg=#faa

highlight HighDone guibg=#2f2
highlight MediumDone guibg=#6f6
highlight LowDone guibg=#afa

highlight Done guibg=bg guifg=#ccc
