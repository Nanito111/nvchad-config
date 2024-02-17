local options = {
  formatters_by_ft = {
    python = {"black"},
    csharp = {"csharpier"}
  }
}

require("conform").setup(options)
