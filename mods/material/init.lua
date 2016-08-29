--[[
mods/material/init.lua
======================
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

local modpath = core.get_modpath("material") .. "/lua/"

dofile(modpath .. "bricks.lua")
dofile(modpath .. "cobble.lua")
dofile(modpath .. "dirt.lua")
dofile(modpath .. "gravel.lua")
dofile(modpath .. "ice.lua")
dofile(modpath .. "lava.lua")
dofile(modpath .. "ores.lua")
dofile(modpath .. "sand.lua")
dofile(modpath .. "snow.lua")
dofile(modpath .. "stone.lua")
dofile(modpath .. "water.lua")
