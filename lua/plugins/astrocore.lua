-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = false, -- disable autopairs at start
      cmp = false, -- disable completion at start
      diagnostics_mode = 0, -- disable diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = false, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        editorconfig = false, -- sets vim.opt.editorconfig
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- mappings for toggling editor config
        ["<leader>ue"] = {
          function()
            -- vim.g.cmp_disable == nil is treated as false
            local notify = require("astrocore").notify
            vim.g.editorconfig = vim.g.editorconfig == false
            if vim.g.editorconfig then
              notify "Enabled editorconfig"
            else
              notify "Disabled editorconfig"
            end
          end,
          desc = "Toggle editorconfig †",
        },

        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
      i = {
        -- mappings for jk to <ESC> equivalents
        ["jk"] = { "<esc>", desc = "Exit insert-mode †" },
      },
      -- mappings for jk and <esc><esc> to <C-\\><C-n> equivalents
      -- Single <esc> may be used by some terminal program
      t = {
        ["jk"] = { "<C-\\><C-n>", desc = "Exit term-mode †" },
        ["<esc><esc>"] = { "<C-\\><C-n>", desc = "Exit term-mode †" },
      },
    },
  },
}
