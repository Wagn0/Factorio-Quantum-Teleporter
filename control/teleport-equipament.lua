local function teleport_player(player, destination)
    if player and player.valid and player.character then
        player.teleport(destination)
        player.surface.create_entity({
            name = "big-explosion",
            position = destination
        })
    end
end

script.on_event(defines.events.on_player_used_equipment, function(event)
    local player = game.get_player(event.player_index)
    if not player then return end

    local equipment = event.equipment
    if equipment.name == "quantum-teleporter-equipment" then
        -- Defina o destino do teleporte (pode ser dinâmico com lógica personalizada)
        local destination = { x = 0, y = 0 } -- Exemplo: Coordenadas fixas
        teleport_player(player, destination)
    end
end)
