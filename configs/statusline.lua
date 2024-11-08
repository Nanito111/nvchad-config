local utils = require "nvchad.stl.utils"

local M = {}

M.sep_style = "round"
local separators = (type(M.sep_style) == "table" and M.sep_style) or utils.separators[M.sep_style]

local sep_l = separators["left"]
local sep_r = separators["right"]

local function gen_block(txt, txt_hl_group, sep_hlgroup, icon, icon_hl_group)
  icon = icon or ""
  icon_hl_group = icon_hl_group or ""
  return sep_hlgroup .. sep_l .. icon_hl_group .. icon .. txt_hl_group .. txt .. sep_hlgroup .. sep_r
end

local function lsp()
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_clients()) do
      if client.attached_buffers[utils.stbufnr()] then
        return (vim.o.columns > 100 and client.name) or "LSP"
      end
    end
  end

  return ""
end

local function git()
  if not vim.b[utils.stbufnr()].gitsigns_head or vim.b[utils.stbufnr()].gitsigns_git_status then
    return ""
  end

  local git_status = vim.b[utils.stbufnr()].gitsigns_status_dict

  local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
  local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
  local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
  local branch_name = " "
    .. (string.len(git_status.head) < 20 and git_status.head or string.sub(git_status.head, 1, 20) .. "…")

  return branch_name .. added .. changed .. removed
end

M.mode_custom = function()
  if not utils.is_activewin() then
    return ""
  end

  local modes = utils.modes
  local m = vim.api.nvim_get_mode().mode

  return " " .. gen_block(modes[m][1], "%#St_" .. modes[m][2] .. "Mode#", "%#St_" .. modes[m][2] .. "ModeSep#")
end

M.git_custom = function()
  return "%#St_gitIcons#" .. git()
end

M.lsp_custom = function()
  local lsp_text = lsp()
  if lsp_text == "" then
    return lsp_text
  else
    return gen_block(lsp_text, "%#St_lsp_bg#", "%#St_lsp_sep#", " ", "%#St_lsp_bg#") .. " "
  end
end

M.cursor_custom = function()
  local current_line = vim.api.nvim_win_get_cursor(0)[1]
  local buffer_count_rows = vim.api.nvim_buf_line_count(0)

  local cursor_line = string.format("%0" .. string.len(buffer_count_rows) .. "d", current_line)
  return " " .. gen_block(cursor_line, "%#St_Pos_bg#", "%#St_Pos_sep#", " ", "%#St_Pos_bg#") .. " "
end

return M
