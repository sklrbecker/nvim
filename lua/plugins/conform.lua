return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
      python = { "black" },
      go = { "gofumpt" },
    },
    format_on_save = {
      async = false,
      timeout_ms = 1000,
    },
  },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({
          async = false,
          timepout_ms = 1000,
        })
      end,
      desc = "Format file or range (in visual mode)",
    },
  },
}
