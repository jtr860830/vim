-- LSP snippets config
local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities.textDocument.completion.completionItem.snippetSupport = true;

-- Language servers
local servers = {
	'clangd',
	'gopls',
	'rust_analyzer',
	'tsserver'
};

for _, lsp in ipairs(servers) do
	require('lspconfig')[lsp].setup {
		capabilities = capabilities,
	};
end

-- lspsaga
require('lspsaga').init_lsp_saga();

-- Completion icons
require('lspkind').init({ with_text = false });
