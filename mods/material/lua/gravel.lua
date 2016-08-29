--[[
mods/material/lua/gravel.lua
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

core.register_node("material:gravel", {
	description = "Gravel",
	tiles = {"material_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"material:flint"}, rarity = 16},
			{items = {"material:gravel"}}
		}
	}
})
