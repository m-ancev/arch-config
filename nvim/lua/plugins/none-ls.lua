return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- lua
				null_ls.builtins.formatting.stylua,
        -- markdown
				null_ls.builtins.formatting.cbfmt,
        -- shell
				null_ls.builtins.diagnostics.shellcheck,
				null_ls.builtins.formatting.beautysh,
        -- python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})
		-- keymaps
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
