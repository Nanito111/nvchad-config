return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = require "configs.conform",
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
        "vimdoc",
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
        "go",
        "zig",
        "javascript",
        "typescript",
        "ini",
        "hyprlang",
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
  { import = "nvchad.blink.lazyspec" },
  {
    "Saghen/blink.cmp",
    opts = {
      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  -- {
  --   lazy = false,
  --   "sphamba/smear-cursor.nvim",
  --   opts = function()
  --     return require "configs.smear-cursor"
  --   end,
  -- },
}
