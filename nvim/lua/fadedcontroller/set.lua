vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- relative numbers

-- tab
local tabsize = 2
vim.opt.tabstop = tabsize
vim.opt.softtabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.expandtab = true

-- indent
vim.opt.smartindent = true

-- text wrap
vim.opt.wrap = false

-- swap file
vim.opt.swapfile = false -- WILL USE MEMORY, BE CAREFUL
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.js", "*.ts", "*.tsx", "*.jsx", "*.json"},
  callback = function ()
    vim.api.nvim_command("Neoformat")
  end
})
