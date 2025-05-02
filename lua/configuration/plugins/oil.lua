return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,

    config = function()
        require('oil').setup {
            default_file_explorer = true,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                natural_order = true,
                is_always_hidden = function(name, _)
                    return name == '..' or name == '.git'
                end,
            },
            win_options = {
                wrap = true,
                cursorline = true,
            },
            float = {
                padding = 1,
                max_width = 90,
                max_height = 30,
                border = 'rounded',
                win_options = {
                    winblend = 0,
                },
                override = function(conf)
                    return conf
                end,
            },

            preview = {
                max_width = 0.9,
                min_width = { 40, 0.4 },
                width = nil,
                max_height = 0.9,
                min_height = { 5, 0.1 },
                height = nil,
                border = 'rounded',
                win_options = {
                    winblend = 0,
                },
            },
        }
        vim.keymap.set('n', '<leader>o', require('oil').toggle_float, { desc = 'Toggle [O]il file explorer' })
    end,
}
