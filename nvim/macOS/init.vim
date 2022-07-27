" Vim-Plugins
call plug#begin('~/.vim/plugged')
	" Utility Plugins
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'wakatime/vim-wakatime'
	Plug 'mattn/emmet-vim'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'sbdchd/neoformat'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'APZelos/blamer.nvim'
	Plug 'airblade/vim-gitgutter'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'preservim/nerdcommenter'
	" Airline
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vim-airline/vim-airline'
	" Visual Plugin
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'romgrk/barbar.nvim'
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'ghifarit53/tokyonight-vim'
	" Syntax Hisghlight Plugins
	Plug 'scrooloose/syntastic'
	Plug 'mxw/vim-jsx'
	Plug 'jparise/vim-graphql'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'tpope/vim-dotenv'
	Plug 'rust-lang/rust.vim'
	Plug 'pantharshit00/vim-prisma'
	Plug 'godlygeek/tabular'
	Plug 'preservim/vim-markdown'
call plug#end()

" Git Blmaer
let g:blamer_enabled = 1
let g:blamer_delay = 500

" Vim Indent Colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#32344A ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#232638 ctermbg=4

" Format on save
augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat
augroup END

" Neoformat
let g:neoformat_try_node_exe = 1

" Lua Script
:lua require('nvim-tree').setup()
:lua require('barbar')

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
if has('termguicolors')
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

" Vim-Javascript Settings
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_flow=1

" Vim-Jsx Settings
let g:jsx_ext_required=1

" Providers
let g:loaded_perl_provider=0
let g:loaded_ruby_provider=0

" Vim Airline Theme
let g:airline_theme='tokyonight'
let g:airline_powerline_fonts=2

" Vim IndentGuides
let g:indent_guides_enable_on_vim_startup = 1

" Vim Markdown Settings
let g:vim_markdown_folding_disabled = 1

" Vim NERD Commenter
filetype plugin on
let g:NERDCreateDefaultMappings = 1

" Split Window Keymapping
nmap <C-w>- <Cmd>split<CR>
nmap <C-w>_ <Cmd>vsplit<CR>

" Blackhole Register
noremap ' "_
" NvimTree Keymaps
nnoremap <silent>    <C-n> <Cmd>NvimTreeToggle<CR>

" fzf.vim Keymaps
nnoremap <silent>    <C-p> <Cmd>Files<CR>
nnoremap <silent>    <C-f> <Cmd>BLines<CR>
nnoremap <silent>    <C-h> <Cmd>History<CR>

" BarBarvim
" Move to previous/next
nnoremap <silent>    <A-j> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-k> <Cmd>BufferNext<CR>
" Close buffer
nnoremap <silent>    <A-w> <Cmd>BufferClose<CR>

" MarkdownPreview Keymaps
nnoremap <silent>    <C-s> <Cmd>MarkdownPreviewToggle<CR>

" Coc.vim Keymaps
inoremap <silent><expr>		<A-i> coc#refresh()


" ColorScheme
colorscheme nightfly
let g:tokyonight_style = 'storm'
hi Normal guibg=NONE ctermbg=NONE
