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

	-- UI
	use "LunarVim/onedarker.nvim";
	use {
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons"
	};
	use {
		"glepnir/galaxyline.nvim",
		branch = "main",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true
		}
	};
	use {
		"lewis6991/gitsigns.nvim",
		requires = "nvim-lua/plenary.nvim"
	};

	-- LSP
	use "neovim/nvim-lspconfig";
	use "glepnir/lspsaga.nvim";
	use "ray-x/lsp_signature.nvim";
	use {
		"ray-x/navigator.lua",
		requires = {
			"ray-x/guihua.lua",
			run = "cd lua/fzy && make"
		}
	};
	use "onsails/lspkind-nvim";
	
	-- Completion
	use "hrsh7th/nvim-cmp";
	use "hrsh7th/cmp-buffer";
	use "hrsh7th/cmp-path";
	use "hrsh7th/cmp-nvim-lsp";
	use {
		"tzachar/cmp-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-cmp"
	};
	use "saadparwaiz1/cmp_luasnip";
	use "hrsh7th/cmp-nvim-lua";
	use "hrsh7th/cmp-emoji";
	use "L3MON4D3/LuaSnip";
	use "windwp/nvim-autopairs";
	use "rafamadriz/friendly-snippets";

	-- Tree-sitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	};

	-- Linters and Formatters
	use "dense-analysis/ale"

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim"
	};

	-- WhichKey
	use "folke/which-key.nvim";

	-- EditorConfig
	use "editorconfig/editorconfig-vim";
end);
