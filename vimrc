" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Syntastic
Plug 'vim-syntastic/syntastic'

" Syntastic Rust clippy
Plug 'wagnerf42/vim-clippy'

" Fuzzy find
Plug 'junegunn/fzf'

" .toml syntax highlighting
Plug 'cespare/vim-toml'

" Autoformatter
Plug 'Chiel92/vim-autoformat'

" Comment out
Plug 'tpope/vim-commentary'

call plug#end()

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Syntastic default mode
let s:togglelinting_enabled = 0 
function! ToggleLinting()
    if s:togglelinting_enabled
        call SyntasticToggleMode()
    else
        call SyntasticToggleMode()
        call SyntasticCheck()
    endif
    let s:togglelinting_enabled = !s:togglelinting_enabled
endfunction
if !s:togglelinting_enabled
    let g:syntastic_mode_map = { 'mode': 'passive' }
endif

" Syntastic clippy
let g:syntastic_rust_checkers = ['clippy']

" Syntastic custom cpp
let g:syntastic_cpp_config_file = '.syntastic_cpp'

" Line numbers
set nu

" Indent with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Shortcuts
" Fuzzy search
nnoremap <C-p> :FZF<CR>
" Toggle lines
nnoremap <C-n> :set nu!<CR>
" Autoformat
nnoremap ,f :Autoformat<CR>
" Toggle lint
nnoremap ,l :call ToggleLinting()<CR>
" Toggle commentary
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>
