-- Tree-sitter
require"nvim-treesitter.configs".setup({
	ensure_installed = "all",
	highlight = { enable = true },
	autopairs = { enable = true }
});

-- Linters and Formatters (ALE)
vim.g.ale_fix_on_save = 1;
vim.g.ale_linters_explicit = 1;

-- WhichKey
require("which-key").setup({});
