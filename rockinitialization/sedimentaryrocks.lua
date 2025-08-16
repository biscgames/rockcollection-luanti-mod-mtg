local rocks = {
    argillite = {
        description = "Argillite",
        groups = {
            cracky=3
        }
    },
    arkose = {
        description = "Arkose",
        groups = {
            cracky=3
        }
    },
    bifrock = {
        description = "Banded Iron Formation",
        groups = {
            cracky=3
        }
    },
    breccia = {
        description = "Breccia",
        groups = {
            cracky=3
        }
    },
    calcarenite = {
        description = "Calcarenite",
        groups = {
            cracky=3
        }
    },
    chalk = {
        description = "Chalk",
        groups = {
            cracky=3,
            crumbly=2
        }
    },
    chert = {
        description = "Chert",
        groups = {
            cracky=3
        }
    },
    claystone = {
        description = "Claystone",
        groups = {
            cracky=3,
            crumbly=1.5
        }
    },
    conglomerate = {
        description = "Conglomerate",
        groups = {
            cracky=3
        }
    },
    coquina = {
        description = "Coquina",
        groups = {
            cracky=3
        }
    }
}

for k,v in pairs(rocks) do
    local item_name = "rockcollection:"..k.."item"
    local block_name = "rockcollection:"..k.."block"

    core.register_craftitem(item_name,{
        description = v.description,
        inventory_image = "rockcollection_"..k..".png",
        on_use = function()end
    })
    core.register_node(block_name,{
        description = v.description.." Block",
        tiles = {"rockcollection_blockbase.png^[combine:16x16"..
            ":-4,-4=rockcollection_"..k..".png"..
            ":4,-4=rockcollection_"..k..".png"..
            ":-4,4=rockcollection_"..k..".png"..
            ":4,4=rockcollection_"..k..".png"},
        groups = v.groups
    })
    core.register_craft({
        type = "shapeless",
        output = block_name,
        recipe = {item_name,item_name,item_name,item_name}
    })
    core.register_craft({
        type = "shapeless",
        output = item_name.." 4",
        recipe = {block_name}
    })
end