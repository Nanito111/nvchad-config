return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },

  -- settings = {
  --   pyright = {
  --     -- Using Ruff's import organizer
  --     disableOrganizeImports = true,
  --   },
  --   python = {
  --     analysis = {
  --       -- Ignore all files for analysis to exclusively use Ruff for linting
  --       ignore = { "*" },
  --     },
  --   },
  -- },

  settings = {
    pyright = {
      disableTaggedHints = true,
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "standard",
        useLibraryCodeForTypes = true,
      },

      pythonPath = "python",
    },
  },
}
