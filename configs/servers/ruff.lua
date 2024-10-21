return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },

  trace = "messages",
  init_options = {
    settings = {
      logLevel = "debug",
    },
  },
  capabilities = {
    textDocument = {
      hover = false,
    },
  },
}
