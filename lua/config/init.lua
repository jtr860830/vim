-- General settings
vim.o.nu = true;
vim.o.scl = "yes";
vim.o.syn = "enable";
vim.o.cot = "menuone,noinsert,noselect";
vim.o.ai = true;
vim.o.si = true;
vim.o.sw = 2;
vim.o.ts = 2;
vim.o.ic = true;
vim.o.is = true;
vim.o.cul = true;
vim.o.sc = true;
vim.o.hls = true;
vim.o.ls = 2;
vim.o.hi = 1000;
vim.o.tgc = true;
vim.o.stal = 2;
vim.o.fdm = "indent";
vim.o.ut = 100;

require("config.ui");
require("config.completion");
require("config.lsp");
