-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  paccker_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
  function(use)
    -- Packer 可以升级自己
    use("wbthomason/packer.nvim")

    -------------------------- plugins -------------------------------------------
    --
    -- use {
    --     'goolord/alpha-nvim',
    --     config = function ()
    --         require'alpha'.setup(require'alpha.themes.dashboard'.config)
    --     end
    -- }
    
    use {
        'glepnir/dashboard-nvim',
        requires = {'nvim-tree/nvim-web-devicons'}
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    -- bufferline
    use({
      "akinsho/bufferline.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })

    -- lualine
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- leap
    use({"ggandor/leap.nvim",
      -- config = function ()
      --     require('leap').add_default_mappings()
      -- end
    })

    -- repeat
    use("tpope/vim-repeat")

    -- flit
    use({
      "ggandor/flit.nvim",
      -- config = function ()
      --     require('flit').setup {
      --         keys = { f = 'f', F = 'F', t = 't', T = 'T' },
      --         -- A string like "nv", "nvo", "o", etc.
      --         labeled_modes = "v",
      --         multiline = true,
      --         -- Like `leap`s similar argument (call-specific overrides).
      --         -- E.g.: opts = { equivalence_classes = {} }
      --         opts = {}
      --     }
      -- end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    })

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'echasnovski/mini.nvim'}

    use {'echasnovski/mini.comment'}

    use {'echasnovski/mini.animate'}

    use {'echasnovski/mini.indentscope'}

    use {'echasnovski/mini.bufremove'}

    use {'echasnovski/mini.surround'}

    use {"folke/trouble.nvim",
        -- config = function ()
        --     require('trouble').setup()
        -- end
    }

    use {'rcarriga/nvim-notify',
        -- config = function()
        --     require("nvim-notify").setup()
        -- end
    }

    use {'folke/noice.nvim',
        requires = {
            {"MunifTanjim/nui.nvim"},
            {"rcarriga/nvim-notify"},
        },
        -- config = function()
        --     require("noice").setup()
        -- end
    }

    use {"neovim/nvim-lspconfig"}
    use {"williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim"}

    -- use("arkav/lualine-lsp-progress")
    -- -- telescope
    -- use({
    --   "nvim-telescope/telescope.nvim",
    --   requires = { "nvim-lua/plenary.nvim" },
    -- })
    -- -- telescope extensions
    -- use("LinArcX/telescope-env.nvim")
    -- use("nvim-telescope/telescope-ui-select.nvim")
    -- -- dashboard-nvim
    -- use("glepnir/dashboard-nvim")
    -- -- project
    -- use("ahmedkhalf/project.nvim")
    -- -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- -- Snippet 引擎
    -- use("hrsh7th/vim-vsnip")
    -- -- 补全源
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- For luasnip users.
    -- use 'L3MON4D3/LuaSnip'
    -- use 'saadparwaiz1/cmp_luasnip'
    --
    -- For ultisnips users.
    -- use 'SirVer/ultisnips'
    -- use 'quangnguyen30192/cmp-nvim-ultisnips'
    --
    -- For snippy users.
    -- use 'dcampos/nvim-snippy'
    -- use 'dcampos/cmp-snippy'


    use('RRethy/vim-illuminate')
        -- config = function()
        --     require('illuminate').configure{}
        -- end
    -- require('illuminate').configure{}

    use('dstein64/vim-startuptime')

    use {'stevearc/dressing.nvim'}

    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }

    use 'simrat39/symbols-outline.nvim'

    use {
        'lewis6991/gitsigns.nvim',
        -- config = function()
        --     require('gitsigns').setup()
        -- end
    }

    use {
        "folke/todo-comments.nvim",
        -- config = function ()
        --     require('todo-comments').setup()
        -- end
    }

    use "lukas-reineke/indent-blankline.nvim"

    use 'nvim-pack/nvim-spectre'

    -- -- 常见编程语言代码段
    -- use("rafamadriz/friendly-snippets")
    -- -- UI 增强
    -- use("onsails/lspkind-nvim")
    -- use("tami5/lspsaga.nvim")
    -- -- 代码格式化
    -- use("mhartington/formatter.nvim")
    -- use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- -- TypeScript 增强
    -- use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    -- -- Lua 增强
    -- use("folke/lua-dev.nvim")
    -- -- JSON 增强
    -- use("b0o/schemastore.nvim")
    -- -- Rust 增强
    -- use("simrat39/rust-tools.nvim")
    -- --------------------- colorschemes --------------------
    -- -- tokyonight
    use("folke/tokyonight.nvim")
    -- Using Packer:
    use 'Mofiqul/dracula.nvim'
    -- -- OceanicNext
    -- use("mhartington/oceanic-next")
    -- -- gruvbox
    -- use({
    --   "ellisonleao/gruvbox.nvim",
    --   requires = { "rktjmp/lush.nvim" },
    -- })
    -- -- zephyr
    -- -- use("glepnir/zephyr-nvim")
    -- -- nord
    -- use("shaunsingh/nord.nvim")
    -- -- onedark
    -- use("ful1e5/onedark.nvim")
    -- -- nightfox
    -- use("EdenEast/nightfox.nvim")

    -- which-key
    use {
        "folke/which-key.nvim",
        -- config = function()
        --     vim.o.timeout = true
        --     vim.o.timeoutlen = 300
        --     require("which-key").setup {
        --         -- your configuration comes here
        --         -- or leave it empty to use the default settings
        --         -- refer to the configuration section below
        --     }
        -- end
    }

    if paccker_bootstrap then
      packer.sync()
    end
  end,
  config = {
    -- 锁定插件版本在snapshots目录
    -- snapshot_path = require("packer.util").join_paths(vim.fn.stdpath("config"), "snapshots"),
    -- 这里锁定插件版本在v1，不会继续更新插件
    -- snapshot = "v1",

    -- 最大并发数
    -- max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    -- display = {
    -- 使用浮动窗口显示
    --   open_fn = function()
    --     return require("packer.util").float({ border = "single" })
    --   end,
    -- },
  },
})


