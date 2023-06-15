local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

vim.o.background = "dark"--"dark"
-- vim.g.tokyonight_style = "storm" -- day / night
-- 半透明
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
-- local colorscheme = "tokyonight"
-- local colorscheme = "dracula-soft"
vim.cmd[[colorscheme tokyonight]]
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
--   return
-- end

map("c", "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, { desc = "Redirect Cmdline" })
map("n", "<leader>snl", function() require("noice").cmd("last") end, { desc = "Noice Last Message" })
map("n", "<leader>snh", function() require("noice").cmd("history") end, { desc = "Noice History" })
map("n", "<leader>sna", function() require("noice").cmd("all") end, { desc = "Noice All" })
map("n", "<leader>snd", function() require("noice").cmd("dismiss") end, { desc = "Dismiss All" })


local wk = require("which-key")
wk.register({
  -- ["<leader>f"] = { name = "+file" },
  -- ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  -- ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  -- ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
  ["g"] = { name = "+goto" },
  ["gz"] = { name = "+surround" },
  ["]"] = { name = "+next" },
  ["["] = { name = "+prev" },
  ["<leader><tab>"] = { name = "+tabs" },
  ["<leader>b"] = { name = "+buffer" },
  ["<leader>c"] = { name = "+code" },
  ["<leader>f"] = { name = "+file/find" },
  ["<leader>g"] = { name = "+git" },
  ["<leader>gh"] = { name = "+hunks" },
  ["<leader>q"] = { name = "+quit/session" },
  ["<leader>s"] = { name = "+search" },
  ["<leader>u"] = { name = "+ui" },
  ["<leader>w"] = { name = "+windows" },
  ["<leader>x"] = { name = "+diagnostics/quickfix" },
  ["<leader>sn"] = { name = "+noice" },
})
