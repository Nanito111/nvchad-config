return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },

  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },

  -- settings = {
  --   pyright = {
  --     disableTaggedHints = false,
  --   },
  --   python = {
  --     analysis = {
  --       autoSearchPaths = true,
  --       diagnosticMode = "workspace",
  --       typeCheckingMode = "standard",
  --       useLibraryCodeForTypes = true,
  --       diagnosticSeverityOverrides = {
  --         reportUnusedImport = "error",
  --         reportUnusedClass = "error",
  --         reportUnusedFunction = "error",
  --         reportUnusedVariable = "error",
  --         reportDuplicateImport = "error",
  --         reportUnusedExpression = "error",
  --         reportImportCycles = "warning",
  --       },
  --     },
  --
  --     pythonPath = "python",
  --   },
  -- },
}
