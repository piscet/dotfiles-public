require('lualine').setup {
    options = { 
        -- theme = 'ayu_mirage',
        theme = 'catppuccin',
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators   = { left = '', right = '' },
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
