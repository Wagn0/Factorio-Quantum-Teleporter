local functions = require("control.functions")
local guimaker = require("gui.gui-maker")

local function removed_teleport_equipment(event)
    local player = game.get_player(event.player_index)
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    -- Verifica se o equipamento removido é o "quantum-teleporter-equipment"
    if event.equipment and event.equipment.name == "quantum-teleporter-equipment" then
        guimaker.close_teleport_window(player)
    end
    
end

local function crafted_teleport(event)
    local player = game.players[event.player_index]
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    local item_stack = event.item_stack
    if item_stack and item_stack.valid and item_stack.name == "quantum-teleporter-equipment" then
        guimaker.create_input_window(player)
    end
end

local function equiped_teleport(event)
    local player = game.get_player(event.player_index)
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    local equipment = event.equipment
    if equipment.name == "quantum-teleporter-equipment" then
        guimaker.create_input_window(player)
    end
end

local function player_died_teleport(event)
    local player = game.players[event.player_index]
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end
    guimaker.close_teleport_window(player)
end

-- teleport 1.0
local function teleport_planet(event)
    local player = game.players[event.player_index]
    local element = event.element
    if not element or not element.valid then
        return
    end

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        functions.Teleport_to_planet(player, surface_name)
    end
end

local function teleport_cords(event)
    local player = game.players[event.player_index]
    local element = event.element
    if not element or not element.valid then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        local coord_x = tonumber(player.gui.screen.teleport_window.coord_x.text) or 0
        local coord_y = tonumber(player.gui.screen.teleport_window.coord_y.text) or 0

        functions.Teleport_to_planet_with_cords(player, surface_name, coord_x, coord_y)
    end
end

return {
    removed_teleport_equipment = removed_teleport_equipment,
    crafted_teleport = crafted_teleport,
    equiped_teleport = equiped_teleport,
    player_died_teleport = player_died_teleport,
    teleport_planet = teleport_planet,
    teleport_cords = teleport_cords
}
