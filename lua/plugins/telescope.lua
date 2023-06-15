-- local status, telescope = pcall(require, "telescope")
-- if not status then
--   vim.notify("没有找到 telescope")
--   return
-- end
--
-- -- local actions = require("telescope.actions")
-- telescope.setup({
--   defaults = {
--     -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
--     initial_mode = "insert",
--     -- vertical , center , cursor
--     layout_strategy = "horizontal",
--     -- 窗口内快捷键
--     mappings = require("keybindings").telescopeList,
--   },
--   pickers = {
--     find_files = {
--       -- theme = "dropdown", -- 可选参数： dropdown, cursor, ivy
--     },
--   },
--   extensions = {
--     ["ui-select"] = {
--       require("telescope.themes").get_dropdown({
--         -- even more opts
--       }),
--     },
--   },
-- })
--
-- pcall(telescope.load_extension, "env")
-- -- To get ui-select loaded and working with telescope, you need to call
-- -- load_extension, somewhere after setup function:
-- pcall(telescope.load_extension, "ui-select")


local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<leader>,",  "<cmd>Telescope buffers show_all_buffers=true<cr>", {desc = "Switch Buffer"})
map("n", "<leader>/",  "<cmd>Telescope live_grep<cr>" , {desc = "Grep (root dir)"})
map("n", "<leader>:", "<cmd>Telescope command_history<cr>", { desc = "Command History" })
map("n", "<leader><space>", "<cmd>Telescope fd<cr>", { desc = "Find Files (root dir)" })
-- find
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>ff",  "<cmd>Telescope fd<cr>", { desc = "Find Files (root dir)" })
-- map("n", "<leader>fF", Util.telescope("files", { cwd = false }), { desc = "Find Files (cwd)" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent" })
-- map("n", "<leader>fR", Util.telescope("oldfiles", { cwd = vim.loop.cwd() }), { desc = "Recent (cwd)" })
-- git
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "status" })
-- search
map("n", "<leader>sa", "<cmd>Telescope autocommands<cr>", { desc = "Auto Commands" })
map("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Buffer" })
map("n", "<leader>sc", "<cmd>Telescope command_history<cr>", { desc = "Command History" })
map("n", "<leader>sC", "<cmd>Telescope commands<cr>", { desc = "Commands" })
map("n", "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document diagnostics" })
map("n", "<leader>sD", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace diagnostics" })
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Grep (root dir)" })
-- map("n", "<leader>sG", Util.telescope("live_grep", { cwd = false }), { desc = "Grep (cwd)" })
map("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "Help Pages" })
map("n", "<leader>sH", "<cmd>Telescope highlights<cr>", { desc = "Search Highlight Groups" })
map("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "Key Maps" })
map("n", "<leader>sM", "<cmd>Telescope man_pages<cr>", { desc = "Man Pages" })
map("n", "<leader>sm", "<cmd>Telescope marks<cr>", { desc = "Jump to Mark" })
map("n", "<leader>so", "<cmd>Telescope vim_options<cr>", { desc = "Options" })
map("n", "<leader>sR", "<cmd>Telescope resume<cr>", { desc = "Resume" })
map("n", "<leader>sw", "<cmd>Telescope grep_string<cr>", { desc = "Word (root dir)" })
-- map("n", "<leader>sW", Util.telescope("grep_string", { cwd = false }), { desc = "Word (cwd)" })
-- map("n", "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), { desc = "Colorscheme with preview" })

