return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.icons",
  },
  opts = {
    file_types = { "markdown" },
    heading = { enabled = true, sign = true },
    latex = { enabled = false },
  },
}
