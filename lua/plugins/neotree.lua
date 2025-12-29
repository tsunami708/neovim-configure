return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "nvim-tree/nvim-web-devicons",
      opts = {
        override = {
          ld = {
            icon = "",
            color = "#42b883",
            name = "Ld",
          },
          dts = {
            icon = "",
            name = "Dts",
          },
        },
      },
    },
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    window = {
      width = "30",
    },
  },
  init = function()
    vim.cmd('command! Nt Neotree')
  end
}
