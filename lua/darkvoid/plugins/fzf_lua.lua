local M = {}

function M.setup(colors)
  -- Define FzFLua highlight groups
  local fzf_lua_hl_groups = {
    FzfLuaNormal = { fg = colors.string, bg = "NONE" },
    FzfLuaBorder = { fg = colors.border, bg = colors.border },
    FzfLuaFzfPrompt = { fg = colors.fg, bg = "NONE" },
    -- TelescopePromptBorder = { fg = colors.border, bg = "NONE" },
    FzfLuaFilePart = { fg = colors.fg, bg = "NONE", gui = "bold" },
    FzfLuaTitle = { fg = colors.fg, bg = "NONE" },
    FzfLuaTabTitle = { fg = colors.fg, bg = "NONE", gui = "bold" },
    FzfLuaFzfInfo = { fg = colors.fg, bg = "NONE" },
    FzfLuaFzfMarker = { fg = colors.bg, bg = colors.visual },
    FzfLuaFzfPointer = { fg = colors.bg, bg = colors.visual, gui = "bold" },
    FzfLuaSearch = { fg = colors.bg, bg = "NONE", gui = "bold" },
  }
  --
  -- Apply FzFLua highlight groups
  for group_name, config in pairs(fzf_lua_hl_groups) do
    local cmd = "highlight " .. group_name
    if config.fg then
      cmd = cmd .. " guifg=" .. config.fg
    end
    if config.bg then
      cmd = cmd .. " guibg=" .. config.bg
    end
    if config.gui then
      cmd = cmd .. " gui=" .. config.gui
    end
    vim.cmd(cmd)
  end
end

return M
