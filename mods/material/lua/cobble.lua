--[[
mods/material/lua/cobble.lua
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

core.register_node("material:cobble", {
	register = {stair = true, slab = true, table = true, wall = true},
	description = "Cobblestone",
	tiles = {"material_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	
	table = {
		groups = {cracky = 2},
	},
})

core.register_node("material:mossycobble", {
	register = {stair = true, slab = true, wall = true},
	description = "Mossy Cobblestone",
	tiles = {"material_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	
})

core.register_node("material:desert_cobble", {
	register = {stair = true, slab = true, wall = true},
	description = "Desert Cobblestone",
	tiles = {"material_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	
})
