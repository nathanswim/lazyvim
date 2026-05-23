-- The lazyvim python extra handles pyright + ruff LSP, treesitter, debugpy DAP,
-- and venv-selector. This file extends/overrides those defaults.

-- Use standard pyright (change to "basedpyright" if preferred)
vim.g.lazyvim_python_lsp = "pyright"
-- Use the modern ruff LSP (not the legacy ruff_lsp)
vim.g.lazyvim_python_ruff = "ruff"

return {
  -- Ensure Mason installs all three tools
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "ruff",
        "debugpy",
      },
    },
  },

  -- Pyright: type checking mode and workspace analysis
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "standard",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
              },
            },
          },
        },
      },
    },
  },

  -- Format Python with ruff on save:
  --   ruff_fix    -> auto-fix lint issues (unused imports, etc.)
  --   ruff_format -> code formatting (black-compatible style)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
      },
    },
  },

  -- venv-selector: auto-detects .venv (uv default), virtualenv, conda, etc.
  -- Use <leader>cv to pick a virtual environment.
  -- After selecting, pyright restarts pointing at the correct interpreter.
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      options = {
        notify_user_on_venv_activation = true,
      },
    },
  },
}
