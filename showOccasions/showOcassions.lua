local configdata = require("config")

package.path = package.path .. ";" .. configdata["ABSOLUTE_PATH"] .. "/?.lua"

local OCCASIONS_ART = require("ocassionsAsciiArt")
local current_day_and_month = os.date("%d-%m")


local alphaDashBoardBannerFile = io.open(configdata["PATH_TO_BANNER"], "w")
if alphaDashBoardBannerFile == nil then
  print("file in not found in " .. configdata["PATH_TO_BANNER"])
  return
end

if OCCASIONS_ART.DATES_ASCII_ART[current_day_and_month] == nil then
  alphaDashBoardBannerFile:write([[

  ██████   █████                   █████   █████  ███
 ░░██████ ░░███                   ░░███   ░░███  ░░░
  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████
  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███
  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███
  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███
  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████
 ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░

  ]])
else
  alphaDashBoardBannerFile:write(OCCASIONS_ART.DATES_ASCII_ART[current_day_and_month])
end

alphaDashBoardBannerFile:close()
