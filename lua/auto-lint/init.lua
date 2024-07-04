local M = {}
M.setup = function(opts)
  opts.ensure_installed = opts.ensure_installed or {}
  opts.map_lang = opts.map_lang or {}
  opts.map_name = opts.map_name or {}
  opts.add_new = opts.add_new or {}
  opts.ignore = opts.ignore or {}
  require("auto-lint.masonregister").setup(opts)
end

return M
