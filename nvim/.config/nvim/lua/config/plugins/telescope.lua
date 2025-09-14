local builtin = require("telescope.builtin")
local outside_dir_path = nil

function get_outside_dir()
  if not outside_dir_path then
    local input = vim.fn.input("Gimme the path: ", vim.fn.getcwd(), "dir")
    if input ~= "" then
      outside_dir_path = vim.fn.fnamemodify(input, ":p") -- nomalize to absolute path
    else 
      vim.notify("Empty path; Aborting.", vim.log.levels.WARN)
      return
    end
  end
end

return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },

    keys = {
      {
        "<leader>fp",
        function()
          local utils = require("telescope.utils")
          builtin.find_files({ cwd = utils.buffer_dir(), })
        end,
        desc = "Find files in buffer directory",
      },
      {
        "<leader>gp",
        function()
          local utils = require("telescope.utils")
          builtin.live_grep({ cwd = utils.buffer_dir(), })
        end,
        desc = "live grep in buffer directory",
      },
      { "<leader>ff", builtin.find_files, },
      { "<leader>fg", builtin.live_grep, },
      { "<leader>fb", builtin.buffers, },
      { "<leader>fh", builtin.help_tags, },
      { "<leader>fw", builtin.git_files, },
      {
        "<leader>fu",
        function()
          builtin.find_files({no_ignore = true, hidden = true })
        end,
      },
      {
        "<leader>fo",
        function()
          get_outside_dir()
          builtin.find_files({cwd = outside_dir_path})
        end,
        desc = "Find files in outside directory.",
      },

      {
        "<leader>go",
        function()
          get_outside_dir()
          builtin.live_grep({cwd = outside_dir_path})
        end,
        desc = "Find files in outside directory.",
      },
    },

}
