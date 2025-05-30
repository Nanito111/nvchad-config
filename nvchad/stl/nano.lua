local config = require("nvconfig").ui.statusline
local sep_style = config.separator_style
local utils = require "nvchad.stl.utils"

sep_style = (sep_style ~= "round" and sep_style ~= "block") and "block" or sep_style

local separators = (type(sep_style) == "table" and sep_style) or utils.separators[sep_style]

local sep_l = separators["left"]
local sep_r = separators["right"]

local function gen_block(txt, txt_hl_group, sep_hlgroup, icon, icon_hl_group)
  icon = icon or ""
  icon_hl_group = icon_hl_group or ""
  return sep_hlgroup .. sep_l .. icon_hl_group .. icon .. txt_hl_group .. txt .. sep_hlgroup .. sep_r
end

local function lsp_display()
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_clients()) do
      if client.attached_buffers[utils.stbufnr()] then
        return (vim.o.columns > 130 and client.name) or "LSP"
      end
    end
  end

  return ""
end

local function git_display()
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

local M = {}

M.mode = function()
  if not utils.is_activewin() then
    return ""
  end

  local modes = utils.modes
  local m = vim.api.nvim_get_mode().mode

  return " " .. gen_block(modes[m][1], "%#St_" .. modes[m][2] .. "modeText#", "%#St_" .. modes[m][2] .. "ModeSep#")
end

M.git = function()
  return "%#St_gitIcons#" .. git_display()
end

M.file = function()
  local x = utils.file()
  return gen_block(" " .. x[2], "%#St_file_txt#", "%#St_file_sep#", x[1], "%#St_file_txt#") .. " "
end

M.lsp = function()
  local lsp_text = lsp_display()
  if lsp_text == "" then
    return lsp_text
  else
    return gen_block(lsp_text, "%#St_lsp_txt#", "%#St_lsp_sep#", " ", "%#St_lsp_txt#") .. " "
  end
end

M.lsp_msg = function()
  return "%#St_LspMsg#" .. utils.lsp_msg()
end

M.diagnostics = utils.diagnostics

M.cwd = function()
  local name = vim.uv.cwd()
  name = name:match "([^/\\]+)[/\\]*$" or name
  return gen_block(name, "%#St_cwd_txt#", "%#St_cwd_sep#", "", "%#St_cwd_txt#")
end

M.cursor = function()
  local current_line = vim.api.nvim_win_get_cursor(0)[1]
  local buffer_count_rows = vim.api.nvim_buf_line_count(0)

  local cursor_line = string.format("%0" .. string.len(buffer_count_rows) .. "d", current_line)
  return " " .. gen_block(cursor_line, "%#St_Pos_txt#", "%#St_Pos_sep#", "󰯂 ", "%#St_Pos_txt#") .. " "
end

M["%="] = "%="

return function()
  return utils.generate("default", M)
end
