return {
  "mdnrz/compile-mode.nvim",
  branch = "mdnrz",
  -- version = "^5.0.0",
  -- you can just use the latest version:
  -- branch = "latest",
  -- or the most up-to-date updates:
  -- branch = "nightly",

  dependencies = {
    "nvim-lua/plenary.nvim",
    -- if you want to enable coloring of ANSI escape codes in
    -- compilation output, add:
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  config = function()
    ---@type CompileModeOpts
    vim.g.compile_mode = {
      -- to add ANSI escape code support, add:
      baleia_setup = true,
      jump_to_previous_buffer = false,

      -- to make `:Compile` replace special characters (e.g. `%`) in
      -- the command (and behave more like `:!`), add:
      -- bang_expansion = true,
      error_regexp_table = {
        rust_error = {
          regex = '^ *--> \\(.*[^:]\\):\\([0-9^:]\\+\\):\\([0-9]\\+\\)$',
          filename = 1,
          row = 2,
          col = 3
        },
        rust_panic = {
          regex = "^thread .*[^ ] panicked at \\([a-zA-z\\._]\\+\\):\\([0-9]\\+\\):\\([0-9]\\+\\):$",
          filename = 1,
          row = 2,
          col = 3
        }
      },
    }
  end
}
