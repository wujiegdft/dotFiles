set nu
set rnu

set cmdheight=1
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

inoremap jj <ESC>

inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

inoremap II <Esc>I
inoremap AA <Esc>A

let g:ycm_min_num_of_chars_for_completion=0

" git clone https://github.com/SirVer/ultisnips.git
let g:UltiSnipsExpandTrigger="<c-j>"


