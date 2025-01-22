return {
  {
    "williamboman/mason.nvim",
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  opts = {
    ensure_installed = {
      "gopls",
      "clangd",
      "css-lsp",
      "deno",
      "elixir",
      "heex",
      "gofumpt",
      "goimports-reviser",
      "golines",
      "html-lsp",
      "lua-language-server",
      "pyright",
      "stylua",
      "tailwindcss-language-server",
      "yaml-language-server",
      "zls",
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvchad/ui",
    config = {
      ui = {
        cmp = {
          icons = true,
          lspkind_text = true,
          style = "default", -- default/flat_light/flat_dark/atom/atom_colored
        },

        telescope = { style = "bordered" }, -- borderless / bordered

        statusline = {
          theme = "default", -- default/vscode/vscode_colored/minimal
          -- default/round/block/arrow separators work only for default statusline theme
          -- round and block will work for minimal theme only
          separator_style = "default",
          order = nil,
          modules = nil,
        },

        -- lazyload it when there are 1+ buffers
        tabufline = {
          enabled = true,
          lazyload = true,
          order = { "treeOffset", "buffers", "tabs", "btns" },
          modules = nil,
        },

        nvdash = {
          load_on_startup = true,

          header = {
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
          },

          buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
          },
        },
      },
    },
  },
  {
    "andweeb/presence.nvim",
  },
}
