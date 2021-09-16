-- nvim-cmp
local cmp = require("cmp");
local luasnip = require("luasnip");
--- helpers
local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end
local check_back_space = function()
	local col = vim.fn.col '.' - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end
local tab = function(fallback)
	if vim.fn.pumvisible() == 1 then
		vim.fn.feedkeys(t("<C-n>"), "n")
	elseif luasnip.expand_or_jumpable() then
		vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
	elseif check_back_space() then
		vim.fn.feedkeys(t("<tab>"), "n")
	else
		fallback()
	end
end
local s_tab = function(fallback)
	if vim.fn.pumvisible() == 1 then
		vim.fn.feedkeys(t("<C-p>"), "n")
	elseif luasnip.jumpable(-1) then
		vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
	else
		fallback()
	end
end
--- options
local snippet = {
	expand = function(args)
		luasnip.lsp_expand(args.body)
	end
};
local mapping = {
	["<C-p>"] = cmp.mapping.select_prev_item(),
	["<C-n>"] = cmp.mapping.select_next_item(),
	["<C-d>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),
	["<C-Space>"] = cmp.mapping.complete(),
	["<C-e>"] = cmp.mapping.close(),
	["<CR>"] = cmp.mapping.confirm {
		behavior = cmp.ConfirmBehavior.Replace,
		select = true,
	},
	["<Tab>"] = cmp.mapping(tab, { "i", "s" }),
	["<S-Tab>"] = cmp.mapping(s_tab, { "i", "s" })
};
local sources = {
	{ name = "luasnip" },
	{ name = "buffer" },
	{ name = "path" },
	{ name = "emoji" },
	{ name = "nvim_lsp" },
	{ name = "cmp_tabnine" },
	{ name = "nvim_lua" },
};
local formatting = {
	format = function(entry, vim_item)
		-- fancy icons and a name of kind
		vim_item.kind = require("lspkind").presets.default[vim_item.kind];
		-- set a name for each source
		vim_item.menu = ({
			buffer = "[Buffer]",
			path = "[Path]",
			emoji = "[Emoji]",
			nvim_lsp = "[LSP]",
			cmp_tabnine = "[Tabnine]",
			luasnip = "[LuaSnip]",
			nvim_lua = "[Lua]"
		})[entry.source.name];
		return vim_item;
	end
};
--- setup
cmp.setup({
	snippet = snippet,
	mapping = mapping,
	sources = sources,
	formatting = formatting,
});

-- autopairs
local autopairs = require("nvim-autopairs");
local Rule = require("nvim-autopairs.rule");
require("nvim-autopairs.completion.cmp").setup({
	map_cr = true,
	map_complete = true,
});
autopairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	}
});
--- press % => %% is only inside comment or string
local ts_conds = require("nvim-autopairs.ts-conds");
autopairs.add_rules({
	Rule("%", "%", "lua")
		:with_pair(ts_conds.is_ts_node({"string","comment"})),
	Rule("$", "$", "lua")
		:with_pair(ts_conds.is_not_ts_node({"function"}))
});
