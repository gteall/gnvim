require('leap').add_default_mappings()
require('flit').setup {
    keys = { f = 'f', F = 'F', t = 't', T = 'T' },
    -- A string like "nv", "nvo", "o", etc.
    labeled_modes = "v",
    multiline = true,
    -- Like `leap`s similar argument (call-specific overrides).
    -- E.g.: opts = { equivalence_classes = {} }
    opts = {}
}
require("mini.comment").setup()
require("mini.animate").setup()
-- require("mini.indentscope").setup()
require('trouble').setup()
require("noice").setup()
require('illuminate').configure{}
require('gitsigns').setup()
require('todo-comments').setup()
require("which-key").setup()
require("symbols-outline").setup()
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}
-- require('dashboard').setup()
require('spectre').setup()
