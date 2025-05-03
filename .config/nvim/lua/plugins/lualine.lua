require('lualine').setup {
    options = { 
        theme = 'ayu_mirage',
        icons_enabled = true,
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                mode = 4,
                icons_enabled = true,
                show_filename_only = true,
                hide_filename_extensions = false,
            }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' },
    },
    extensions = {},
}
