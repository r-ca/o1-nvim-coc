-- 基本設定
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.termguicolors = true
vim.o.updatetime = 300
vim.o.signcolumn = 'yes'
vim.o.ignorecase = true
vim.o.smartcase = true

-- leaderキー設定
vim.g.mapleader = ' '

-- lazy.nvim 初期セットアップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- プラグインロード
require("lazy").setup("plugins", {
  ui = { border = "rounded" },
  defaults = { lazy = false }
})

-- 各種設定読み込み
require('config.coc')
require('config.telescope')
require('config.treesitter')
require('config.feline')
require('config.which-key')
require('config.gitsigns')
require('config.indent-blankline')
require('config.hop')
require('config.dap')
require('config.nvim-tree')

-- 基本のキーマップ
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'ファイル検索' })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = '全文検索' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'バッファ一覧' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'ヘルプ検索' })

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'ファイルツリーをトグル' })

-- coc.nvim関連ショートカット
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent=true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent=true })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent=true })
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)', { desc = '変数名リネーム' })
vim.keymap.set('n', '<leader>cd', ':CocDiagnostics<CR>', { desc = '診断表示' })

-- hop.nvim移動
vim.keymap.set('', '<leader>w', ':HopWord<CR>', { desc = '単語ジャンプ' })
vim.keymap.set('', '<leader>l', ':HopLine<CR>', { desc = '行ジャンプ' })

-- dap.nvimによるデバッグ用キー
vim.keymap.set('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", { desc = 'ブレークポイント切替' })
vim.keymap.set('n', '<leader>dc', ":lua require'dap'.continue()<CR>", { desc = 'デバッグ継続' })
vim.keymap.set('n', '<leader>dn', ":lua require'dap'.step_over()<CR>", { desc = 'ステップオーバー' })
vim.keymap.set('n', '<leader>di', ":lua require'dap'.step_into()<CR>", { desc = 'ステップイント' })
vim.keymap.set('n', '<leader>do', ":lua require'dap'.step_out()<CR>", { desc = 'ステップアウト' })
vim.keymap.set('n', '<leader>dr', ":lua require'dap'.repl.toggle()<CR>", { desc = 'REPLトグル' })

-- ウィンドウ間移動のキーマップ
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = '左のウィンドウへ移動' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = '右のウィンドウへ移動' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = '下のウィンドウへ移動' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = '上のウィンドウへ移動' })
