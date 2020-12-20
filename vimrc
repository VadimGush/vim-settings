set nocompatible
filetype off

" PLUGINS START
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" enable Vundle plugin
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on
" PLUGINS END

command ND NERDTree
command GL Git log
command VimConfig tabnew ~/.vimrc
command Run !cmake --build .

" Leader should be defined before any mapping will occur
let mapleader = ","

" :map - is recursive map
" :noremap - non recursive map
" :nmap :nnoremap - cmd for normal mode
" :vmap :vnoremap - cmd for visual mode
nnoremap <leader>nd :ND<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>rn :YcmCompleter RefactorRename 
nnoremap <leader>n :noh<CR>

let g:airline_powerline_fonts = 1
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use install clangd instead of the old from plugin
let g:ycm_clangd_binary_path = exepath("clangd")

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set hlsearch
set updatetime=100

set foldmethod=syntax
