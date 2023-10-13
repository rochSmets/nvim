local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
  install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim" }  -- Useful lua functions used by lots of plugins
  use { "windwp/nvim-autopairs" }  -- Autopairs, integrates with both cmp and treesitter
  use { "nvim-treesitter/nvim-treesitter", {run =  ':TSUpdate'}} -- parsers for color highlighting


  use { "nvim-lualine/lualine.nvim",
      requires = { "nvim-tree/nvim-web-devicons", opt = true } }

  use { "folke/tokyonight.nvim" }

  -- 'nvim-telescope/telescope.nvim' fuzzy finder
  use { "tpope/vim-fugitive" }

  use { "lukas-reineke/indent-blankline.nvim" }

  use { "nvim-tree/nvim-tree.lua",
      requires = { "nvim-tree/nvim-web-devicons" } }

  use { "akinsho/bufferline.nvim", 
      requires = { "nvim-tree/nvim-web-devicons" } }

  use { "lewis6991/gitsigns.nvim" }

  use { "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" } } }



-- all these plugins are related to LSP
use {
  'VonHeikemen/lsp-zero.nvim',branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},

    -- mason is a manager for lsp, linters, dap, formatters
    -- it allows to install, update, etc. them easily
    {'williamboman/mason.nvim'},

    -- mason-lspconfig is a bridge between mason and mason-lspconfig
    -- helps them working together
    {'williamboman/mason-lspconfig.nvim'},
    {'WhoIsSethDaniel/mason-tool-installer.nvim'},

    -- Autocompletion

    -- A completion engine plugin for neovim written in Lua.
    {'hrsh7th/nvim-cmp'},          -- Completion sources are installed from external repositories and "sourced".
    {'hrsh7th/cmp-buffer'},        -- nvim-cmp source for buffer words.
    {'hrsh7th/cmp-path'},          -- nvim-cmp source for filesystem paths.
    {'saadparwaiz1/cmp_luasnip'},  -- luasnip completion source for nvim-cmp
    {'hrsh7th/cmp-nvim-lsp'},      -- nvim-cmp source for neovim's built-in language server client.
    {'hrsh7th/cmp-nvim-lua'},      -- nvim-cmp source for neovim Lua API.

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}



end)
