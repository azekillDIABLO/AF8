--[[
mods/material/lua/stone.lua
===========================
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

core.register_node("material:stone", {
	description = "Stone",
	tiles = {"material_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'material:cobble',
	legacy_mineral = true,

	register = {stair = true, slab = true, table = true, wall = true},
	table = {
		groups = {cracky = 3}
	},
})

core.register_node("material:desert_stone", {
	description = "Desert Stone",
	tiles = {"material_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'material:desert_cobble',
	legacy_mineral = true,

	register = {stair = true, slab = true, wall = true},
})

core.register_node("material:sandstone", {
	register = {stair = true, slab = true, wall = true},
	description = "Sandstone",
	tiles = {"material_sandstone.png"},
	groups = {crumbly = 2, cracky = 3},

})

core.register_node("material:obsidian", {
	register = {stair = true, slab = true, wall = true},
	description = "Obsidian",
	tiles = {"material_obsidian.png"},

	groups = {cracky = 1, level = 2},
})


-- Crafting

core.register_craft({
	type = "cooking",
	output = "material:stone",
	recipe = "material:cobble",
})

core.register_craft({
	type = "cooking",
	output = "material:stone",
	recipe = "material:mossycobble",
})

core.register_craft({
	type = "cooking",
	output = "material:desert_stone",
	recipe = "material:desert_cobble",
})

core.register_craft({
	output = "material:sandstone",
	recipe = {
		{"group:sand", "group:sand"},
		{"group:sand", "group:sand"},
	}
})

core.register_craft({
	output = "material:obsidian",
	recipe = {
		{"material:obsidian_shard", "material:obsidian_shard", "material:obsidian_shard"},
		{"material:obsidian_shard", "material:obsidian_shard", "material:obsidian_shard"},
		{"material:obsidian_shard", "material:obsidian_shard", "material:obsidian_shard"},
	}
})
