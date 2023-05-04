-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use 'wbthomason/packer.nvim'
  
  -- [[ Filesystem Navigation ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }                     -- colorscheme

  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'}, 
                 {'BurntSushi/ripgrep'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  use { 'tpope/vim-commentary' }                     -- auto comment using 'gc'
  use { 'mbbill/undotree' }                          -- shows undo tree

  -- [[ Rust ]]
  use { 'williamboman/mason.nvim' }                  -- install and manage LSP servers, debuggers and linters
  use { 'williamboman/mason-lspconfig.nvim' }        -- complement mason
  use { 'neovim/nvim-lspconfig'}                     -- a collection of LSP configs
  use { 'simrat39/rust-tools.nvim'}                  -- tools to automatically set up lspconfig for rust-analyzer.
  use 'rust-lang/rust.vim'
  -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'voldikss/vim-floaterm'
    use 'phaazon/hop.nvim'
    use 'RRethy/vim-illuminate'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }


  -- Debugging
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
end)
