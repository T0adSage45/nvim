return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"stevearc/conform.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"j-hui/fidget.nvim",
		"nvimtools/none-ls.nvim", -- Added null-ls here
	},

	config = function()
		-- Setup Conform (optional formatter manager)
		require("conform").setup({
			formatters_by_ft = {},
		})

		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")

		-- LSP capabilities with completion support
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)

		-- Setup fidget for LSP progress UI
		require("fidget").setup({})

		-- Setup Mason for managing LSP servers
		require("mason").setup()

		-- Setup Mason LSP config
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"lemminx",
				"ts_ls",
				-- "clangd",
				-- "rust_analyzer",
				-- "zls",
			},
			handlers = {
				-- Default handler
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,

				lua_ls = function()
					require("lspconfig").lua_ls.setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								runtime = { version = "Lua 5.1" },
								diagnostics = {
									globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
								},
							},
						},
					})
				end,

				ts_ls = function()
					require("lspconfig").ts_ls.setup({})
				end,

				clangd = function()
					require("lspconfig").clangd.setup({})
				end,

				rust_analyzer = function()
					require("lspconfig").rust_analyzer.setup({})
				end,

				zls = function()
					local lspconfig = require("lspconfig")
					lspconfig.zls.setup({
						root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
						settings = {
							zls = {
								enable_inlay_hints = true,
								enable_snippets = true,
								warn_style = true,
							},
						},
					})
					vim.g.zig_fmt_parse_errors = 0
					vim.g.zig_fmt_autosave = 0
				end,

				lemminx = function()
					require("lspconfig").lemminx.setup({
						capabilities = capabilities,
						filetypes = { "xml", "html", "xhtml", "svg", "markdown" },
					})
				end,
			},
		})

		-- Setup null-ls (formatters, diagnostics)
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.nixfmt,
				-- Add diagnostics here if needed, e.g.
				-- null_ls.builtins.diagnostics.shellcheck,
			},
			-- You can also configure on_attach here if needed
		})

		-- Setup nvim-cmp completion engine
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {
				{ name = "buffer" },
			}),
		})

		-- Diagnostics UI config
		vim.diagnostic.config({
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
			-- update_in_insert = true, -- Uncomment if you want live updates
		})
	end,
}
