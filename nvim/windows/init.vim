call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'airblade/vim-gitgutter'
	Plug 'APZelos/blamer.nvim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap ' "_

if has('syntax')
	syntax on
endif
set noimd
set showmatch
set ts=4
set shiftwidth=4
set nu
set ruler
set relativenumber
set encoding=UTF-8
set fileencodings=utf8,euc-kr
set clipboard=unnamed

" Colorscheme
set termguicolors
let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic = 1
colorscheme nightfly
hi Normal guibg=NONE ctermbg=NONE

" Git Blamer
let g:blamer_delay = 500
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '

" FZF vim
nnoremap <silent>    <S-p> <Cmd>Files<CR>
nnoremap <silent>    <S-l> <Cmd>Lines<CR>
nnoremap <silent>    <S-h> <Cmd>History<CR>

" Vim Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='tokyonight'

" Cocvim
inoremap <silent><expr>		<A-i> coc#refresh()

" NvimTree Setup
lua require("nvim-tree").setup()
lua require("tree")
nnoremap <silent>	 <C-n> <Cmd>NvimTreeToggle<CR>

" Vim BarBar
" Move to previous/next
nnoremap <silent>    <A-j> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-k> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
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
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>
