return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          highlight = "Directory",
          text = "Neo-Tree",
          separator = true, -- use a "true" to enable the default, or set your own character
        },
      },
    },
  },
}
