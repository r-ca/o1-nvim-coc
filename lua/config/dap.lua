local dap = require('dap')

-- ここで利用言語にあわせたDAPの設定を行う
-- 例: Node.js用のDAPアダプタ設定
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.local/share/nvim/dapinstall/jsnode/vscode-node-debug2/out/src/nodeDebug.js'},
}

dap.configurations.javascript = {
  {
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
  },
}

-- DAP UI設定
require("dapui").setup()
-- デバッグ開始時にUI自動オープン
dap.listeners.after.event_initialized["dapui_config"] = function()
  require("dapui").open()
end
-- 終了時にUIクローズ
dap.listeners.before.event_terminated["dapui_config"] = function()
  require("dapui").close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  require("dapui").close()
end
