return {
  -- Cursor color. Defaults to Cursor gui color
  cursor_color = "#d5c4a1",
  -- Background color. Defaults to Normal gui background color
  normal_bg = "#282828",

  -- Smear cursor when switching buffers
  smear_between_buffers = true,

  -- Smear cursor when moving within line or to neighbor lines
  smear_between_neighbor_lines = true,

  -- Use floating windows to display smears over wrapped lines or outside buffers.
  -- May have performance issues with other plugins.
  use_floating_windows = false,

  -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
  -- Smears will blend better on all backgrounds.
  legacy_computing_symbols_support = false,
}
