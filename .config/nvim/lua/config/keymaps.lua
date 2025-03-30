vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

---[[ Setup keymaps so we can accept completion using Enter and choose items using arrow keys or Tab.
local pumMaps = {
  ['<Tab>'] = '<C-n>',
  ['<S-Tab>'] = '<C-p>',
  ['<Down>'] = '<C-n>',
  ['<Up>'] = '<C-p>',
  ['<CR>'] = '<C-y>',
}
for insertKmap, pumKmap in pairs(pumMaps) do
  vim.keymap.set('i', insertKmap, function()
    return vim.fn.pumvisible() == 1 and pumKmap or insertKmap
  end, { expr = true })
end
---]]
