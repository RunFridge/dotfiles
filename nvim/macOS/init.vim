" Vim-Plugins
call plug#begin('~/.vim/plugged')
	" Utility Plugins
	Plug 'tpope/vim-surround'
	Plug 'wakatime/vim-wakatime'
	Plug 'mattn/emmet-vim'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	" Airline
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vim-airline/vim-airline'
	" Visual Plugin
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'romgrk/barbar.nvim'
	" Syntax Hisghlight Plugins
	Plug 'scrooloose/syntastic'
	Plug 'mxw/vim-jsx'
	Plug 'jparise/vim-graphql'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'tpope/vim-dotenv'
	Plug 'rust-lang/rust.vim'
	Plug 'mracos/mermaid.vim'
call plug#end()

" Lua Script
:lua require('nvim-tree').setup()

" Key Mapping
" Split Window
nmap <C-w>- <Cmd>split<CR>
nmap <C-w>_ <Cmd>vsplit<CR>
" Blackhole Register
noremap ' "_

" Vim settings
if has('syntax')
	syntax on
endif
set noimd
set showmatch
set ts=2
set shiftwidth=2
set nu
set ruler
set relativenumber
set encoding=UTF-8
set fileencodings=utf8,euc-kr
set mouse+=a

" Clipboard
set clipboard=unnamed

" Colorscheme
if has("termguicolors")
	set termguicolors
endif

" Emmet Settings
let g:user_emmet_leader_key='<C-e>'

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" NERDTREE Devicon
let g:webdevicons_conceal_nerdtree_brackets=1

" Vim-Javascript Settings
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_flow=1

" Vim-Jsx Settings
let g:jsx_ext_required=1

" Providers
let g:loaded_perl_provider=0
let g:loaded_ruby_provider=0

" Vim Airline Theme
let g:airline_theme='transparent'
let g:airline_powerline_fonts=2

" Vim IndentGuides
let g:indent_guides_enable_on_vim_startup = 1

" NvimTree Keymaps
nnoremap <silent>    <C-b> <Cmd>NvimTreeToggle<CR>

" fzf.vim Keymaps
nnoremap <silent>    <C-p> <Cmd>Files<CR>
nnoremap <silent>    <C-f> <Cmd>BLines<CR>
nnoremap <silent>    <C-h> <Cmd>History<CR>

" BarBarvim Keymaps
" Move to previous/next
nnoremap <silent>    <A-j> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-k> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-h> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A-l> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-w> <Cmd>BufferClose<CR>
