local rocks = {
    adakite = {
        description = "Adakite",-- Or should i say title?
        groups = {
            cracky=3
        }
    },
    agpaiticrock = {
        description = "Agpaitic Rock",
        groups = {
            cracky=3
        }
    },
    andesiterock = {
        description = "Andesite",
        groups = {
            cracky=3
        }
    },
    graniterock = {
        description = "Alkali Feldspar Granite",
        groups = {
            cracky=3
        }
    },
    anorthosite = {
        description = "Anorthosite",
        groups = {
            cracky=3
        }
    },
    basaltrock = {
        description = "Basalt",
        groups = {
            cracky=3
        }
    },
    basalticandesite = {
        description = "Basaltic Andesite",
        groups = {
            cracky=3
        }
    },
    napoleonite = {
        description = "Diorite Orbiculaire",
        groups = {
            cracky=3
        }
    },
    diorite = {
        description = "Diorite",
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