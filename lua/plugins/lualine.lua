return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'dracula',
        component_separators = '|',   -- use '|' to divide parts
        section_separators = '',      -- empty for square column
        globalstatus = true,
        always_divide_middle = true,
        always_show_tabline = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
  {
    'filename',
    path = 1,
    fmt = function(name)
      local b = vim.b
      if not b.gitsigns_status_dict then return name end
      local status = b.gitsigns_status_dict
      local added = status.added or 0
      local changed = status.changed or 0
      local removed = status.removed or 0
      local git_status = string.format(' [+%s ~%s -%s]', added, changed, removed)
      return name .. git_status
    end,
  },
},
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end,
}

