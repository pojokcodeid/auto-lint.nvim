# auto-lint.nvim

- auto lint.nvim is an automatic configuration for nvim-lint and mason.nvim

# Installation

```lua
{
    "pojokcodeid/auto-lint.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-lint",
    },
    event = "VeryLazy",
    config = function()
      require("auto-lint").setup({
        -- map mason language vs filetype if diff
        map_lang = {
          --["c++"] = "cpp",
          --["c#"] = "cs",
        },
        -- map mason name vs nvim-lint name if diff
        map_name = {
          --["actionlint"] = "actionlint",
          --["ansible_lint"] = "ansible_lint",
        },
        -- register mason lint if by default not register
        add_new = {
          --["typescriptreact"] = { "eslint_d" },
          --["javascriptreact"] = { "eslint_d" },
        },
        -- disable lint by filetype
        ignore = {
          --["php"] = { "tlint" },
        },
        -- install mason lint or use :MasonInstall <lint_name>
        ensure_installed = {
          --"eslint_d",
        },
      })
    end,
}

```

# Minimum Configuration

```lua
require("auto-lint").setup({})
```
