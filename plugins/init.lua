return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "Aasim-A/scrollEOF.nvim",
    event = { "CursorMoved", "WinScrolled" },
    config = function()
      require "configs.scrollEOF"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      return require "configs.nvim-lint"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "black",
        "pyright",
        "ruff",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "omnisharp",
        "csharpier",
        "curlylint",
        "glsl_analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "bash",
        "python",
        "html",
        "css",
        "json",
        "c_sharp",
        "glsl",
        "gdscript",
        "godot_resource",
        "gdshader",
        "markdown",
      },
      highlight = { enable = true },
      indent = { enable = false },
    },
  },
}
