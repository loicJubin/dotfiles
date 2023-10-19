local options = {
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	textwidth = 300
}

-- Install the aboves options
for k, v in pairs(options) do
	vim.opt[k] = v
end
