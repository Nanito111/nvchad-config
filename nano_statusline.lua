-- local config = require("nvconfig").ui.statusline
-- local stl_utils = require "nvchad.stl.utils"
-- local sep_style = config.separator_style
-- local default_sep_icons = {
--   round = { left = "", right = "" },
--   block = { left = "█", right = "█" },
-- }

-- local separators = (type(sep_style) == "table" and sep_style) or default_sep_icons[sep_style]
-- local sep_l = separators["left"]
-- local sep_r = "%#St_sep_r#" .. separators["right"] .. " %#ST_EmptySpace#"

return {

  order = { "file", "git", "%=", "mode", "diagnostics", "%=", "lsp_msg", "lsp", "cwd", "cursor" },
  modules = {
    lsp = function()
      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_active_clients()) do
          if client.attached_buffers[require("nvchad.stl.utils").stbufnr()] and client.name ~= "null-ls" then
            return (vim.o.columns > 100 and "   " .. client.name .. " ") or "   LSP "
          end
        end
      end

      return ""
    end,
    cursor = "%#St_pos_sep#" .. "• " .. "%#St_pos_icon# %#St_pos_text# %p %% ",
  },
}
