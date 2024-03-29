require('dapui').setup()
require('dap-go').setup()

local dap = require('dap')
local dapui = require('dapui')


dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

local map = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}

dap.adapters.go = function(callback, config)
	local stdout = vim.loop.new_pipe(false)
	local handle
	local pid_or_err
	local port = 38697
	local opts = {
		stdio = { nil, stdout },
		args = { "dap", "-l", "127.0.0.1:" .. port },
		detached = true,
	}
	handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
		stdout:close()
		handle:close()
		if code ~= 0 then
			print("dlv exited with code", code)
		end
	end)
	assert(handle, "Error running dlv: " .. tostring(pid_or_err))
	stdout:read_start(function(err, chunk)
		assert(not err, err)
		if chunk then
			vim.schedule(function()
				require("dap.repl").append(chunk)
			end)
		end
	end)
	vim.defer_fn(function()
		callback({ type = "server", host = "127.0.0.1", port = port })
	end, 100)
end

-- dap.configurations.go = {
-- 	{
-- 		type = "go",
-- 		name = "Debug",
-- 		request = "launch",
-- 		program = "${file}"
-- 	},
-- 	{
-- 		type = "go",
-- 		name = "Debug test",
-- 		request = "launch",
-- 		mode = "test",
-- 		program = "${file}"
-- 	},
-- 	{
-- 		type = "go",
-- 		name = "Debug test (go.mod)",
-- 		request = "launch",
-- 		mode = "test",
-- 		program = "./${relativeFileDirname}"
-- 	} 
-- }

map('n', '<Space>0', dap.continue, opts)
map('n', '<Space>b', dap.toggle_breakpoint, opts)
map('n', '<Space>5', dap.step_into, opts)
map('n', '<Space>5', dap.step_out, opts)
map('n', '<Space>1', dap.step_over, opts)
