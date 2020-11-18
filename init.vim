call plug#begin()
Plug 'preservim/nerdtree'

" https://github.com/mrk21/yaml-vim
Plug 'mrk21/yaml-vim'

"
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
Plug 'scrooloose/nerdcommenter'

" https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
Plug 'sbdchd/neoformat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Сoc - автодополнение
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Дополнения для NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
" Дополнение для Git, а также иконки для NERDTree
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
" Линия статуса
Plug 'itchyny/lightline.vim'
" Темы
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
" Проверка Синтаксиса
Plug 'scrooloose/syntastic'
" Плагин автозавершения
"Plug 'Valloric/YouCompleteMe'
" Поддержка Python
"Plug 'klen/python-mode'

" Python-mode https://github.com/python-mode/python-mode
"Plug 'python-mode/python-mode'
"

" Puppet 
Plug 'rodjek/vim-puppet'

call plug#end()

" auto-completion
let g:deoplete#enable_at_startup = 1


" Plugins yaml
" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" Add numbers
set rnu

"  https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d


" Тема для **NeoVim**
syntax on
colorscheme iceberg

" add pp stuffs
au! BufNewFile,BufReadPost *.{pp} set filetype=pp foldmethod=indent
autocmd FileType pp setlocal ts=4 sts=4 sw=4 expandtab
"
