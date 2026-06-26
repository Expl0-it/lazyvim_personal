return {
  -- 1. Ensure Mason installs the correct official LSP
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "kotlin-lsp" })
    end,
  },

  -- 2. Hook up kotlin.nvim to handle JetBrains custom LSP commands
  {
    "AlexandrosAlexiou/kotlin.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    -- LazyVim integrates this smoothly with blink.cmp / nvim-cmp
    config = true,
  },

  -- 3. Configure lspconfig to launch kotlin-lsp instead of the community one
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable the default, crash-prone language server
        kotlin_language_server = { autostart = false },
        -- Enable the official JetBrains engine
        kotlin_lsp = {},
      },
    },
  },
}
