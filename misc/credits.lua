local formspec = [[
    formspec_version[6]
    size[8,8]
    position[0.5,0.5]
    label[0.5,0.5;Special Thanks:]
    label[0.5,1;the4spaceconstants2181 - Adakite Rock Texture]
    label[0.5,1.5;You - Installation of the modpack holding rock_collection]
    label[0.5,5;This mod, as well as the rest of the modpacks from]
    label[0.5,5.3;rockymodpack has been programmed by biscgames.]
    label[0.5,5.7;You may use the scripts to learn about scripting]
    label[0.5,6;with Luanti.]
    button_url[1.5,6.4;5,0.5;license_link;Adakite Texture License Link (CC0);https://creativecommons.org/public-domain/cc0/]
    button[2,7;4,0.5;hide_formspec;OK]
]]
local function hide_formspec(name)
    core.close_formspec(name,"rock_collection:attributes")
end
local function open_formspec(name)
    core.show_formspec(name, "rock_collection:attributes", formspec)
end

core.register_chatcommand("rockcollection_credits",{
    func = function(name)open_formspec(name)end,
    description = "Gives credits and links to licenses in a formspec.",
    privs = {},
    params = ""
})
core.register_on_player_receive_fields(function(plr,fname,fields)
    if fname ~= "rock_collection:attributes" then return end
    if fields.hide_formspec then
        hide_formspec(plr:get_player_name())
    end
end)