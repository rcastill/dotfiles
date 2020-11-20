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

call plug#end()

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic clippy
let g:syntastic_rust_checkers = ['clippy']

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
