lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "ms-jpq/coq_nvim",
    "ms-jpq/coq.artifacts",
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "Mofiqul/dracula.nvim",
    "kylechui/nvim-surround",
    "windwp/nvim-autopairs",
    "CRAG666/code_runner.nvim",
    "nvim-lualine/lualine.nvim",
    "utilyre/barbecue.nvim",
    "SmiteshP/nvim-navic",
    "williamboman/nvim-lsp-installer",
    "lewis6991/gitsigns.nvim",
    "andweeb/presence.nvim",
    {
    	"ngtuonghy/live-server-nvim",
    	event = "VeryLazy",
    	build = ":LiveServerInstall",
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
})


vim.cmd[[colorscheme dracula-soft]]

require("live-server-nvim").setup{}
require'nvim-autopairs'.setup{}
require'nvim-surround'.setup{}
require'code_runner'.setup{}
require("nvim-lsp-installer").setup{}
require('gitsigns').setup()
require("presence").setup({
    -- General options
    auto_update         = true,
    neovim_image_text   = "The One True Text Editor",
    main_image          = "debug",
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,

    -- Rich Presence text options
    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
   line_number_text    = "Line %s out of %s",
})

local coq = require("coq")
--require'lspconfig'.jedi_language_server.setup{}
----require'lspconfig'.jedi_language_server.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.tailwindcss.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.eslint.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.pyright.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.clangd.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.lua_ls.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.zls.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.html.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.emmet_ls.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.cssls.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.kotlin_language_server.setup(coq.lsp_ensure_capabilities())
require'lspconfig'.gopls.setup(coq.lsp_ensure_capabilities())

local tele = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', tele.find_files, {})
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', {})

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.relativenumber = true
vim.o.scrolloff = 30

vim.cmd([[COQnow]])
