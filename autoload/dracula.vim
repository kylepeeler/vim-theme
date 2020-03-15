" Palette: {{{

let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#F8F8F2', 253]

let g:dracula#palette.bglighter = ['#48465d', 238]
let g:dracula#palette.bglight   = ['#363546', 237]
let g:dracula#palette.bg        = ['#22212c', 236]
let g:dracula#palette.bgdark    = ['#1b1a23', 235]
let g:dracula#palette.bgdarker  = ['#121217', 234]

let g:dracula#palette.comment   = ['#7970A9',  61]
let g:dracula#palette.selection = ['#454158', 239]
let g:dracula#palette.subtle    = ['#48465d', 238]

let g:dracula#palette.cyan      = ['#80FFEA', 117]
let g:dracula#palette.green     = ['#8AFF80',  84]
let g:dracula#palette.orange    = ['#FFCA80', 215]
let g:dracula#palette.pink      = ['#FF80BF', 212]
let g:dracula#palette.purple    = ['#9580FF', 141]
let g:dracula#palette.red       = ['#FF9580', 203]
let g:dracula#palette.yellow    = ['#FFFF80', 228]

"
" ANSI
"
let g:dracula#palette.color_0  = '#454158'
let g:dracula#palette.color_1  = '#ff9580'
let g:dracula#palette.color_2  = '#8aff80'
let g:dracula#palette.color_3  = '#ffff80'
let g:dracula#palette.color_4  = '#9580ff'
let g:dracula#palette.color_5  = '#ff80bf'
let g:dracula#palette.color_6  = '#80ffea'
let g:dracula#palette.color_7  = '#f8f8f2'
let g:dracula#palette.color_8  = '#504c67'
let g:dracula#palette.color_9  = '#ffaa99'
let g:dracula#palette.color_10 = '#a2ff99'
let g:dracula#palette.color_11 = '#ffff99'
let g:dracula#palette.color_12 = '#aa99ff'
let g:dracula#palette.color_13 = '#ff99cc'
let g:dracula#palette.color_14 = '#99ffee'
let g:dracula#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
