-- General settings
vim.go.timeoutlen = 0;
vim.go.updatetime = 100;
vim.go.ignorecase = true;
vim.go.showtabline = 2;
vim.go.mouse = "a";
vim.go.termguicolors = true;
vim.go.completeopt = "menuone,noselect";
vim.wo.number = true;
vim.wo.signcolumn = "yes";
vim.wo.cursorline = true;
vim.bo.syntax = "enable";
vim.wo.foldmethod = "indent";
vim.bo.smartindent = true;
vim.bo.shiftwidth = 2;
vim.bo.tabstop = 2;

require("config.ui");
require("config.completion");
require("config.lsp");
require("config.tools");
