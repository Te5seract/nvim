local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
        "                                                              ",
        "                                                              ",
        "                                                              ",
        "                .^:::.                  .:::^.                ",
        "               :! .  !                  !  . !:               ",
        "                !..::.                  .::..!                ",
        "                 :^^^^~~~~~:      :~~~~~^^^^:                 ",
        "                          .?7    7?.                          ",
        "                           ~Y.  .Y~                           ",
        "                         .!?^    ^?!.                         ",
        "       ^              .~??^..~!!~..^??~.              ^       ",
        "      .~            :7J!.  ~JJJJJJ~  .!J7:            ~.      ",
        "       .:::::~:    ~J?.   ~J??????J~   .?J~    :~:::::.       ",
        "              !!  ~J?.    ??????????    .?J~  !!              ",
        "              ~?  ?J!     ??????????     !J?  ?~              ",
        "              ?!  !J?.    ~J??????J~    .?J!  !7              ",
        "              7?   ~JJ7~:..????????..:~7JJ~   ?7              ",
        "     .^^~~^.  .J7.   :!7?J??????????J?7!:   .7J.  .^~~^^.     ",
        "    ~~...::!7. .!J!:    .^7????????7^.    :!J!. .7!::...~~    ",
        "    ?..  .^ ^J~  .^!777777??????????777777!^.  ~J^ ^.  ..?    ",
        "    .^:..^.  .!?~:...::^!7?77?JJ?77?7!^::...:~?!.  .^..:^.    ",
        "                :~!!!!!~^:..7J~~J7..:^~!!!!!~:                ",
        "                 .::..   .~?7:  :7?~.   ..::.                 ",
        "               :!^.:^~!!!!^.      .^!!!!~^:.^!:               ",
        "               ?                              ?               ",
        "               ~.                            .~               ",
        "                :.                          .:                ",
        "                                                              ",
        "                                                              ",
        "                                                              ",
        },
        highlight = "Statement",
        default_color = "#ff2655",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find File", "Telescope find_files", "<leader>ff" },
            { " Find Word", "Telescope live_grep", "<leader>lg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 5,
    },
    footer = {
        type = "text",
        oldfiles_directory = true,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "Welcome, Isaac" },
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "footer" },
}
return settings