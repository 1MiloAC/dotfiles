return {
  "Hashino/doing.nvim",
  config = function()
    -- default options
    require("doing").setup {
      message_timeout = 2000,
      doing_prefix = "Doing: ",

      -- doesn't display on buffers that match filetype/filename/filepath to
      -- entries. can be either a string array or a function that returns a
      -- string array. filepath can be relative to cwd or absolute
      ignored_buffers = { "NvimTree" },

      -- if should append "+n more" to the status when there's tasks remaining
      show_remaining = true,

      -- if should show messages on the status string
      show_messages = true,

      -- window configs of the floating tasks editor
      -- see :h nvim_open_win() for available options
      edit_win_config = {
        width = 50,
        height = 15,
        border = "rounded",
      },

      -- if plugin should manage the winbar
      winbar = { enabled = true, },

      store = {
        -- name of tasks file
        file_name = ".tasks",
      },
    }
    -- example on how to change the winbar highlight
    vim.api.nvim_set_hl(0, "WinBar", { link = "Search" })

    local doing = require("doing")

    vim.keymap.set("n", "<leader>da", doing.add, { desc = "[D]oing: [A]dd" })
    vim.keymap.set("n", "<leader>de", doing.edit, { desc = "[D]oing: [E]dit" })
    vim.keymap.set("n", "<leader>dn", doing.done, { desc = "[D]oing: Do[n]e" })
    vim.keymap.set("n", "<leader>dt", doing.toggle, { desc = "[D]oing: [T]oggle" })

    vim.keymap.set("n", "<leader>ds", function()
      vim.notify(doing.status(true), vim.log.levels.INFO,
        { title = "Doing:", icon = "", })
    end, { desc = "[D]oing: [S]tatus", })
  end,
}
