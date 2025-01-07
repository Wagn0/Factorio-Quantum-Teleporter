local function teleport_to_planet(player, surface_name)
    local destination_surface = game.surfaces[surface_name]
    if destination_surface then
        local destination_position = {x = 0, y = 0} -- Posição padrão
        player.teleport(destination_position, destination_surface)
        game.print(player.name .. " foi teletransportado para " .. surface_name)
    else
        game.print("Superfície " .. surface_name .. " não encontrada!")
    end
end

local function teleport_to_planet_with_cords(player, surface_name, x, y)
    local destination_surface = game.surfaces[surface_name]
    if destination_surface then
        local destination_position = {x = x, y = y}
        player.teleport(destination_position, destination_surface)
        game.print(
            player.name .. " foi teletransportado para " .. surface_name .. " nas coordenadas " .. x .. ", " .. y
        )
    else
        game.print("Superfície " .. surface_name .. " não encontrada!")
    end
end


return {
    teleport_to_planet_with_cords = teleport_to_planet_with_cords,
    teleport_to_planet = teleport_to_planet
}
