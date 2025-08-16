local igneousrocks = {
    "rockcollection:adakiteblock",
    "rockcollection:agpaiticrockblock",
    "rockcollection:andesiterockblock",
    "rockcollection:graniterockblock",
    "rockcollection:anorthositeblock",
    "rockcollection:basalticandesiteblock",
    "rockcollection:napoleoniteblock",
    "rockcollection:dioriteblock"
}
local sedimentaryrocks = {
    "rockcollection:argilliteblock",
    "rockcollection:bifrockblock",
    "rockcollection:brecciablock",
    "rockcollection:calcareniteblock",
    "rockcollection:chertblock",
    "rockcollection:claystoneblock",
    "rockcollection:conglomerateblock",
    "rockcollection:coquinablock"
}

core.register_biome({
    name = "rockcollection:landobones",
    node_dust = "rockcollection:chalkblock",
    node_top = "bones:bones",depth_top = 2,
    node_filler = "bones:bones",depth_filler = 5,
    heat_point = 20,
    humidity_point = 20,
})
core.register_biome({
    name = "rockcollection:landoigneous",
    node_top = "rockcollection:basaltrockblock",depth_top = 3,
    node_filler = "bones:bones",depth_filler = 3,
    heat_point = 40,
    humidity_point = 40,
})
core.register_biome({
    name = "rockcollection:landosedimentary",
    node_top = "rockcollection:arkoseblock",depth_top = 3,
    node_filler = "bones:bones",depth_filler = 3,
    heat_point = 60,
    humidity_point = 60,
})

core.register_decoration({
    deco_type = "simple",
    place_on = {
        "rockcollection:basaltrockblock",
        "rockcollection:arkoseblock"
    },
    biomes = {"rockcollection:landoigneous"},
    y_min = 10,
    y_max = 31000,
    fill_ratio = 1000,
    decoration = igneousrocks
})
core.register_decoration({
    deco_type = "simple",
    place_on = {
        "rockcollection:basaltrockblock",
        "rockcollection:arkoseblock"
    },
    biomes = {"rockcollection:landosedimentary"},
    y_min = 10,
    y_max = 31000,
    fill_ratio = 1000,
    decoration = sedimentaryrocks
})