return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {},

	config = function()
		vim.keymap.set("n", "<leader>s", require("fzf-lua").files, { desc = "Fzf Files" })
		vim.keymap.set("n", "<leader>r", require("fzf-lua").registers, { desc = "Fzf Registers" })
		vim.keymap.set("n", "<leader>m", require("fzf-lua").marks, { desc = "Fzf Marks" })
		vim.keymap.set("n", "<leader>f", require("fzf-lua").grep, { desc = "Fzf Grep" })
		vim.keymap.set("n", "<leader>b", require("fzf-lua").buffers, { desc = "Fzf Buffers" })
		vim.keymap.set("n", "<leader>h", require("fzf-lua").helptags, { desc = "Fzf Helptags" })
		vim.keymap.set("n", "<leader>gs", require("fzf-lua").git_status, { desc = "Fzf git status" })
	end,
}
