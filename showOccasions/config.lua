local lfs = require("lfs")

local function abspath(path)
  local current = lfs.currentdir()
  lfs.chdir(path:match("(.+)/") or ".")
  local full = lfs.currentdir() .. "/" .. (path:match(".+/([^/]+)$") or path)
  lfs.chdir(current)
  return full
end

return {
  ["ABSOLUTE_PATH"] = abspath("config.lua"):match("^(.*)/"),
  ["PATH_TO_BANNER"] = os.getenv("HOME") .. "/.config/nvim/lua/fartaniekupisz/assets/banner.txt"
}
