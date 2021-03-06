local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("parsa.lsp.handlers").on_attach,
		capabilities = require("parsa.lsp.handlers").capabilities,
	}

     -- Dont need json yet
	 -- if server.name == "jsonls" then
	 -- 	local jsonls_opts = require("parsa.lsp.settings.jsonls")
	 -- 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 -- end

	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("parsa.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end

	 --if server.name == "bashls" then
	 	--local bashls_opts = require("user.lsp.settings.bashls")
	 	--opts = vim.tbl_deep_extend("force", bashls_opts, opts)
	 --end
--
	 --if server.name == "pyright" then
	 	--local pyright = require("user.lsp.settings.pyright")
	 	--opts = vim.tbl_deep_extend("force", pyright, opts)
	 --end
--
	 --if server.name == "remark_ls" then
	 	--local remark_ls = require("user.lsp.settings.remark_ls")
	 	--opts = vim.tbl_deep_extend("force", remark_ls, opts)
	 --end
--
	 --if server.name == "vimls" then
	 	--local vimls = require("user.lsp.settings.vimls")
	 	--opts = vim.tbl_deep_extend("force", vimls, opts)
	 --end
     --
	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
