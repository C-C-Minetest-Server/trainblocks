-- trainblocks/alias.lua
-- For compactibility with advtrains_subwayblocks
--[[
  Copyright (C) 2018  maxx, LuLa, gpcf
  Copyright (C) 2024  1F616EMO

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Affero General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Affero General Public License for more details.

  You should have received a copy of the GNU Affero General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]

for count = 1, 10, 1 do
	minetest.register_alias("advtrains_subwayblocks:line" .. count, "trainblocks:line" .. count)
end

minetest.register_alias("advtrains_subwayblocks:germany", "trainblocks:subwayblock")
minetest.register_alias("advtrains_subwayblocks:mr", "trainblocks:mr")
