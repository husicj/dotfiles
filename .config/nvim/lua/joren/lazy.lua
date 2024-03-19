local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/neodev.nvim", -- neovim lua API help, docs, completion

    -- general usage
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.4', -- fuzzy finder
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    "nvim-treesitter/nvim-treesitter",
    "mbbill/undotree",
    "tpope/vim-fugitive", -- git intergration
    "tpope/vim-commentary", -- commenting
    "folke/which-key.nvim",

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },

    -- filetype-specific
    "lervag/vimtex",

    -- colorschemes
    { "rose-pine/neovim", name = "rose-pine" },
    { "folke/tokyonight.nvim", name = "tokyonight" },
})
