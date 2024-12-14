return {
  -- 言語支援
  {
    "neoclide/coc.nvim",
    branch = "release"
  },

  -- ファジーファインダー
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies = { "nvim-telescope/telescope.nvim" }
  },

  -- シンタックスハイライト
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- ステータスライン
  {
    "feline-nvim/feline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },

  -- キーバインドヘルプ
  {
    "folke/which-key.nvim"
  },

  -- ファイルツリー
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },

  -- Gitインテグレーション
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim"
  },

  -- コメント機能
  {
    "tpope/vim-commentary"
  },

  -- インデントガイド
  {
    "lukas-reineke/indent-blankline.nvim",
    version = "2.*",
  },

  -- 高速ナビゲーション
  {
    "phaazon/hop.nvim",
    branch = "v2"
  },

  -- デバッグサポート
  {
    "mfussenegger/nvim-dap"
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
  },
  {
    "nvim-neotest/nvim-nio" -- 新規追加
  },
  -- テーマ
  {
    "gruvbox-community/gruvbox"
  }
}
