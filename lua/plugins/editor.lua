local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- bufremove
require("mini.bufremove").setup()

map("n", "<leader>bd",
  function()
    require("mini.bufremove").delete(0, false)
  end, { desc = "Delete Buffer" })
map("n", "<leader>bD",
  function()
    require("mini.bufremove").delete(0, true)
  end, { desc = "Delete Buffer (Force)" })


require("mini.surround").setup{
  -- Add custom surroundings to be used on top of builtin ones. For more
  -- information with examples, see `:h MiniSurround.config`.
  custom_surroundings = nil,

  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = 'gza', -- Add surrounding in Normal and Visual modes
    delete = 'gzd', -- Delete surrounding
    find = 'gzf', -- Find surrounding (to the right)
    find_left = 'gzF', -- Find surrounding (to the left)
    highlight = 'gzh', -- Highlight surrounding
    replace = 'gzr', -- Replace surrounding
    update_n_lines = 'gzn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- Whether to respect selection type:
  -- - Place surroundings on separate lines in linewise mode.
  -- - Place surroundings on each line in blockwise mode.
  respect_selection_type = false,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
  -- see `:h MiniSurround.config`.
  search_method = 'cover',

  -- Whether to disable showing non-error feedback
  silent = false,
}

map("n", "<leader>sr", function() require("spectre").open() end, { desc = "Replace in files (Spectre)" } )


map("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", { desc = "Document Diagnostics (Trouble)" })
map("n", "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", { desc = "Workspace Diagnostics (Trouble)" })
map("n", "<leader>xL", "<cmd>TroubleToggle loclist<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>", { desc = "Quickfix List (Trouble)" })
map("n", "[q",
  function()
    if require("trouble").is_open() then
      require("trouble").previous({ skip_groups = true, jump = true })
    else
      local ok, err = pcall(vim.cmd.cprev)
      if not ok then
        vim.notify(err, vim.log.levels.ERROR)
      end
    end
  end,
  { desc = "Previous trouble/quickfix item"})
map("n", "]q",
  function()
    if require("trouble").is_open() then
      require("trouble").next({ skip_groups = true, jump = true })
    else
      local ok, err = pcall(vim.cmd.cnext)
      if not ok then
        vim.notify(err, vim.log.levels.ERROR)
      end
    end
  end,
  { desc = "Next trouble/quickfix item"})

local function illuminate_map(key, dir, buffer)
  vim.keymap.set("n", key, function()
    require("illuminate")["goto_" .. dir .. "_reference"](false)
  end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
end

illuminate_map("]]", "next")
illuminate_map("[[", "prev")

