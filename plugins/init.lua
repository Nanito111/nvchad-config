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
    "Kolkhis/streamer-mode.nvim",
    -- ft = "dotenv",
    cmd = {
      "StreamerMode",
      "SM",
      "StreamerModeOff",
      "SMoff",
      "StreamerModeSecure",
      "SMsecure",
      "StreamerModeEdit",
      "SMedit",
      "StreamerModeSoft",
      "SMsoft",
    },
    config = {
      use_defaults = false,
      -- Streamer Mode will apply to any path in here. Defaults to all paths.
      -- This means that Streamer Mode will hide any of the `keywords` below
      -- when inside any of these directories or filetypes.
      paths = {
        "*.env",
        "*/.env",
      },

      -- Any text appearing after one of the keywords specified here will be concealed.
      -- They are case-insensitive.
      -- E.g., passing in 'API_KEY' will conceal both 'API_KEY' and 'api_key'.
      keywords = {
        ".\\+=",
      },
      patterns = {},

      level = "secure", -- | 'edit' | 'soft'
      default_state = "off", -- Whether or not streamer mode turns on when nvim is launched.

      conceal_char = "", -- Default. This is what will be displayed instead
      -- of your secrets.
    },
  },
}
