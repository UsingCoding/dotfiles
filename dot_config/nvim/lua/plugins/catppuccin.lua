return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false, -- load during startup
  priority = 1000, -- load before other UI plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = true,
      integrations = {
        treesitter = true,
        native_lsp = { enabled = true },
        telescope = true,
        mason = true,
        which_key = true,
        gitsigns = true,
        nvimtree = true,
        -- add more if you use them
      },
    })

    -- Persisted theme (applied every startup)
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
