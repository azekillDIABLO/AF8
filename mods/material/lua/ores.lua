--[[
mods/material/lua/ores.lua
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

-- Minerals

local stones = {
	{"stone"},
	{"sandstone"},
	{"desert_stone"}
}

for _,stone in pairs(stones) do
	stone = stone[1]
	core.register_node("material:" .. stone .. "_with_coal", {
		description = "Coal Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_coal.png"},
		groups = {cracky = 3, not_in_creative_inventory = 1},
		drop = 'material:coal_lump',
		
	})

	core.register_node("material:" .. stone .. "_with_iron", {
		description = "Iron Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_iron.png"},
		groups = {cracky = 2, not_in_creative_inventory = 1},
		drop = 'material:iron_lump',

	})

	core.register_node("material:" .. stone .. "_with_copper", {
		description = "Copper Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_copper.png"},
		groups = {cracky = 2, not_in_creative_inventory = 1},
		drop = 'material:copper_lump',

	})

	core.register_node("material:" .. stone .. "_with_mese", {
		description = "Mese Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_mese.png"},
		paramtype = "light",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		drop = "material:mese_crystal",

		light_source = 1,
	})

	core.register_node("material:" .. stone .. "_with_diamond", {
		description = "Diamond Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_diamond.png"},
		groups = {cracky = 1, not_in_creative_inventory = 1},
		drop = "material:diamond",

	})

	core.register_node("material:" .. stone .. "_with_gold", {
		description = "Gold Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_gold.png"},
		drop = "material:gold_lump",
		groups = {cracky = 2, not_in_creative_inventory = 1},

	})

	core.register_node("material:" .. stone .. "_with_salt", {
		description = "Salt Ore",
		tiles = {"material_" .. stone .. ".png^material_mineral_salt.png"},
		groups = {cracky = 2, not_in_creative_inventory = 1},
		drop = {
			max_items = 5,
			items = {
				{items = {"material:salt 2"}},
				{items = {"material:salt"}, rarity = 2},
				{items = {"material:salt"}, rarity = 3},
				{items = {"material:salt"}, rarity = 5}
			}
		},

	})
end



-- Blocks

core.register_node("material:mese", {
	description = "Mese Block",
	tiles = {"material_mese_block.png"},
	paramtype = "light",
	groups = {cracky = 1, level = 2},

	light_source = 3,
})

core.register_node("material:coalblock", {
	register = {stair = true, slab = true},
	description = "Coal Block",
	tiles = {"material_coal_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, fuel = 370},

})

core.register_node("material:steelblock", {
	register = {stair = true, slab = true},
	description = "Steel Block",
	tiles = {"material_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},

	stair = {legacy_alias = "stairs:stair_steelblock"},
	slab = {legacy_alias = "stairs:slab_steelblock"},
})

core.register_node("material:copperblock", {
	register = {stair = true, slab = true},
	description = "Copper Block",
	tiles = {"material_copper_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},

	stair = {legacy_alias = "stairs:stair_copperblock"},
	slab = {legacy_alias = "stairs:slab_copperblock"},
})

core.register_node("material:bronzeblock", {
	register = {stair = true, slab = true},
	description = "Bronze Block",
	tiles = {"material_bronze_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},

	stair = {legacy_alias = "stairs:stair_bronzeblock"},
	slab = {legacy_alias = "stairs:slab_bronzeblock"},
})

core.register_node("material:goldblock", {
	register = {stair = true, slab = true},
	description = "Gold Block",
	tiles = {"material_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},

	stair = {legacy_alias = "stairs:stair_goldblock"},
	slab = {legacy_alias = "stairs:slab_goldblock"},
})

core.register_node("material:diamondblock", {
	register = {stair = true, slab = true},
	description = "Diamond Block",
	tiles = {"material_diamond_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

	stair = {legacy_alias = "stairs:stair_diamondblock"},
	slab = {legacy_alias = "stairs:slab_diamondblock"},
})

core.register_node("material:saltblock", {
	register = {stair = true, slab = true},
	description = "Salt Block",
	tiles = {"material_salt_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},

})


--
-- Crafting
--

core.register_craft({
	output = "material:mese",
	recipe = {
		{"material:mese_crystal", "material:mese_crystal", "material:mese_crystal"},
		{"material:mese_crystal", "material:mese_crystal", "material:mese_crystal"},
		{"material:mese_crystal", "material:mese_crystal", "material:mese_crystal"},
	}
})

core.register_craft({
	output = "material:coalblock",
	recipe = {
		{"material:coal_lump", "material:coal_lump", "material:coal_lump"},
		{"material:coal_lump", "material:coal_lump", "material:coal_lump"},
		{"material:coal_lump", "material:coal_lump", "material:coal_lump"},
	}
})

core.register_craft({
	output = "material:steelblock",
	recipe = {
		{"material:steel_ingot", "material:steel_ingot", "material:steel_ingot"},
		{"material:steel_ingot", "material:steel_ingot", "material:steel_ingot"},
		{"material:steel_ingot", "material:steel_ingot", "material:steel_ingot"},
	}
})

core.register_craft({
	output = "material:copperblock",
	recipe = {
		{"material:copper_ingot", "material:copper_ingot", "material:copper_ingot"},
		{"material:copper_ingot", "material:copper_ingot", "material:copper_ingot"},
		{"material:copper_ingot", "material:copper_ingot", "material:copper_ingot"},
	}
})

core.register_craft({
	output = "material:bronzeblock",
	recipe = {
		{"material:bronze_ingot", "material:bronze_ingot", "material:bronze_ingot"},
		{"material:bronze_ingot", "material:bronze_ingot", "material:bronze_ingot"},
		{"material:bronze_ingot", "material:bronze_ingot", "material:bronze_ingot"},
	}
})

core.register_craft({
	output = "material:goldblock",
	recipe = {
		{"material:gold_ingot", "material:gold_ingot", "material:gold_ingot"},
		{"material:gold_ingot", "material:gold_ingot", "material:gold_ingot"},
		{"material:gold_ingot", "material:gold_ingot", "material:gold_ingot"},
	}
})

core.register_craft({
	output = "material:diamondblock",
	recipe = {
		{"material:diamond", "material:diamond", "material:diamond"},
		{"material:diamond", "material:diamond", "material:diamond"},
		{"material:diamond", "material:diamond", "material:diamond"},
	}
})
