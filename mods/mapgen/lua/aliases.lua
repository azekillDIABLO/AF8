--[[
mods/mapgen/lua/aliases.lua
===========================
AF8 - A Minetest Subgame
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

-- Terrain
core.register_alias("mapgen_air", "air")
core.register_alias("mapgen_stone", "material:stone")
core.register_alias("mapgen_dirt", "material:dirt")
core.register_alias("mapgen_dirt_with_grass", "material:dirt_with_grass")
core.register_alias("mapgen_sand", "material:sand")
core.register_alias("mapgen_water_source", "material:water_source")
core.register_alias("mapgen_river_water_source", "material:water_source")
core.register_alias("mapgen_lava_source", "material:lava_source")
core.register_alias("mapgen_gravel", "material:gravel")
core.register_alias("mapgen_desert_stone", "material:desert_stone")
core.register_alias("mapgen_desert_sand", "material:desert_sand")
core.register_alias("mapgen_dirt_with_snow", "material:dirt_with_snow")
core.register_alias("mapgen_snowblock", "material:snowblock")
core.register_alias("mapgen_snow", "material:snow")
core.register_alias("mapgen_ice", "material:ice")
core.register_alias("mapgen_sandstone", "material:sandstone")

-- Flora (mgv6)
core.register_alias("mapgen_tree", "material:tree")
core.register_alias("mapgen_leaves", "material:leaves")
core.register_alias("mapgen_apple", "material:leaves_with_apple")
core.register_alias("mapgen_jungletree", "material:jungletree")
core.register_alias("mapgen_jungleleaves", "material:jungleleaves")
core.register_alias("mapgen_junglegrass", "material:junglegrass")
core.register_alias("mapgen_pine_tree", "material:pine_tree")
core.register_alias("mapgen_pine_needles", "material:pine_needles")

-- Dungeons
core.register_alias("mapgen_cobble", "material:cobble")
core.register_alias("mapgen_stair_cobble", "material:stair_cobble")
core.register_alias("mapgen_mossycobble", "material:mossycobble")
core.register_alias("mapgen_sandstonebrick", "material:sandstonebrick")
core.register_alias("mapgen_stair_sandstonebrick", "material:stair_sandstonebrick")
