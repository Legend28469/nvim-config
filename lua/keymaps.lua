-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- window management
-- split window vertically
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
-- split window horizontally
vim.keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split window horizontally' })
-- make split windows equal width & height
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size' })
-- close current split window
vim.keymap.set('n', '<leader>wx', '<cmd>close<CR>', { desc = 'Close current split' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Create an autocommand to modify formatoptions for all file types
-- Basically just don't want comment.nvim to assume my next line is a comment when using o
vim.api.nvim_create_autocmd('FileType', {
  -- Apply to all file types
  pattern = '*',
  -- Callback function to modify formatoptions
  callback = function()
    -- Remove 'o' from formatoptions
    -- 'o' automatically inserts the current comment leader after hitting 'o' or 'O' in Normal mode
    vim.opt_local.formatoptions:remove 'o'
  end,
})

-- vim: ts=2 sts=2 sw=2 et
