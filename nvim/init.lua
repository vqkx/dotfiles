vim.pack.add(
   {
      "https://github.com/edeneast/nightfox.nvim"
   }, { confirm = false }
)
vim.cmd.colorscheme("nightfox")
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.autoindent     = true
vim.opt.cindent        = true
vim.opt.tabstop        = 3
vim.opt.shiftwidth     = 3
vim.opt.expandtab      = true
vim.opt.termguicolors  = true
vim.opt.showmode       = false
vim.opt.pumwidth       = 0
vim.opt.signcolumn     = "yes"
vim.opt.completeopt:append({ "menuone", "noselect" })

vim.api.nvim_create_autocmd("TextYankPost", { callback = function() vim.hl.on_yank() end })

vim.lsp.config("clangd", {
   cmd = {
      "clangd",
      "--background-index",
      "--header-insertion=never",
      "--header-insertion-decorators=0",
      "--completion-style=bundled",
      "--function-arg-placeholders=0"
   },
   root_markers = { ".git", "CMakeLists.txt", "Makefile", "compile_commands.json" },
   filetypes = { "c", "cpp" }
})

vim.lsp.enable({ "clangd" })
