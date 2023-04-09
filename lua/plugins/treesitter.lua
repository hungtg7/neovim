----------------
-- Treesitter --
----------------

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { -- one of "all" or a list of languages
    "bash",
    "cmake",
    "comment",
    "css",
    "dockerfile",
    "go",
    "gomod",
    "gowork",
    "graphql",
    "hcl",
    "html",
    "http",
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "make",
    "proto",
    "pug",
    "python",
    "regex",
    "ruby",
    "rust",
    "scss",
    "svelte",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  -- ignore_install = { 
  --   "norg",
  --   "phpdoc"
  -- }, -- List of parsers to ignore installing
  autopairs = { enable = true },
  indent = { 
    enable = true, 
    disable = {},
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    colors = {
      "Gold",
      "Orchid",
      "DodgerBlue",
      -- "Cornsilk",
      -- "Salmon",
      -- "LawnGreen",
    },
    disable = { "html" },
  },
  autotag = {
    enable = true,
    disable = { "xml" },
  },
}

