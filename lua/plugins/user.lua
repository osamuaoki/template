-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Precognition
  -- copied from astrocommunity.Workflow.precognition-nvim and add opts
  {
    -- "tris203/precognition.nvim",
    "osamuaoki/precognition.nvim",
    event = "User AstroFile",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          maps.n["<Leader>uP"] = {
            function()
              local precognition = require "precognition"
              local notify = require("astrocore").notify
              precognition.toggle()
              if precognition.visible() then
                notify "Enabled precognition"
              else
                notify "Disabled precognition"
              end
            end,
            desc = "Toggle precognition †",
          }
        end,
      },
    },
    opts = {
      -- override default opts for precognition to start invisible
      startVisible = false,
    },
  },
  -- add unicode code point display to statusline
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astroui.status"
      -- add unicode codepoint indicator to last statusline indicator
      opts.statusline[#opts.statusline] = status.component.builder {
        provider = "[+U%02B]",
        hl = status.hl.get_attributes "mode", -- highlight based on mode attributes
        surround = { separator = "right", color = status.hl.mode_bg }, -- background highlight based on mode
      }
    end,
  },
  { "max397574/better-escape.nvim", enabled = false },
}
