-- trainblocks/craft.lua
-- Crafting recipes for trainblocks
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

minetest.register_craft({
	output = 'trainblocks:subwayblock',
	recipe = {
		{ '',          'dye:blue',      '' },
		{ 'dye:white', 'default:glass', 'dye:white' },
		{ '',          'dye:blue',      '' },
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnblock',
	recipe = {
		{ '',          'dye:green',     '' },
		{ 'dye:white', 'default:glass', 'dye:white' },
		{ '',          'dye:green',     '' },
	}
})

--lineblocks from 1 to 10
local dyes1 = { "blue", "red", "violet", "green", "orange", "yellow", "gray", "magenta", "cyan", "black" }
local dyes2 = { "white", "white", "white", "white", "white", "black", "white", "white", "white", "white" }

for count = 1, 10, 1 do
	minetest.register_craft({
		output = "trainblocks:line" .. count .. " 4",
		recipe = {
			{ '',                     "dye:" .. dyes1[count],  '' },
			{ "dye:" .. dyes2[count], 'default:glass',         '' },
			{ '',                     '',                      '' },
		}
	})
end



--subway direction signs

minetest.register_craft({
	output = 'trainblocks:subwaysignL 2',
	recipe = {
		{ '',          '',              '' },
		{ 'dye:white', 'default:glass', 'dye:blue' },
		{ '',          '',              '' },
	}
})

minetest.register_craft({
	output = 'trainblocks:subwaysignR 2',
	recipe = {
		{ '',         '',              '' },
		{ 'dye:blue', 'default:glass', 'dye:white' },
		{ '',         '',              '' },
	}
})

--sbahn direction signs

minetest.register_craft({
	output = 'trainblocks:sbahnsignL 2',
	recipe = {
		{ '',          '',              '' },
		{ 'dye:white', 'default:glass', 'dye:green' },
		{ '',          '',              '' },
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnsignR 2',
	recipe = {
		{ '',         '',              '' },
		{ 'dye:blue', 'default:glass', 'dye:green' },
		{ '',         '',              '' },
	}
})
