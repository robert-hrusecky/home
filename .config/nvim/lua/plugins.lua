return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- Theming
        use "tomasiser/vim-code-dark"
        use "vim-airline/vim-airline"
        
        -- Tim Pope + Editing
        use "tpope/vim-commentary"
        use "tpope/vim-eunuch"
        use "tpope/vim-tbone"
        -- use "tpope/vim-endwise" -- NOTE: Does not work with coc.nvim
        use "tpope/vim-afterimage"
        use "tpope/vim-surround"
        -- use "tpope/vim-unimpaired" -- TODO: look into
        -- use "rstacruz/vim-closer"
        
        -- Completion/LSP
        -- use "neoclide/coc.nvim", {"branch": "release"}
        use "neovim/nvim-lspconfig"
        -- use "hrsh7th/nvim-compe"
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-vsnip"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/vim-vsnip"
        
        -- Frontends
        -- use "glacambre/firenvim", { "do": { _ -> firenvim#install(0) } }
        
        -- Languages/Syntax
        -- use "cespare/vim-toml"
        use "sheerun/vim-polyglot"
        use "simrat39/rust-tools.nvim"

        -- Tree-sitter
        use {
            "nvim-treesitter/nvim-treesitter",
            branch = "0.5-compat",
            run = ":TSUpdate",
        }
        use {
            "nvim-treesitter/nvim-treesitter-textobjects",
            branch = "0.5-compat",
        }
    end
)
