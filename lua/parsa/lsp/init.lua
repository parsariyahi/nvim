local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "parsa.lsp.lsp-installer"
require("parsa.lsp.handlers").setup()
require "parsa.lsp.null-ls"
