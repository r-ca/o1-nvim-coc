↓ChatGPT 4oが書いた説明

# My Neovim Configuration

このリポジトリは、NeovimをIDEライクに使用するための設定を提供します。言語補完や快適なナビゲーション、視覚的な補助機能を活用して、効率的な開発環境を構築しています。

---

## 主な特徴

### **基本機能**
- **言語補完**: `coc.nvim` による多言語対応補完 (`coc-tsserver`, `coc-pyright` など)
- **ウィンドウ移動**: キー操作でのスムーズなウィンドウ間移動
- **バッファ管理**: バッファ一覧を表示し、簡単に切り替え・閉じる操作が可能
- **スクロールアニメーション**: 視覚的にスムーズなスクロール体験
- **インデントガイド**: コードのインデントを視覚的に補助

---

## インストール

1. **Neovimのインストール**
   Neovim 0.8以上をインストールしてください。

2. **リポジトリのクローン**
   このリポジトリを `~/.config/nvim` にクローンします:
   ```bash
   git clone https://example.com/my-neovim-config.git ~/.config/nvim
   ```

3. **依存関係のインストール**
   必要なプラグインは初回起動時に自動インストールされます:
   ```vim
   :Lazy sync
   ```

4. **Pythonホストのセットアップ**
   `coc.nvim` で Python を使用する場合、以下を実行してください:
   ```bash
   pip3 install pynvim
   ```

---

## 機能とキーマップ

### **ウィンドウ移動**
| キー            | 説明                     |
| :-------------- | :----------------------- |
| `<C-h>`         | 左のウィンドウへ移動     |
| `<C-l>`         | 右のウィンドウへ移動     |
| `<C-j>`         | 下のウィンドウへ移動     |
| `<C-k>`         | 上のウィンドウへ移動     |

---

### **バッファ管理**
| キー            | 説明                     |
| :-------------- | :----------------------- |
| `<leader>bp`    | 前のバッファへ移動       |
| `<leader>bn`    | 次のバッファへ移動       |
| `<leader>bc`    | 現在のバッファを閉じる   |

---

### **スクロールアニメーション**
スクロール時にスムーズなアニメーションが有効です。

---

### **インデントガイド**
コードのインデントレベルを視覚的に補助します。

---

## 使用プラグイン

### **主要プラグイン**
- [`coc.nvim`](https://github.com/neoclide/coc.nvim): 言語補完とLSPサポート
- [`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim): インデントガイド
- [`karb94/neoscroll.nvim`](https://github.com/karb94/neoscroll.nvim): スムーズスクロール
- [`romgrk/barbar.nvim`](https://github.com/romgrk/barbar.nvim): バッファライン表示

### **その他のプラグイン**
- [`lazy.nvim`](https://github.com/folke/lazy.nvim): プラグインマネージャー
- [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons): アイコン表示

---

## ディレクトリ構成

```
~/.config/nvim/
├─ init.lua
├─ lua/
│   ├─ plugins.lua
│   └─ config/
│       ├─ coc.lua
│       ├─ indent-blankline.lua
│       ├─ neoscroll.lua
│       ├─ barbar.lua
```

---

## 今後の改善予定
- より多くのプラグインサポート
- カスタムテーマの統合
- デバッグサポートの強化 (`nvim-dap`)


↑ここまで
