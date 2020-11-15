" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'
                
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Keeping up to date with master
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    
    " Airline and Airline themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' 

    " Wich Key plugin, never forget a key... blah blah
    Plug 'liuchengxu/vim-which-key'
    
    " Floaterm is a floating terminal for Neovim
    Plug 'voldikss/vim-floaterm'

    " Startpage
    Plug 'mhinz/vim-startify'

    " Distraction Free mode, 'leader + go'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
   
    " gcc to comment out selection, takes number input
    " ex. 4gcc comments out 4 lines. 
    Plug 'tpope/vim-commentary'
    
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    Plug 'airblade/vim-rooter'

    " Rust Config
    Plug 'rust-lang/rust.vim'
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    " highlights colors with their colour, hex, rgb, rgba, etc.
    Plug 'norcalli/nvim-colorizer.lua'

    " Themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'chriskempson/base16-vim'
    Plug 'dylanaraps/wal'
    Plug 'morhetz/gruvbox'
    Plug 'noahfrederick/vim-noctu'
    Plug 'HenryNewcomer/vim-theme-papaya'

call plug#end()
