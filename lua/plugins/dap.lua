return {
     "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
opts = {
    handlers = {
      python = function()
        local dap = require("dap")
        dap.adapters.python = {
          type = "executable",
          command = "/opt/homebrew/bin/python3",
          args = {
            "-m",
            "debugpy.adapter",
          },
        }

        dap.configurations.python = {
          {
            type = "python",
            request = "launch",
            name = "Launch file",
            program = "${file}", -- This configuration will launch the current file if used.
          },
        }
      end,
    },
  },}

