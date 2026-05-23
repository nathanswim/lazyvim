return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- JS/TS ecosystem
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      svelte = { "prettier" },
      htmlangular = { "prettier" },
      -- Markup / styles
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      -- Data
      json = { "prettier" },
      jsonc = { "prettier" },
      -- .NET (also set by the dotnet extra)
      cs = { "csharpier" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_format = "fallback",
    },
  },
}
