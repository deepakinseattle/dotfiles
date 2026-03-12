-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

require("catppuccin").setup({
  flavour = "mocha",
})
-- empty setup using defaults
require("nvim-tree").setup()

vim.cmd.colorscheme "catppuccin"
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = unnamedplus

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = "Toggle file explorer" })

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", function()
    builtin.find_files({ hidden = true, follow = true })
end, { desc = "Telescope [f]ind [f]iles" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


