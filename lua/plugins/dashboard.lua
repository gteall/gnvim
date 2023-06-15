local db = require("dashboard")



db.setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        -- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        -- {
        --   desc = ' dotfiles',
        --   group = 'Number',
        --   action = 'Telescope dotfiles',
        --   key = 'd',
        -- },
        {
          desc = '󰊳 init.lua',
          group = '@property',
          action = 'edit ~/.config/nvim/init.lua',
          key = 'e'
        }
      },
    },
})


-- db.setup({
--   theme = 'doom',
--   config = {
--     header = {
--       [[]],
--       [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
--       [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
--       [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
--       [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
--       [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
--       [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
--       [[                                                   ]],
--       [[                [ version : 1.0.0 ]                ]],
--     }, --your header
--     center = {
--       {
--         icon = ' ',
--         icon_hl = 'Title',
--         desc = 'Find File           ',
--         desc_hl = 'String',
--         key = 'b',
--         keymap = 'SPC f f',
--         key_hl = 'Number',
--         action = 'lua print(2)'
--       },
--       {
--         icon = ' ',
--         desc = 'Find Dotfiles',
--         key = 'f',
--         keymap = 'SPC f d',
--         action = 'lua print(3)'
--       },
--     },
--     footer = {}  --your footer
--   }
-- })


-- db.custom_footer = {
--   "",
--   "",
--   "https://github.com/nshen/learn-neovim-lua",
-- }
--
-- db.custom_center = {
--   {
--     icon = "  ",
--     desc = "Projects                            ",
--     action = "Telescope projects",
--   },
--   {
--     icon = "  ",
--     desc = "Recently files                      ",
--     action = "Telescope oldfiles",
--   },
--   {
--     icon = "  ",
--     desc = "Edit keybindings                    ",
--     action = "edit ~/.config/nvim/lua/keybindings.lua",
--   },
--   {
--     icon = "  ",
--     desc = "Edit Projects                       ",
--     action = "edit ~/.local/share/nvim/project_nvim/project_history",
--   },
--   -- {
--   --   icon = "  ",
--   --   desc = "Edit .bashrc                        ",
--   --   action = "edit ~/.bashrc",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Change colorscheme                  ",
--   --   action = "ChangeColorScheme",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Edit init.lua                       ",
--   --   action = "edit ~/.config/nvim/init.lua",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Find file                           ",
--   --   action = "Telescope find_files",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Find text                           ",
--   --   action = "Telescopecope live_grep",
--   -- },
-- }
-- db.custom_header = {
--   [[]],
--   [[███╗   ██╗███████╗██╗  ██╗███████╗███╗   ██╗]],
--   [[████╗  ██║██╔════╝██║  ██║██╔════╝████╗  ██║]],
--   [[██╔██╗ ██║███████╗███████║█████╗  ██╔██╗ ██║]],
--   [[██║╚██╗██║╚════██║██╔══██║██╔══╝  ██║╚██╗██║]],
--   [[██║ ╚████║███████║██║  ██║███████╗██║ ╚████║]],
--   [[╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[          ▀████▀▄▄              ▄█ ]],
--   [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
--   [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
--   [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
--   [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
--   [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
--   [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
--   [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
--   [[   █   █  █      ▄▄           ▄▀   ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
--   [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
--   [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
--   [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
--   [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
--   [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
--   [[                                                   ]],
--   [[                [ version : 1.0.0 ]                ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[     ██╗██╗   ██╗███████╗     ██╗██╗███╗   ██╗    ██████╗███╗   ██╗]],
--   [[     ██║██║   ██║██╔════╝     ██║██║████╗  ██║   ██╔════╝████╗  ██║]],
--   [[     ██║██║   ██║█████╗       ██║██║██╔██╗ ██║   ██║     ██╔██╗ ██║]],
--   [[██   ██║██║   ██║██╔══╝  ██   ██║██║██║╚██╗██║   ██║     ██║╚██╗██║]],
--   [[╚█████╔╝╚██████╔╝███████╗╚█████╔╝██║██║ ╚████║██╗╚██████╗██║ ╚████║]],
--   [[ ╚════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝  ╚═══╝]],
--   [[                                                                   ]],
--   [[                         [ version : 1.0.0 ]                       ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[     ██╗██╗   ██╗███████╗     ██╗██╗███╗   ██╗]],
--   [[     ██║██║   ██║██╔════╝     ██║██║████╗  ██║]],
--   [[     ██║██║   ██║█████╗       ██║██║██╔██╗ ██║]],
--   [[██   ██║██║   ██║██╔══╝  ██   ██║██║██║╚██╗██║]],
--   [[╚█████╔╝╚██████╔╝███████╗╚█████╔╝██║██║ ╚████║]],
--   [[ ╚════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚═╝╚═╝  ╚═══╝]],
--   [[                                              ]],
--   [[             [ version : 1.0.0 ]              ]],
--   [[]],
--   [[]],
-- }
