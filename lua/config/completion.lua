-- compe
require('compe').setup {
	source = {
		path = true;
		buffer = true;
		tabnine = true;
		calc = true;
		nvim_lsp = true;
		nvim_lua = true;
		tags = true;
		vsnip = true;
	};
};

-- autopairs
local autopairs = require("nvim-autopairs");
local Rule = require('nvim-autopairs.rule');
require("nvim-autopairs.completion.compe").setup({
	map_cr = true,
	map_complete = true,
	auto_select = false,
});
autopairs.setup {
	check_ts = true,
	ts_config = {
		lua = { 'string' },
		javascript = { 'template_string' },
		java = false,
	}
};
-- press % => %% is only inside comment or string
local ts_conds = require('nvim-autopairs.ts-conds');
autopairs.add_rules({
	Rule("%", "%", "lua")
		:with_pair(ts_conds.is_ts_node({'string','comment'})),
	Rule("$", "$", "lua")
		:with_pair(ts_conds.is_not_ts_node({'function'}))
});

-- Keymaps
local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true);
end

local check_back_space = function()
		local col = vim.fn.col('.') - 1;
		return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil;
end
-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
	if vim.fn.pumvisible() == 1 then
		return t "<C-n>";
	elseif vim.fn['vsnip#available'](1) == 1 then
		return t "<Plug>(vsnip-expand-or-jump)";
	elseif check_back_space() then
		return t "<Tab>";
	else
		return vim.fn['compe#complete']();
	end
end
_G.s_tab_complete = function()
	if vim.fn.pumvisible() == 1 then
		return t "<C-p>";
	elseif vim.fn['vsnip#jumpable'](-1) == 1 then
		return t "<Plug>(vsnip-jump-prev)";
	else
		return t "<S-Tab>";
	end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true });
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true });
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true });
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true });
vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')", { expr = true });
vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { expr = true });
