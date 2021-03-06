local vim = vim

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Setup nvim-cmp.
local cmp = require("cmp")
local types = require("cmp.types")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	mapping = {
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		["<C-n>"] = {
			i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }),
		},
		["<C-p>"] = {
			i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }),
		},
		["<Down>"] = {
			i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
		},
		["<Up>"] = {
			i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
		},
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "cmp_tabnine" },
	}, {
		{ name = "buffer" },
	}),
})
