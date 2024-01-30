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

-- lineblocks from 1 to 10
-- gray -> grey from https://github.com/Montandalar/trainblocks/commit/5e6f906f7d5716127a4b760df8bc6ea1f61c84ea
-- Bonus: Line 0
local dyes1 = { "blue", "blue", "red", "violet", "green", "orange", "yellow", "grey", "magenta", "cyan", "black" }
local dyes2 = { "blue", "white", "white", "white", "white", "white", "black", "white", "white", "white", "white" }

for count = 0, 10, 1 do
	minetest.register_craft({
		output = "trainblocks:line" .. count .. " 4",
		recipe = {
			{ '',                     "dye:" .. dyes1[count + 1],  '' },
			{ "dye:" .. dyes2[count + 1], 'default:glass',         '' },
		}
	})
end



--subway direction signs

minetest.register_craft({
	output = 'trainblocks:subwaysignL 2',
	recipe = {
		{ 'dye:white', 'default:glass', 'dye:blue' }
	}
})

minetest.register_craft({
	output = 'trainblocks:subwaysignR 2',
	recipe = {
		{ 'dye:blue', 'default:glass', 'dye:white' },
	}
})

--sbahn direction signs

minetest.register_craft({
	output = 'trainblocks:sbahnsignL 2',
	recipe = {
		{ 'dye:white', 'default:glass', 'dye:green' },
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnsignR 2',
	recipe = {
		{ 'dye:blue', 'default:glass', 'dye:green' },
	}
})

-- Switch betwen modern station direction signs and older style
-- from https://github.com/Montandalar/trainblocks/commit/4f4f6004e1e5067969fcc0efd8785a55ef36a6e2

minetest.register_craft({
	type = "shapeless",
	output = 'trainblocks:stationsignR_modern',
	recipe = {'trainblocks:stationsignR'}
})
minetest.register_craft({
	type = "shapeless",
	output = 'trainblocks:stationsignL_modern',
	recipe = {'trainblocks:stationsignL'}
})
minetest.register_craft({
	type = "shapeless",
	recipe = {'trainblocks:stationsignR_modern'},
	output = 'trainblocks:stationsignR'
})
minetest.register_craft({
	type = "shapeless",
	recipe = {'trainblocks:stationsignL_modern'},
	output = 'trainblocks:stationsignL'
})

-- Platform signs 0-10
-- from https://github.com/Montandalar/trainblocks/commit/f5e86f18f437ba3cb3337369d0b009e94dd5a8f5

minetest.register_craft({
	output = "trainblocks:platformsign0",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'', 'dye:white', ''},
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign1",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', 'dye:white'},
		{'', '' ,'dye:white'}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign2",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', ''},
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign3",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign4",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', ''},
		{'dye:white', 'dye:white' ,''}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign5",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
		{'dye:white', 'dye:white' ,''}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign6",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
		{'dye:white', 'dye:white' ,'dye:white'}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign7",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', 'dye:white'},
		{'', 'dye:white' ,''}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign8",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'dye:white', '', 'dye:white'},
		{'dye:white', 'dye:white' ,'dye:white'}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign9",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', 'dye:white', 'dye:white'},
		{'', '' ,'dye:white'}
	}
})

minetest.register_craft({
	output = "trainblocks:platformsign10",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', '', ''},
		{'dye:white', '' ,'dye:white'}
	}
})

-- Recipies for (modern) station blocks
-- from https://github.com/Montandalar/trainblocks/commit/735e61288ad55317d4fffcdb4e58b5feebc419d0

minetest.register_craft({
	output = 'trainblocks:station_block',
	recipe = {
		{'', 'dye:black', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:black', ''},
	}
})

minetest.register_craft({
	type = 'shapeless',
	output = 'trainblocks:station_block_modern',
	recipe = {'trainblocks:station_block'}
})

minetest.register_craft({
	type = 'shapeless',
	recipe = {'trainblocks:station_block_modern'},
	output = 'trainblocks:station_block'
})