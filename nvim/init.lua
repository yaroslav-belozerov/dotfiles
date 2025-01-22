vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.o.cursorline = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.clipboard = ""
vim.o.shiftwidth = 4
vim.o.tabstop = 4

require("presence").setup {
  auto_update = true,
  neovim_image_text = "The One True Text Editor",
  main_image = "neovim",
  client_id = "793271441293967371",
  log_level = nil,
  debounce_timeout = 10,
  enable_line_number = false,
  blacklist = {},
  buttons = true,
  file_assets = {},
  show_time = true,

  -- Rich Presence text options
  editing_text = "Editing %s",
  file_explorer_text = "Browsing %s",
  git_commit_text = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text = "Reading %s",
  workspace_text = "Working on %s",
  line_number_text = "Line %s out of %s",
}

vim.schedule(function()
  require "mappings"
end)
