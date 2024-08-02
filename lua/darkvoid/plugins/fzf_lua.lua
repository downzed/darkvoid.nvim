local M = {}

function M.setup(colors)
  -- Define FzFLua highlight groups
  local fzf_lua_hl_groups = {
    -- FzfLuaNormal = { fg = colors.border, bg = nil },
    FzfLuaBorder = { fg = colors.border },
    FzfLuaPreviewBorder = { fg = colors.eob },
    FzfLuaTitle = { fg = colors.bg, bg = colors.border },
    FzfLuaPreviewTitle = { fg = colors.bg, bg = colors.border },
    FzfLuaPrompt = { fg = colors.bg, bg = colors.border },
    FzfLuaScroll = { fg = colors.bg, bg = colors.border },
    -- FzfLuaBackdrop = { fg = colors.border, bg = colors.bg },
    -- FzfLuaFilePart = { fg = colors.bg, bg = "NONE", bold = true },
    -- FzfLuaTitle = { fg = colors.bg, bg = "NONE" },
    -- FzfLuaTabTitle = { fg = colors.bg, bg = "NONE", bold = true },
    -- FzfLuaFzfInfo = { fg = colors.bg, bg = "NONE" },
    FzfLuaTabTitle = { fg = colors.visual },
    FzfLuaTabMarker = { fg = colors.visual },
    -- FzfLuaFzfPointer = { fg = colors.bg, bg = colors.visual, bold = true },
    -- FzfLuaSearch = { fg = colors.bg, bg = "NONE", bold = true },
    -- FzfLuaCursorLine = { fg = colors.bg, bg = "NONE", bold = true },

  }
  --
  -- Apply FzFLua highlight groups
  for group_name, config in pairs(fzf_lua_hl_groups) do
    vim.api.nvim_set_hl(0, group_name, config)
  end
end

return M
