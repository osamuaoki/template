-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- add bash language pack
  { import = "astrocommunity.pack.bash" },
  -- add cpp language pack
  { import = "astrocommunity.pack.cpp" },
  -- add lua language pack
  { import = "astrocommunity.pack.lua" },
  -- add markdown language pack
  { import = "astrocommunity.pack.markdown" },
  -- add python language pack
  { import = "astrocommunity.pack.python-ruff" },
  -- add toml language pack
  { import = "astrocommunity.pack.toml" },
  -- add yaml language pack
  { import = "astrocommunity.pack.yaml" },
  -- add mode text to statusline
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  -- change statusline design to nvchad (no abs line#:col#, incompatible with above)
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- add winbar with code context (breadcrumbs.nvim)
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
}
