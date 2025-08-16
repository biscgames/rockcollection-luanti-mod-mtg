local chalk = core.registered_items["rockcollection:chalkitem"]
local chalkdust_img = "rockcollection_chalkdust.png"
core.register_entity("rockcollection:chalkdust",{
    visual = "mesh",
    mesh = "rockcollection_chalkdust.obj",
    textures = {chalkdust_img},
    
    physical = false,
    visual_size = {x=10,y=10,z=10},
    collisionbox = {-0.5,-0.1,-0.5,0.5,0.1,0.5},
    collide_with_objects = false,
    portable = true,
    owner = nil,
    velocity_y = 0,

    on_step = function(self,dt)
        local p = self.object:get_pos()
        local below = vector.subtract(p,{x=0,y=self.velocity_y*dt,z=0})
        if core.get_node(vector.subtract(below,{x=0,y=0.01,z=0})).name == "air" then
            self.velocity_y = self.velocity_y + 0.5
            self.object:set_pos(below)
        else
            self.velocity_y = 0
        end
        local touching_node = core.get_node(p)
        if not touching_node or core.get_item_group(touching_node.name,"water")>0 then
            self.object:remove()
        end
    end,
    on_activated = function(self)
        core.sound_play("rockcollection_chalkdraw.ogg",{
            pos=self.object:get_pos(),
            gain=1.0,
            max_hear_distance = 10
        },true)
    end
})

chalk.on_use = function(itemstack,user,thing)
    if thing.type ~= "node" then return end
    local pos = vector.add(thing.under,{x=0,y=0.51,z=0})
    local entity = core.add_entity(pos,"rockcollection:chalkdust")
    entity:get_luaentity().owner = user:get_player_name()

    return itemstack
end