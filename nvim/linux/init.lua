--------------------------------------------------------
-- ########## Convenience Local Variables ########### --
--------------------------------------------------------
local o    = vim.o
local g    = vim.g
local opt  = vim.opt
local A    = vim.api
local call = vim.call

--------------------------------------------------------
-- #################### Vim Plug #################### --
--------------------------------------------------------
local Plug = vim.fn['plug#']
call('plug#begin', '~/.config/nvim/plugged')
    -- # Utility
    Plug 'tpope/vim-sensible'
    Plug 'neoclide/coc.nvim'
    -- # Navigation
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'romgrk/barbar.nvim'
    -- # Git
    Plug 'tpope/vim-fugitive'
    Plug 'APZelos/blamer.nvim'
    Plug 'airblade/vim-gitgutter'
    -- # Editor
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'preservim/nerdcommenter'
    -- # Visual / Interface
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'vim-airline/vim-airline'
    -- # Theme
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'bluz71/vim-nightfly-guicolors'
    -- # Statistics
    Plug 'wakatime/vim-wakatime'
    -- # Syntax
    Plug 'scrooloose/syntastic'
    Plug 'pangloss/vim-javascript'
call('plug#end')

--------------------------------------------------------
-- ############### Vim Basic Settings ############### --
--------------------------------------------------------
-- Terminal GUI Colors
o.termguicolors = true

o.timeoutlen = 500
o.updatetime = 200
o.scrolloff  = 4

-- Line Number
o.number         = true
o.numberwidth    = 2
o.relativenumber = true

-- Tab
o.tabstop     = 4
o.shiftwidth  = 4
o.expandtab   = true
o.softtabstop = -1 -- If negative shiftwidth value is used
o.list        = true
o.listchars   = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Encodings
o.encoding      = 'UTF-8'
o.fileencodings = 'utf8,euc-kr'

-- Make OS clipboard compatible with neovim 
o.clipboard = 'unnamedplus'

-- Backups
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase  = true

-- Enable Mouse mode
opt.mouse = 'a'

-- Colorscheme
pcall(vim.cmd, 'colorscheme nightfly')
pcall(vim.cmd, [[highlight Normal guibg=NONE ctermbg=NONE]]) -- Transparent background

--------------------------------------------------------
-- ################# Key Bindings ################### --
--------------------------------------------------------
local function map(mode, key, value)
    vim.keymap.set(mode, key, value)
end

-- # Vim General Keymaps
map('n', '<C-w>-', '<Cmd>split<CR>')         -- CTRL + -: Split buffer
map('n', '<C-w>_', '<Cmd>vsplit<CR>')        -- CTRL + _: Vertical split buffer

-- # Plugin Specific Keymaps
map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>') -- CTRL + N: Toggle NvimTree
map('n', '<C-p>', '<Cmd>Files<CR>')          -- CTRL + P: Toggle FZF Files
map('n', '<C-f>', '<Cmd>BLines<CR>')         -- CTRL + F: Toggle FZF Lines
map('n', '<C-h>', '<Cmd>History<CR>')        -- CTRL + H: Toggle FZF History
map('n', '<A-j>', '<Cmd>BufferPrevious<CR>') -- ALT + J: Move to previous buffer
map('n', '<A-k>', '<Cmd>BufferNext<CR>')     -- ALT + K: Move to next buffer
map('n', '<A-w>', '<Cmd>BufferClose<CR>')    -- ALT + W: Close current buffer

-- # Insert Mode Coc.nvim suggestions
A.nvim_set_keymap('i', '<A-i>', 'coc#refresh()', { noremap = true, expr = true })

--------------------------------------------------------
-- ################ Plugin Settings ################# --
--------------------------------------------------------
-- # Nvim Tree
require('nvim-tree').setup()

-- # Barbar.vim -- resize tab location depending on nvim-tree
local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')
local function get_tree_size()
    return require'nvim-tree.view'.View.width
end
nvim_tree_events.subscribe('TreeOpen', function()
    bufferline_state.set_offset(get_tree_size())
end)
nvim_tree_events.subscribe('Resize', function()
    bufferline_state.set_offset(get_tree_size())
end)
nvim_tree_events.subscribe('TreeClose', function()
    bufferline_state.set_offset(0)
end)

-- # Vim Tokyonight
g.tokyonight_style = 'storm'

-- # Vim Airline
g.airline_theme           = 'tokyonight'
g.airline_powerline_fonts = 2

-- # Git Blamer
g.blamer_enabled = 1
g.blamer_delay   = 500 -- Delay for git blame to show up (ms)

-- # NERD Commenter
g.NERDCreateDefaultMappings = 1

-- # Vim Indent
g.indent_guides_enable_on_vim_startup = 1
g.indent_guides_auto_colors = 1

-- # Emmet vim
g.user_emmet_leader_key = '<C-e>'

-- # Syntastic
g.syntastic_always_populate_loc_list = 1
g.syntastic_auto_loc_list            = 1
g.syntastic_check_on_open            = 1
g.syntastic_check_on_wq              = 1

-- # Vim Javascript
g.javascript_plugin_jsdoc = 1
g.javascript_plugin_flow  = 1
