
local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" } )
map("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp Info" } )
map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" } )
map("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" } )
map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" } )
map("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { desc = "Goto Implementation" } )
map("n", "gy", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Goto T[y]pe Definition" } )
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" } )

-- map("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature Help", has = "signatureHelp" } )
-- map("n", "<c-k>", vim.lsp.buf.signature_help, mode = "i", { desc = "Signature Help", has = "signatureHelp" } )
-- map("n", "]d", M.diagnostic_goto(true), { desc = "Next Diagnostic" } )
-- map("n", "[d", M.diagnostic_goto(false), { desc = "Prev Diagnostic" } )
-- map("n", "]e", M.diagnostic_goto(true, "ERROR"), { desc = "Next Error" } )
-- map("n", "[e", M.diagnostic_goto(false, "ERROR"), { desc = "Prev Error" } )
-- map("n", "]w", M.diagnostic_goto(true, "WARN"), { desc = "Next Warning" } )
-- map("n", "[w", M.diagnostic_goto(false, "WARN"), { desc = "Prev Warning" } )
-- map("n", "<leader>cf", format, { desc = "Format Document", has = "documentFormatting" } )
-- map("n", "<leader>cf", format, { desc = "Format Range", mode = "v", has = "documentRangeFormatting" } )
-- map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action", mode = map("n", n", "v" } ) has = "codeAction" } )

require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = { "lua_ls", "clangd" },
}

local lspconfig = require('lspconfig')

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    -- ["lua_ls"] = function ()
    --     require("lua_ls").setup {}
    -- end,
    --
    -- ["clangd"] = function ()
    --     require("clangd").setup {}
    -- end,
    -- ["lus_ls"] = function()
    --     require'lspconfig'.lua_ls.setup{
    --         settings = {
    --             Lua = {
    --                 diagnostics = {
    --                     globals = { "vim" }
    --                 }
    --             }
    --         }
    --     }
    -- end,
    ["lua_ls"] = function ()
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
}

-- require'lspconfig'.clangd.setup{}
--
-- require'lspconfig'.lua_ls.setup{
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { "vim" }
--             }
--         }
--     }
-- }

local navic = require("nvim-navic")

require("lspconfig").clangd.setup {
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end
}

map("n", "<leader>ss", "<cmd>SymbolsOutline<cr>", { desc = "Toggle SymbolsOutline" })

