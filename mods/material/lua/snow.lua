--[[
mods/material/lua/snow.lua
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

core.register_node("material:snow", {
	description = "Snow",
	tiles = {"material_snow.png"},
	inventory_image = "material_snowball.png",
	wield_image = "material_snowball.png",
	paramtype = "light",
	buildable_to = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, puts_out_fire = 1, snowy = 1},

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "material:dirt_with_grass" then
			minetest.set_node(pos, {name = "material:dirt_with_snow"})
		end
	end,
})

core.register_node("material:snowblock", {
	description = "Snow Block",
	tiles = {"material_snow.png"},
	groups = {crumbly = 3, puts_out_fire = 1, snowy = 1},
})


-- Crafting

core.register_craft({
	output = "material:snowblock",
	recipe = {
		{"material:snow", "material:snow", "material:snow"},
		{"material:snow", "material:snow", "material:snow"},
		{"material:snow", "material:snow", "material:snow"},
	}
})

core.register_craft({
	output = "material:snow 9",
	recipe = {
		{"material:snowblock"},
	}
})
