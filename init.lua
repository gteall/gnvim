require("options")
require("keymaps")
require("autocmds")
require("plugins")

-- 插件配置
require("plugins.editor")
require("plugins.default")
require("plugins.ui")
require("plugins.neo-tree")
require("plugins.bufferline")
require("plugins.lualine")
require("plugins.dashboard")
require("plugins.telescope")
require("plugins.nvim-treesitter")
-- require("plugin-confi.indent-blankline")
require("plugins.cmp")
-- 内置LSP
require("plugins.lsp")
-- 格式化
-- require("lsp.formatter")
-- require("lsp.null-ls")
require("plugins.gitsigns")
