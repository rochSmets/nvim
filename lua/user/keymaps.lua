vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

-- splits
vim.keymap.set("n","<leader>cl",":close<CR>",{noremap=true})
vim.keymap.set("n","<leader>v",":vs<CR><C-w>l",{noremap=true})
vim.keymap.set("n","<leader>h",":sp<CR>",{noremap=true})

-- making adjusting split sizes a bit more friendly
vim.keymap.set("n", "<C-Left>", ":vertical resize +3<CR>", {silent=true})
vim.keymap.set("n", "<C-Right>", ":vertical resize -3<CR>", {silent=true})
vim.keymap.set("n", "<C-Up>", ":resize +3<CR>", {silent=true})
vim.keymap.set("n", "<C-Down>", ":resize -3<CR>", {silent=true})

-- manage buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", {noremap=true})
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>",{noremap=true})

-- source rc files
vim.keymap.set("n", "sv", "<cmd>source ~/.config/nvim/init.lua<cr>", {noremap=true})
vim.keymap.set("n", "ev", "<cmd>e ~/.config/nvim/<cr>", {noremap=true})

-- nvimtree-- NvimTree
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')        -- open/close
vim.keymap.set('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh

-- fuGitive
vim.keymap.set("n", "<leader>gs", ":Git status<CR>")
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")

-- telescope (fuzzy finder)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>si', builtin.git_files, { desc = '[S]earch in g[I]t' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
