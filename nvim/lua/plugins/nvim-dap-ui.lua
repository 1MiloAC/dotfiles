return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy",
	dependencies = {
		"mfussenegger/nvim-dap",

		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		require("dapui").setup()
		require("nvim-dap-virtual-text").setup({
			virt_text_pos = "inline",
		})
		vim.keymap.set("n", "<space>db", dap.toggle_breakpoint)
		vim.keymap.set("n", "<space>dc", dap.continue)
		dap.adapters.codelldb = {
			type = "executable",
			command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
		}
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
