local default_path = core.get_modpath(core.get_current_modname())

-- Rocks
dofile(default_path.."/rockinitialization/igneousrocks.lua")
dofile(default_path.."/rockinitialization/sedimentaryrocks.lua")
dofile(default_path.."/rockinitialization/biome.lua")
dofile(default_path.."/rockinitialization/crafting.lua")

-- Other stuff
dofile(default_path.."/misc/credits.lua")
dofile(default_path.."/misc/chalk_function.lua")