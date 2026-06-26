return {
  {
    "iamironz/android-nvim-plugin",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      -- LazyVim style keymaps for easy project navigation
      { "<leader>ka", "<cmd>AndroidOpen<cr>", desc = "KMP/Android Actions" },
      { "<leader>kd", "<cmd>AndroidDevices<cr>", desc = "Select Device/Target" },
      { "<leader>kr", "<cmd>AndroidRun<cr>", desc = "Run KMP App" },
      { "<leader>kl", "<cmd>AndroidLogcat<cr>", desc = "View Live Logcat Logs" },
    },
    config = function()
      require("android").setup({})
    end,
  },
}
