--[[
mods/material/lua/dirt.lua
==========================
Copyright (C) 2011-2012 celeron55, Perttu Ahola <celeron55@gmail.com>
Copyright (C) 2016 LNJ <git@lnj.li>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
]]

-- Wet

core.register_node("material:clay", {
	description = "Clay",
	tiles = {"material_clay.png"},
	groups = {crumbly = 3},
	drop = 'material:clay_lump 4',
})


-- Dry

core.register_node("material:dirt", {
	description = "Dirt",
	tiles = {"material_dirt.png"},
	groups = {crumbly = 3, soil = 1, dirt = 1},
})

core.register_node("material:dry_dirt", {
	description = "Dry Dirt",
	tiles = {"material_dry_dirt.png"},
	groups = {crumbly = 3, dirt = 4},
})


-- Covered

core.register_node("material:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"material_grass.png", "material_dirt.png",
		{name = "material_dirt.png^material_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, dirt = 2},
	drop = 'material:dirt',
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "material_grass_footstep", gain = 0.2},
--		on_place = {name = "material_grass_place", gain = 0.5},
--	}),
})

core.register_node("material:dirt_with_grass_footsteps", {
	description = "Dirt with Grass and Footsteps",
	tiles = {"material_grass.png^material_footprint.png", "material_dirt.png",
		{name = "material_dirt.png^material_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1, dirt = 2},
	drop = 'material:dirt',
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "material_grass_footstep", gain = 0.25},
--	}),
})

core.register_node("material:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"material_dry_grass.png",
		"material_dirt.png",
		{name = "material_dirt.png^material_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, dirt = 2},
	drop = 'material:dirt',
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "material_grass_footstep", gain = 0.4},
--	}),
})

core.register_node("material:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"material_snow.png", "material_dirt.png",
		{name = "material_dirt.png^material_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, dirt = 3, snowy = 1},
	drop = 'material:dirt',
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "material_snow_footstep", gain = 0.25},
--	}),
})


-- Crafting

core.register_craft({
	output = "material:clay",
	recipe = {
		{"material:clay_lump", "material:clay_lump"},
		{"material:clay_lump", "material:clay_lump"},
	}
})

core.register_craft({
	type = "shapeless",
	output = "material:dirt_with_snow",
	recipe = {"material:dirt", "material:snow"}
})

core.register_craft({
	type = "cooking",
	output = "material:dry_dirt",
	recipe = "material:dirt",
})
