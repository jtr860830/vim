-- Auto install packer.nvim if not exists
local execute = vim.api.nvim_command;
local fn = vim.fn;

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim";

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path});
	execute "packadd packer.nvim";
end

-- Plugin manager
return require("packer").startup(function()
	-- Packer can manage itself
	use "wbthomason/packer.nvim";

	-- LSP and completion
	use "neovim/nvim-lspconfig";
	use "glepnir/lspsaga.nvim";
	use "hrsh7th/nvim-compe";
	use "hrsh7th/vim-vsnip";
	use "windwp/nvim-autopairs";
	use "rafamadriz/friendly-snippets";
	use {
		"tzachar/compe-tabnine",
		run="./install.sh",
		requires = "hrsh7th/nvim-compe"
	};
	use "onsails/lspkind-nvim";

	-- UI
	use "navarasu/onedark.nvim";
	use {
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons"
	};
	use {
		"glepnir/galaxyline.nvim",
		branch = "main",
		-- your statusline
		-- config = function() require"my_statusline" end,
		-- some optional icons
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true
		}
	};
	use {
		"lewis6991/gitsigns.nvim",
		requires = "nvim-lua/plenary.nvim"
	};

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	};

	-- Tools
	use {
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim"
	};
	use "editorconfig/editorconfig-vim";
end);
