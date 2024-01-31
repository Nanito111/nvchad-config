local options = {
  formatters_by_ft = {
    python = {"black"}
  }
}

require("conform").setup(options)
