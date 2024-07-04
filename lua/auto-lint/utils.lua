local M = {}
M.map_lang = {
  ["c++"] = "cpp",
  ["c#"] = "cs",
}

M.map_name = {
  ["actionlint"] = "actionlint",
  ["ansible_lint"] = "ansible_lint",
  ["buf"] = "buf_lint",
  ["buildifier"] = "buildifier",
  ["cfn-lint"] = "cfn_lint",
  ["checkstyle"] = "checkstyle",
  ["clj-kondo"] = "clj_kondo",
  ["cmakelint"] = "cmakelint",
  ["codespell"] = "codespell",
  ["cpplint"] = "cpplint",
  ["cspell"] = "cspell",
  ["curlylint"] = "curlylint",
  ["djlint"] = "djlint",
  ["erb-lint"] = "erb_lint",
  ["eslint_d"] = "eslint_d",
  ["flake8"] = "flake8",
  ["gdtoolkit"] = "gdlint",
  ["golangci-lint"] = "golangcilint",
  ["hadolint"] = "hadolint",
  ["jsonlint"] = "jsonlint",
  ["ktlint"] = "ktlint",
  ["luacheck"] = "luacheck",
  ["markdownlint"] = "markdownlint",
  ["mypy"] = "mypy",
  ["phpcs"] = "phpcs",
  ["phpmd"] = "phpmd",
  ["phpstan"] = "phpstan",
  ["proselint"] = "proselint",
  ["pydocstyle"] = "pydocstyle",
  ["pylint"] = "pylint",
  ["revive"] = "revive",
  ["rstcheck"] = "rstcheck",
  ["rubocop"] = "rubocop",
  ["ruff"] = "ruff",
  ["selene"] = "selene",
  ["shellcheck"] = "shellcheck",
  ["sqlfluff"] = "sqlfluff",
  ["standardrb"] = "standardrb",
  ["stylelint"] = "stylelint",
  ["solhint"] = "solhint",
  ["tflint"] = "tflint",
  ["tfsec"] = "tfsec",
  ["trivy"] = "trivy",
  ["vale"] = "vale",
  ["vint"] = "vint",
  ["vulture"] = "vulture",
  ["yamllint"] = "yamllint",
}

M.add_new = {
  ["typescriptreact"] = { "eslint_d" },
  ["javascriptreact"] = { "eslint_d" },
  ["javascript.jsx"] = { "eslint_d" },
  ["typescript.tsx"] = { "eslint_d" },
  ["vue"] = { "eslint_d" },
  ["sevelte"] = { "eslint_d" },
  ["astro"] = { "eslint_d" },
}

M.ignore = {
  ["php"] = { "tlint" },
}

return M
