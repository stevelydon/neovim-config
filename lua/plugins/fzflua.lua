return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {},

	config = function()
		local fzflua = require("fzf-lua")
		vim.keymap.set("n", "<leader>s", fzflua.files, { desc = "Fzf Files" })
		vim.keymap.set("n", "<leader>r", fzflua.registers, { desc = "Fzf Registers" })
		vim.keymap.set("n", "<leader>m", fzflua.marks, { desc = "Fzf Marks" })
		vim.keymap.set("n", "<leader>f", fzflua.grep, { desc = "Fzf Grep" })
		vim.keymap.set("n", "<leader>b", fzflua.buffers, { desc = "Fzf Buffers" })
		vim.keymap.set("n", "<leader>h", fzflua.helptags, { desc = "Fzf Helptags" })
		vim.keymap.set("n", "<leader>gs", fzflua.git_status, { desc = "Fzf git status" })

		vim.keymap.set("n", "<leader>ld", fzflua.lsp_definitions, { desc = "Lsp Definition" })
		vim.keymap.set("n", "<leader>lr", fzflua.lsp_references, { desc = "Lsp References" })
		vim.keymap.set("n", "<leader>la", fzflua.lsp_finder, { desc = "Lsp Finder, all info" })
	end,
}
