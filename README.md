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
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("auto-lint").setup({
        map_lang = {
          --["c++"] = "cpp",
          --["c#"] = "cs",
        },
        map_name = {
          --["actionlint"] = "actionlint",
          --["ansible_lint"] = "ansible_lint",
        },
        add_new = {
          --["typescriptreact"] = { "eslint_d" },
          --["javascriptreact"] = { "eslint_d" },
        },
        ignore = {
          --["php"] = { "tlint" },
        },
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
