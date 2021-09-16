-- Colorscheme
require("onedarker");

-- Bufferline
require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		separator_style = "padded_slant"
	}
});

-- Statusline
local section = require("galaxyline").section;
local condition = require("galaxyline.condition");

-- Git
require("gitsigns").setup();
