-- グローバル拡張機能の設定
vim.g.coc_global_extensions = {
  'coc-snippets',
  'coc-pairs',
  'coc-json',
  'coc-tsserver',
  'coc-html',
  'coc-css',
  'coc-pyright',
  'coc-yaml',
  'coc-sh',
  'coc-prettier',
}

-- タブ補完の設定
-- <Tab> キーの動作を関数で定義
vim.keymap.set('i', '<Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return vim.api.nvim_replace_termcodes('<C-n>', true, true, true)
  else
    return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
  end
end, { expr = true, noremap = true, silent = true })

-- <S-Tab> キーの動作を関数で定義
vim.keymap.set('i', '<S-Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return vim.api.nvim_replace_termcodes('<C-p>', true, true, true)
  else
    return vim.api.nvim_replace_termcodes('<C-h>', true, true, true)
  end
end, { expr = true, noremap = true, silent = true })

-- ノーマルモードでの定義ジャンプなどのキーマップ
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true, noremap = true, desc = '定義へジャンプ' })
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', { silent = true, noremap = true, desc = '型定義へジャンプ' })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent = true, noremap = true, desc = '実装へジャンプ' })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true, noremap = true, desc = '参照を表示' })

-- 診断表示とリネームのキーマップ
vim.keymap.set('n', '<leader>cd', ':CocDiagnostics<CR>', { silent = true, noremap = true, desc = '診断を表示' })
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)', { silent = true, noremap = true, desc = 'リネーム' })

-- ドキュメント表示をカーソルホールド時に自動表示
vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.fn.CocActionAsync('showDocumentation')
  end,
})

-- フォーマットのキーマップ
vim.keymap.set('n', '<leader>cf', ':CocCommand prettier.formatFile<CR>', { silent = true, noremap = true, desc = 'ファイルをフォーマット' })

-- オートコンプリートと診断のオン・オフを切り替えるキー設定（オプション）
vim.keymap.set('n', '<leader>co', ':CocEnable<CR>', { silent = true, noremap = true, desc = 'Cocを有効化' })
vim.keymap.set('n', '<leader>cd', ':CocDisable<CR>', { silent = true, noremap = true, desc = 'Cocを無効化' })

-- 関数シグネチャの表示（オプション）
vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.fn.CocActionAsync('showSignatureHelp')
  end,
})
