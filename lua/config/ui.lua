-- Colorscheme
vim.g.onedark_transparent_background = true;
require('onedark').setup();

-- Treesitter
require'nvim-treesitter.configs'.setup {
	ensure_installed = 'all',
	highlight = { enable = true },
	autopairs = { enable = true }
};
