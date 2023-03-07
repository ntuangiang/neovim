require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

require("nvim-dap-virtual-text").setup()
require("dapui").setup()
