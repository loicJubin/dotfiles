local options = {
	fileencoding = "utf-8",                 -- Force the encoding when writting a file
	mouse = "a",                            -- Allow the mouse to be used in neovim
	number = true,                          -- Show the line number
	relativenumber = true,                  -- Show the line number with the reference from the cursor position
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
}

-- Install the aboves options
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Add the gruvbox theme
local ok, _ = pcall(require, "gruvbox")
if ok then
	vim.opt.termguicolors = true
	vim.o.background = "dark" -- or "light" for light mode
	vim.cmd([[colorscheme gruvbox]])
end

-- Add the plugins for the COC
vim.cmd([[ let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-pyright', 'coc-yaml'] ]])
vim.cmd([[let g:python3_host_prog = '/usr/bin/python3']])
vim.cmd([[ au BufWrite *.py call CocAction('format') ]]) --Avoid timeout errors when Black is runned

-- Add nvr when the git commit is used
vim.cmd([[
if has('nvim')
	let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif
]])

-- Remove the line number inside the nvim session
vim.cmd([[
autocmd TermOpen * setlocal nonumber norelativenumber
]])


-- Copilot settings
vim.cmd[[let g:copilot_filetypes = {'*': v:false, 'python': v:true, 'javascript': v:true, 'html': v:true,}]]
