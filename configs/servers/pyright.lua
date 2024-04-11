return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },

  settings = {
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
