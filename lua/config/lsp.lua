-- LSP
local lsp = require("lspconfig");
--- options
local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities);
--- Rust
lsp.rust_analyzer.setup({
	cmd = { 
		"rustup",
		"run",
		"nightly",
		"rust-analyzer",
	},
	capabilities = capabilities
});
--- Golang
lsp.gopls.setup({
	capabilities = capabilities
});
--- JavaScript / TypeScript
lsp.tsserver.setup({
	capabilities = capabilities
});
--- C / C++
lsp.clangd.setup({
	capabilities =  capabilities
});

-- lspsaga
require("lspsaga").init_lsp_saga();

-- lsp_signature
require("lsp_signature").setup();

-- navigator
require("navigator").setup();