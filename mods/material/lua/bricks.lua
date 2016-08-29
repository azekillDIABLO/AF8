--[[
mods/material/lua/bricks.lua
============================
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

core.register_node("material:brick", {
	description = "Brick Block",
	tiles = {"material_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	
	register = {stair = true, slab = true, wall = true},
	stair = {
		description = "Brick Stair",
	},
	slab = {
		description = "Brick Slab",
	},
	wall = {
		description = "Brick Wall"
	}
})


-- Stonebricks

core.register_node("material:stonebrick", {
	register = {stair = true, slab = true, wall = true},
	description = "Stone Brick",
	tiles = {"material_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	
})

core.register_node("material:desert_stonebrick", {
	register = {stair = true, slab = true, wall = true},
	description = "Desert Stone Brick",
	tiles = {"material_desert_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	
})

core.register_node("material:sandstonebrick", {
	register = {stair = true, slab = true, wall = true},
	description = "Sandstone Brick",
	tiles = {"material_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	
})

core.register_node("material:obsidianbrick", {
	register = {stair = true, slab = true, wall = true},
	description = "Obsidian Brick",
	tiles = {"material_obsidian_brick.png"},
	is_ground_content = false,
	
	groups = {cracky = 1, level = 2}
})


-- Crafting

core.register_craft({
	output = "material:brick",
	recipe = {
		{"material:clay_brick", "material:clay_brick"},
		{"material:clay_brick", "material:clay_brick"},
	}
})

core.register_craft({
	output = "material:stonebrick 4",
	recipe = {
		{"material:stone", "material:stone"},
		{"material:stone", "material:stone"},
	}
})

core.register_craft({
	output = "material:sandstonebrick 4",
	recipe = {
		{"material:sandstone", "material:sandstone"},
		{"material:sandstone", "material:sandstone"},
	}
})

core.register_craft({
	output = "material:obsidianbrick 4",
	recipe = {
		{"material:obsidian", "material:obsidian"},
		{"material:obsidian", "material:obsidian"}
	}
})

core.register_craft({
	output = "material:desert_stonebrick 4",
	recipe = {
		{"material:desert_stone", "material:desert_stone"},
		{"material:desert_stone", "material:desert_stone"},
	}
})
