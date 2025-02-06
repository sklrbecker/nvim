local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Navigate Buffers
map("n", "<S-l>", "<CMD>bnext<CR>")
map("n", "<S-h>", "<CMD>bprev<CR>")

-- Formatting
map({ "n", "v" }, "<leader>cf", require("conform").format)

-- Diagnostics
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float)
map("n", "]d", diagnostic_goto(true))
map("n", "[d", diagnostic_goto(false))
map("n", "]e", diagnostic_goto(true, "ERROR"))
map("n", "[e", diagnostic_goto(false, "ERROR"))
map("n", "]w", diagnostic_goto(true, "WARN"))
map("n", "[w", diagnostic_goto(false, "WARN"))
