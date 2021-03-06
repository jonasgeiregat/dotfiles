" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List here the plugins with Plug commands
" Shorthand notations can be used, as well as any valid GIT URLs
" Make sure you use single quotes
" See all possible ways to list a plugin: https://github.com/junegunn/vim-plug
" Ex: Plug 'https://github.com/username/reponame.git'
"
Plug 'ap/vim-buftabline'

Plug '907th/vim-auto-save'

Plug 'mattn/emmet-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'terryma/vim-multiple-cursors'

Plug 'lambdalisue/fern.vim'

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '⦙'

Plug 'pedrohdz/vim-yaml-folds'

Plug 'leafgarland/typescript-vim'

Plug 'dense-analysis/ale'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Initialize the plugin system
call plug#end()

" Plugin settings

let g:auto_save = 1  " enable AutoSave on Vim startup
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
