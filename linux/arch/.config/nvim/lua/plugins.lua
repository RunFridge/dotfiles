--
-- 플러그인 설정
--
-- :PackerInstall 커맨드로 플러그인 설치
--

return require('packer').startup(function(use)
    -- Neovim 플러그인 관리 툴 (Packer)
    use 'wbthomason/packer.nvim'

    -- 유틸리티 플러그인
    use 'tpope/vim-sensible'
    use {'neoclide/coc.nvim', branch='master', run='yarn install --frozen-lockfile'}

    -- Git 플러그인
    use 'tpope/vim-fugitive'
    use 'APZelos/blamer.nvim'
    use 'airblde/vim-gitgutter'

    -- 네비게이션 플러그인
    use {'junegunn/fzf', run='./install --bin'}
    use {'ibhagwan/fzf-lua', requires={'kyazdani42/nvim-web-devicons'}}
    use {'kyazdani42/nvim-tree.lua', requires={'kyazdani42/nvim-web-devicons'}}
    use {'romgrk/barbar.nvim', requires={'kyazdani42/nvim-web-devicons'}}

    -- 에디터 플러그인
    use 'godlygeek/tabular'
    use 'tpope/vim-surround'
    use 'mattn/emmet-vim'
    use 'preservim/nerdcommenter'

    -- 인터페이스 플러그인
    use 'kyazdani42/nvim-web-devicons'
    use 'nathanaelkane/vim-indent-guides'
    use 'vim-airline/vim-airline'

    -- 테마 플러그인
    use 'vim-airline/vim-airline-themes'
    use 'ghifarit53/tokyonight-vim'
    use 'bluz71/vim-nightfly-guicolors'

    -- 애널리틱스 플러그인
    use 'wakatime/vim-wakatime'

    -- Syntax 플러그인
    use 'scrooloose/syntastic'
    use 'pantharshit00/vim-prisma'
end)
