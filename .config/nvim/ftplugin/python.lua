local options = {
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	textwidth=88,
	foldmethod="indent",
}

-- Install the aboves options
for k, v in pairs(options) do
	vim.opt[k] = v
end

