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
  -- PATH_TO_BANNER should led to file in which banner ascii art should be written
  ["PATH_TO_BANNER"] = "",
  ["DEFAULT_BANNER"] = [[

  ██████   █████                   █████   █████  ███
 ░░██████ ░░███                   ░░███   ░░███  ░░░
  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████
  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███
  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███
  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███
  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████
 ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░

  ]]
}
