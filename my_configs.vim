set nu
set rnu
set cmdheight=1
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
" set mouse=a
set cursorline

unmap <space>
unmap <c-space>
map <space> <leader>

nnoremap ; :

inoremap jj <ESC>

inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>o

cnoremap q1 q!

" Open NERDTree when Vim startsup and no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree with Ctrl-n 
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>

" Close Vim if the only window left open is NERDTree
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction


" git clone https://github.com/Valloric/YouCompleteMe.git
" git clone https://github.com/SirVer/ultisnips.git
" git clone https://github.com/majutsushi/tagbar.git
" git clone git://github.com/tpope/vim-sensible.git

" ---------------------------------- "
" Configure Ultisnip and YouCompleteMe
" ---------------------------------- "
let g:acp_enableAtStartup = 0

" enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
set completeopt-=preview

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>


" remap Ultisnips for compatibility for YCM
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" ---------------------------------- "
" Configure Tagbar
" ---------------------------------- "
nmap <F8> :TagbarToggle<CR>
