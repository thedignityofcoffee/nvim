return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    config = function()
      local dashboard_theme = require "alpha.themes.dashboard"

      -- Header Section
      local logo = [[
 ██████   █████              ███                 
░░██████ ░░███              ░░░                  
 ░███░███ ░███  █████ █████ ████  █████████████  
 ░███░░███░███ ░░███ ░░███ ░░███ ░░███░░███░░███ 
 ░███ ░░██████  ░███  ░███  ░███  ░███ ░███ ░███ 
 ░███  ░░█████  ░░███ ███   ░███  ░███ ░███ ░███ 
 █████  ░░█████  ░░█████    █████ █████░███ █████
░░░░░    ░░░░░    ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ 

                              
  ]]

      dashboard_theme.section.header.val = vim.split(logo, "\n")
      dashboard_theme.section.header.opts.hl = "AlphaHeaderGreen"
      vim.api.nvim_set_hl(0, "AlphaHeaderGreen", { fg = "#50fa7b", bold = true })

      -- Buttons Section
      dashboard_theme.section.buttons.val = {
      dashboard_theme.button("<leader>ff", " Find Files", "<cmd>Telescope find_files<CR>"),
      dashboard_theme.button("<leader>fg", " Live Grep", "<cmd>Telescope live_grep<CR>"),
      dashboard_theme.button("<leader>fb", " Buffers", "<cmd>Telescope buffers<CR>"),
      dashboard_theme.button("<leader>fh", " Help Tags", "<cmd>Telescope help_tags<CR>"),
      dashboard_theme.button("n",          " New File", "<cmd>ene <BAR> startinsert<CR>"),
      dashboard_theme.button("<leader>q",  " Quit", "<cmd>q<CR>"),
      dashboard_theme.button("<leader>cn", " Config", "<cmd>edit $MYVIMRC<CR> | <cmd>cd " .. vim.fn.stdpath("config") .. "<CR>"),
      }
 

      dashboard_theme.section.buttons.opts.hl = "AlphaButtons"


      -- Layout
      dashboard_theme.opts.layout = {
        { type = "padding", val = 4 }, -- Upper margin
        dashboard_theme.section.header,
        { type = "padding", val = 2 }, -- Space between logo and buttons
        dashboard_theme.section.buttons,
        { type = "padding", val = 1 }, -- Space between buttons and recent files
        dashboard_theme.section.footer,
      }

      -- Lazy Loading
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "AlphaReady",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      -- Set the dashbaord
      require("alpha").setup(dashboard_theme.opts)

      -- Draw Footer After Startup
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)

          -- Footer
          dashboard_theme.section.footer.val = "⚡ Neovim loaded "
            .. stats.loaded
            .. "/"
            .. stats.count
            .. " plugins in "
            .. ms
            .. "ms"
          pcall(vim.cmd.AlphaRedraw)
          dashboard_theme.section.footer.opts.hl = "AlphaFooter"
        end,
      })
    end,
  },
}
