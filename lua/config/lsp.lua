-- LSP snippets config
local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities.textDocument.completion.completionItem.snippetSupport = true;

-- Language servers
--- Rust
require("lspconfig").rust_analyzer.setup {
	cmd = { 
		"rustup",
		"run",
		"nightly",
		"rust-analyzer",
	},
	capabilities = capabilities
};

--- Golang
require("lspconfig").gopls.setup {
	capabilities = capabilities
};

--- JavaScript / TypeScript
require("lspconfig").tsserver.setup {
	capabilities = capabilities
};

--- C / C++
require("lspconfig").clangd.setup {
	capabilities =  capabilities
};

-- lspsaga
require("lspsaga").init_lsp_saga();

-- Completion icons
require("lspkind").init({ with_text = false });
