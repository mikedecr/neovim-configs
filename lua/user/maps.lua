-----------------------------------------------------
-- ::: VARIABLES / ALIASES :::

-- fn to write a map
local keymap = vim.api.nvim_set_keymap

-- list of map options
local opts = {noremap = true, silent = true}


-----------------------------------------------------
-- ::: NORMAL :::

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)


-----------------------------------------------------
-- ::: TERMINAL :::

-- Esc exits terminal's Insert mode
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

