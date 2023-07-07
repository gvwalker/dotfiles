vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- Exit INSERT mode
keymap.set("i", "jk", "<ESC>")

-- Switch off highlight after searching
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "[N]o [H]ighlighting" })

-- Delete character but don't put it in a register
keymap.set("n", "x", '"_x')

-- Increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "[+] Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "[-] Decrement Number" })

-- Split Window Keymaps
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit Window [V]ertically" }) -- vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit Window [H]orizontally" }) -- horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "[S]plit Windows [E]qually" }) -- Make splits equal width
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "[S]plit Window [x] Close" }) -- close current window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "[S]plit Window [M]aximize" }) -- toggle split window maximized

-- Tab Keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "[T]ab [O]pen" }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "[T]ab [x] Close" }) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "[T]ab [N]ext" }) -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "[T]ab [P]revious" }) -- go to previous tab

-- Nvim-Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "[E]xplorer" })

-- Telescope
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
