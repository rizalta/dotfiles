return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			cssls = {
				settings = {
					css = {
						lint = {
							unknownAtRules = "ignore",
						},
					},
				},
			},

			gopls = {
				settings = {
					gopls = {
						hints = {
							assignVariableTypes = false,
							compositeLiteralFields = false,
							compositeLiteralTypes = false,
							constantValues = false,
							functionTypeParameters = true,
							parameterNames = false,
							rangeVariableTypes = false,
						},
						usePlaceholders = false,
					},
				},
			},

			vtsls = {
				settings = {
					typescript = {
						inlayHints = {
							functionLikeReturnTypes = { enabled = false },
							parameterNames = { enabled = false },
							parameterTypes = { enabled = false },
							propertyDeclarationTypes = { enabled = false },
						},
					},
				},
			},
		},
	},
}
