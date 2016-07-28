set nu
set rnu

set cmdheight=1
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set mouse=a
nnoremap ; :

inoremap jj <ESC>

inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

inoremap II <Esc>I
inoremap AA <Esc>A


" git clone https://github.com/SirVer/ultisnips.git
" git clone https://github.com/Valloric/YouCompleteMe.git
let g:acp_enableAtStartup = 0
" enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_min_num_of_chars_for_completion=0

" remap Ultisnips for compatibility for YCM
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

set completeopt-=preview

