return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                {
                    section = 'terminal',
                    cmd = 'chafa ~/.config/nvim/dashboard_image.png --format symbols --symbols vhalf --size 60x25 --stretch; sleep .1',
                    height = 25,
                    padding = 1,
                },
                { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
                { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
                { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
                { section = 'startup' },
            },
        },

        indent = { enabled = true },
        input = { enabled = true },
        quickfile = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
    },
}
