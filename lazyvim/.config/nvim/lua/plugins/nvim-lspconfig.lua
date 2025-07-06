return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			gopls = {
				settings = {
					gopls = {
						hints = {
							assignVariableTypes = false,
							compositeLiteralFields = true,
							compositeLiteralTypes = false,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = false,
							rangeVariableTypes = false,
						},
						usePlaceholders = false,
					},
				},
			},
		},
	},
}
