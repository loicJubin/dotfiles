vim.cmd([[ nnoremap <C-n> :NERDTreeToggle<CR> ]])

-- General vim
-- Navigate between split
vim.cmd([[nnoremap <C-J> <C-W> <C-J>]])
vim.cmd([[nnoremap <C-K> <C-W> <C-K>]])
vim.cmd([[nnoremap <C-L> <C-W> <C-L>]])
vim.cmd([[nnoremap <C-H> <C-W> <C-H>]])

-- Shortcut to open the current buffer in a tab, the second to close it (without saving) 
vim.cmd([[noremap to :tab split<CR>]])
vim.cmd([[noremap tc :tabc <CR>]])

-- Set the target of vim-slime
vim.cmd([[let g:slime_target = "neovim"]])

-- Set the mapping according the coc.nvim github
vim.cmd("source ~/.config/nvim/lua/coc.vim")

-- Shortcut to quit the terminal mode
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])

-- Allow the navigation in any mode with ALT
vim.cmd([[
    tnoremap <A-h> <C-\><C-N><C-w>h
    tnoremap <A-j> <C-\><C-N><C-w>j
    tnoremap <A-k> <C-\><C-N><C-w>k
    tnoremap <A-l> <C-\><C-N><C-w>l
    inoremap <A-h> <C-\><C-N><C-w>h
    inoremap <A-j> <C-\><C-N><C-w>j
    inoremap <A-k> <C-\><C-N><C-w>k
    noremap <A-l> <C-\><C-N><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l
		]])

-- Windows resizing
vim.cmd([[
if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
	map § <C-W><
	map ° <C-W>>
endif
]])

-- Telescope
vim.cmd([[
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])

-- Close current buffer without closing the windows
vim.cmd([[
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
]])
