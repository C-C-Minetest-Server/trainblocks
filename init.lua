-- trainblocks/init.lua
-- Adds signs fitting the advtrains theme
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

local S = minetest.get_translator("trainblocks")

minetest.register_node("trainblocks:subwayblock", {
	description = S("Subway block"),
	light_source = 8,
	tiles = {
		"down_subwayblock.png",
		"down_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png"
	},
	is_ground_content = true,
	groups = { cracky = 3 },
	drop = "trainblocks:subwayblock"
})

minetest.register_node("trainblocks:sbahnblock", {
	description = S("S-Bahn block"),
	light_source = 8,
	tiles = {
		"down_sbahnblock.png",
		"down_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png"
	},
	is_ground_content = true,
	groups = { cracky = 3 },
	drop = "trainblocks:sbahnblock"
})

for count = 1, 10, 1 do
	minetest.register_node("trainblocks:line" .. count, {
		description = S("Line sign @1", count),
		tiles = { "front_line" .. count .. ".png" },
		drawtype = "nodebox",
		paramtype2 = "wallmounted",
		legacy_wallmounted = true,
		paramtype = "light",
		light_source = 12,
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		groups = { choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3 },
		node_box = {
			type = "wallmounted",
			wall_top = { -0.5, -0.25, -0.25, -0.4375, 0.25, 0.25 },
			wall_bottom = { -0.5, -0.25, -0.25, -0.4375, 0.25, 0.25 },
			wall_side = { -0.5, -0.25, -0.25, -0.4375, 0.25, 0.25 },

		}
	})

	minetest.register_node("trainblocks:platformsign" .. count, {
		description = S("Platform sign @1", count),
		drawtype = "nodebox",
		tiles = { "front_platform" .. count .. ".png" },
		inventory_image = "inventory_platform" .. count .. ".png",
		light_source = 5,
		groups = { cracky = 3 },
		paramtype2 = "facedir",
		paramtype = 'light',
		node_box = {
			type = "fixed",
			fixed = {
				{ -4 / 16, -4 / 16, 6 / 16, 4 / 16, 4 / 16, 8 / 16 },
			},
		},

	})
end

minetest.register_node("trainblocks:subwaysignL", {
	description = S("Subway Sign (Left)"),
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:subwaysignR", {
	description = S("Subway Sign (Right)"),
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:sbahnsignL", {
	description = S("S-Bahn Sign (Left)"),
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2l.png",
		"sbahn_sign2l.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:sbahnsignR", {
	description = S("S-Bahn Sign (Right)"),
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2.png",
		"sbahn_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:stationsignL", {
	description = S("Station Sign (Left)"),
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:stationsignR", {
	description = S("Station Sign (Right)"),
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -5 / 16, 6 / 16, 8 / 16, 5 / 16, 8 / 16 },
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = { cracky = 3 },
})

minetest.register_node("trainblocks:station_block", {
	description = S("Station Block"),
	light_source = 8,
	tiles = {
		"down_station_sign.png",
		"down_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png"
	},
	is_ground_content = true,
	groups = { cracky = 3 },
	drop = "trainblocks:station_block"
})

minetest.register_node("trainblocks:mr", {
	description = S("Mountain Railway Block"),
	light_source = 8,
	tiles = {
		"down_mr.png",
		"down_mr.png",
		"front_mr.png",
		"front_mr.png",
		"front_mr.png",
		"front_mr.png"
	},
	is_ground_content = true,
	groups = { cracky = 3 },
	drop = "trainblocks:sbahnblock"
})


dofile(minetest.get_modpath("trainblocks") .. "/craft.lua")
dofile(minetest.get_modpath("trainblocks") .. "/alias.lua")
