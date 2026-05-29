return {
  "mfussenegger/nvim-dap",

  config = function()
    local dap = require("dap")

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint())
    vim.keymap.set("n", "<leader>dc", dap.step_over())
    vim.keymap.set("n", "<leader>di", dap.step_into())
    vim.keymap.set("n", "<leader>dc", dap.continue())
  end,
}
