-- The setup config table shows all available config options with their default values:
require("neocord").setup({
  -- General options
  logo                = "auto",                                      -- "auto" or url
  logo_tooltip        = "The True Code Editor",                      -- nil or string
  main_image          = "language",                                  -- "language" or "logo"
  log_level           = nil,                                         -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  debounce_timeout    = 5,                                           -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  blacklist           = require("custom.configs.neocord.blacklist"), -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
  file_assets         = {},                                          -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/neocord/filetypes/file_assets.lua` for reference)
  show_time           = true,                                        -- Show the timer
  global_timer        = false,                                       -- if set true, timer won't update when any event are triggered
  enable_line_number  = false,

  -- Rich Presence text options
  editing_text        = "Editing %s",         -- string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
  file_explorer_text  = "Browsing %s",        -- string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
  git_commit_text     = "Committing changes", -- string rendered when committing changes in git (either string or function(filename: string): string)
  plugin_manager_text = "Managing plugins",   -- string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
  reading_text        = "Reading %s",         -- string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
  workspace_text      = "Working on %s",      -- string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
  line_number_text    = "Line %s out of %s",  -- string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
  terminal_text       = "Using Terminal",     -- string rendered when in terminal mode.
})
