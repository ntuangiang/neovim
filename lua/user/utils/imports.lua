local M = {}

function M.imports(f)
  local t = {}

  for i, v in ipairs(f) do
    t[i] = require(v)
  end

  return table.unpack(t)
end

return M
