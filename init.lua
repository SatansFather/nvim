-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd('set cinkeys-=:')
--vim.cmd('silent! KanagawaCompile')

vim.cmd('colorscheme kanagawa-wave')
require'lspconfig'.glsl_analyzer.setup{}
