local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- Use the packer manager itself
  use {'wbthomason/packer.nvim'}

  --  Telescope is a fuzzy finder (quick way to find files, string)
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}

  -- NERDTree consist to show the directory structure and to navigate
  use {'scrooloose/nerdtree'}

  -- Shows the status bar at the bottom of the window 
  use {'itchyny/lightline.vim'}

  -- Allow to copy/paste to create a Lisp IDE
  use {'jpalardy/vim-slime'}

  -- Add the conqueror of completion (autocomplete features)
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Add the theme grubox
  use { "ellisonleao/gruvbox.nvim" }

  -- Add a session manager and screen
  use {'mhinz/vim-startify'}

	-- Add github copilot
	use {'github/copilot.vim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
