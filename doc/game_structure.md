# AF8 Game Documentation - Game Structure

AF8 is splitted up into several mods. Here will be explained which node or item belongs to which mod.
This definition may be changed completely in the alpha-phase, smaller changes will be also possible later.

## Decorations - decor
In the decor mod are only decorations. All nodes are usually not generated into the world (expecting houses/ruins).

Examples:
- Red Wool :heavy_check_mark:
- Item Frame :heavy_check_mark:
- Furnace :heavy_check_mark:
- Mese Lamp :heavy_check_mark:
- Wooden Fence :heavy_check_mark:
- Dirt with Grass :x:
  - Should be in the material mod, because it generates into the world and is mostly dirt and not grass.
- Hamburger :x:
  - This is food, so it belongs to the food mod.
- Wooden Pickaxe :x:
  - This is a tool, so it belongs to the tool mod.
- Stonebricks :x:
  - They should be directly registered by an API with its normal stone variant (-> material mod).
- Bricks :x:
  - They should be in the same mod as clay, clay lumps and clay bricks.

## Environment - env
This mod does everything about growing and sounds.

## Flora / Plants - flora
Here all plants like grass, papyrus, etc. will be registered, but not nodes like dirt with grass.

## Food - food
This mod contains all food items.

## Game / APIs - game
This mod contains all global functions of APIs, so all real APIs, but only other mods should use and register items (nodes, craftitems, etc.).

Here are also all textures for engine-side things, like the wieldhand, hearts, crack_anylength, ...

## Graphical User Interface - gui
This mod designs the inventory and makes the player 3d.

## Map Generation - mapgen
In this mod all biomes and decorations in them will be registered. It shouldn't contain any nodes or items.

## Generated Materials - material
The materials mod should contain everything that'll be generated into the world, but is not a plant (these belong to the flora mod) and materials that'll be dropped from these nodes (coal lump, iron lump, etc.) and also the full blocks of these items (coal block, diamond block).

## Mobs / Animals - mobs
This mod contains everything that lives, expect the player.

## Tools - tools
The tools mod only contains tools like the shears, screwdriver and of course pickaxes, axes, shovels and swords.


###### Copyright (C) 2016 LNJ <git@lnj.li> and contributors; GNU Free Documentation License, Version 1.3
