return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    {
      "rcarriga/nvim-dap-ui",

      opts = {
        floating = { border = 'rounded' },
      },
    },

    {
      "jbyuki/one-small-step-for-vimkind",
      keys = {
        {
          '<leader>dl',
          function()
            require('osv').launch { port = 8086 }
          end,
          desc = 'Launch Lua adapter',
        },
      },
    },

    "leoluz/nvim-dap-go",
  },

  keys = {
    { '<leader>db', function() require('dap').toggle_breakpoint() end, desc = 'Toggle breakpoint', },
    { '<leader>di', function() require('dap').list_breakpoints() end, desc = 'List breakpoint', },
    { '<leader>dc', function() require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ') end, desc = 'Breakpoint condition', },
    { '<F5>', function() require('dap').continue() end, desc = 'Continue', },
    { '<F6>', function() require('dap').step_into() end, desc = 'Step into', },
    { '<F7>', function() require('dap').step_over() end, desc = 'Step over', },
    { '<F8>', function() require('dap').step_out() end, desc = 'Step Out', },
    { '<F12>', function() require('dap').terminate() end, desc = 'Terminate', },
  },

  config = function()
    local dap = require('dap')
    local ui = require('dapui')

    -- require("dapui").setup()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        dapui.setup()
      end,
    })
    require("dap-go").setup()

    dap.listeners.before.attach.dapui_config = function() ui.open() end
    dap.listeners.before.launch.dapui_config = function() ui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() ui.close() end
    dap.listeners.before.event_exited.dapui_config = function() ui.close() end

    dap.configurations.lua = { 
      { 
        type = 'nlua', 
        request = 'attach',
        name = "Attach to running Neovim instance",
      }
    }

    dap.adapters.nlua = function(callback, config)
      callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
    end

  end
}
