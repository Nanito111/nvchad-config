return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = require "configs.conform",
  },
  {
    "Aasim-A/scrollEOF.nvim",
    event = { "CursorMoved", "WinScrolled" },
    config = require "configs.scrollEOF",
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
    "neovim/nvim-lspconfig",
    config = function()
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
        "zig",
      },
      highlight = { enable = true },
      indent = { enable = false },
    },
  },
  {
    "nvchad/volt",
    lazy = true,
  },
  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
  },
  {
    "nvchad/menu",
    lazy = true,
  },
  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 5,
      -- more opts
    },
  },
  {
    lazy = false,
    "sphamba/smear-cursor.nvim",
    opts = function()
      return require "configs.smear-cursor"
    end,
  },
}
