local servers =
{ "lua_ls", "ts_ls", "gopls", "tailwindcss", "html", "cssls", "htmx", "templ", "svelte", "eslint", "clangd" }

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			for _, server in pairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end
			lspconfig.cssls.setup({
				capabilities = capabilities,
				settings = {
					css = {
						lint = {
							unknownAtRules = "ignore",
						},
					},
				},
			})

						lspconfig.svelte.setup({
				settings = {
					css = {
						lint = {
							unknownAtRules = "ignore",
						},
					},
				},
				capabilities = capabilities,
				on_attach = function(client)
					vim.api.nvim_create_autocmd("BufWritePost", {
						pattern = { "*.js", "*.ts" },
						group = vim.api.nvim_create_augroup("svelte_ondidchangetsorjsfile", { clear = true }),
						callback = function(ctx)
							client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
						end,
					})
				end,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
		end,
	},
}
