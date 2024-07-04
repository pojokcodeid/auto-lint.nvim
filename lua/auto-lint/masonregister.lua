local mason_reg = require("mason-registry")
local map_lang = require("auto-lint.utils").map_lang
local map_name = require("auto-lint.utils").map_name
local add_new = require("auto-lint.utils").add_new
local ignore = require("auto-lint.utils").ignore
local M = {}
M.register = function(opts)
  opts.linters_by_ft = {}
  opts.ensure_installed = opts.ensure_installed or {}
  opts.map_lang = opts.map_lang or {}
  opts.map_name = opts.map_name or {}
  opts.add_new = opts.add_new or {}
  opts.ignore = opts.ignore or {}
  vim.list_extend(map_lang, opts.map_lang)
  vim.list_extend(map_name, opts.map_name)
  vim.list_extend(add_new, opts.add_new)
  vim.list_extend(ignore, opts.ignore)
  -- install mason ensure installed
  for _, value in pairs(opts.ensure_installed) do
    require("auto-lint.masoncfg").try_install(value)
  end
  -- local listtest = {}
  for _, pkg in pairs(mason_reg.get_installed_packages()) do
    for _, type in pairs(pkg.spec.categories) do
      -- only act upon a Linter
      if type == "Linter" then
        -- finally add the linter to it's compatible filetype(s)
        for _, ft in pairs(pkg.spec.languages) do
          local ftl = string.lower(ft)
          local ready = mason_reg.get_package(pkg.spec.name):is_installed()
          if ready then
            if map_lang[ftl] ~= nil then
              ftl = map_lang[ftl]
            end

            -- if substring(pkg.spec.name, "eslint") then
            --   table.insert(listtest, ftl)
            -- end

            if map_name[pkg.spec.name] ~= nil then
              pkg.spec.name = map_name[pkg.spec.name]
            end

            -- add new mapping language
            for key, value in pairs(add_new) do
              for _, value2 in pairs(value) do
                if value2 == pkg.spec.name then
                  opts.linters_by_ft[key] = opts.linters_by_ft[key] or {}
                  table.insert(opts.linters_by_ft[key], pkg.spec.name)
                end
              end
            end

            local val_ignore = ignore[ftl]
            if val_ignore ~= nil then
              for _, value in pairs(val_ignore) do
                if value ~= pkg.spec.name then
                  opts.linters_by_ft[ftl] = opts.linters_by_ft[ftl] or {}
                  table.insert(opts.linters_by_ft[ftl], pkg.spec.name)
                end
              end
            else
              opts.linters_by_ft[ftl] = opts.linters_by_ft[ftl] or {}
              table.insert(opts.linters_by_ft[ftl], pkg.spec.name)
            end
          end
        end
      end
    end
  end
  -- print(table.concat(listtest, ","))
  return opts
end

M.setup = function(opts)
  local cfg = M.register(opts)
  require("lint").linters_by_ft = cfg.linters_by_ft or {}
end

return M
