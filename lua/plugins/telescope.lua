return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "Fuzzy find files in cwd" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",   desc = "Fuzzy find recent files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",     desc = "Fuzzy string in cwd" },
    { "<leader>fs", "<cmd>Telescope git_status<cr>",  desc = "Fuzzy string under cursor in cwd" },
    { "<leader>fc", "<cmd>Telescope git commits<cr>", desc = "Fuzzy todos" },
  },
}
