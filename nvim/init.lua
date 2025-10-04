local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "{", "{}<Esc>ha", opts)
vim.keymap.set("i", "(", "()<Esc>ha", opts)
vim.keymap.set("i", "[", "[]<Esc>ha", opts)
vim.keymap.set("i", "\"", "\"\"<Esc>ha", opts)
vim.keymap.set("i", "'", "''<Esc>ha", opts)
vim.keymap.set("i", "`", "``<Esc>ha", opts)
vim.keymap.set("n", "<C-d>","<C-d>zz", opts)
vim.keymap.set("n", "<C-u>","<C-u>zz", opts)
