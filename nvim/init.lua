local lazypath = "/home/brayden/.config/nvim/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.opt.number = true

require("lazy").setup({
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	'nvim-tree/nvim-web-devicons',
	"nvim-neo-tree/neo-tree.nvim",
	"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim",
	"navarasu/onedark.nvim", 
	"romgrk/barbar.nvim","nvim-telescope/telescope.nvim","startup-nvim/startup.nvim",'hrsh7th/nvim-cmp',
	
})

require('lualine').setup({
	options={
		component_separators = { left = '|', right = '|'},
		section_seperators = {left = "", right = ""},
	},
	sections={
		lualine_x = {"filetype"},
		lualine_y = {"hostname", "windows"}
	}
})

require("startup").setup()
	    
vim.cmd("colorscheme onedark")

vim.keymap.set('i', 'Ctrl+[', 'esc')

vim.keymap.set({'i', 'n'}, '<C-q>y', ':wq<CR>')
vim.keymap.set({'i', 'n'}, '<C-q>ay', ':wqa<CR>')
vim.keymap.set({'i', 'n'}, '<C-q>', ':q<CR>')

