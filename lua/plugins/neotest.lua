return {
	{
		"rcasia/neotest-java",
		ft = "java",
		dependencies = {
			"mfussenegger/nvim-jdtls",
		},
	},
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = function()
			local junit_jar = vim.fn.stdpath("data") .. "/neotest-java/junit-platform-console-standalone-1.10.1.jar"
			return {
				adapters = {
					["neotest-java"] = require("neotest-java")({
						junit_jar = junit_jar,
						incremental_build = true,
					}),
				},
			}
		end,
		keys = {
			{
				"<leader>tl",
				function()
					require("neotest").run.run(vim.fn.expand("%"))
				end,
			},
			{
				"<leader>Tm",
				function()
					require("neotest").summary.marked()
				end,
			},
			{
				"<leader>Ts",
				function()
					require("neotest").summary.toggle()
				end,
			},
		},
	},
}
