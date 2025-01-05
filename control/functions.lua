function Teleport_to_planet(player, surface_name)
    -- Verifica se a superfície de destino existe
    local destination_surface = game.surfaces[surface_name]
    if destination_surface then
        -- Escolhe uma posição na superfície de destino para teletransportar o jogador
        local destination_position = {x = 0, y = 0} -- Posição que você deseja no novo planeta (modifique conforme necessário)

        -- Teleporta o jogador
        player.teleport(destination_position, destination_surface)
        game.print(player.name .. " foi teletransportado para " .. surface_name)
    else
        game.print("Superfície " .. surface_name .. " não encontrada!")
    end
end

function Teleport_to_planet_with_cords(player, surface_name, x, y)
    -- Verifica se a superfície de destino existe
    local destination_surface = game.surfaces[surface_name]
    if destination_surface then
        -- Escolhe uma posição na superfície de destino para teletransportar o jogador
        local destination_position = {x = x, y = y} -- Posição que você deseja no novo planeta (modifique conforme necessário)

        -- Teleporta o jogador
        player.teleport(destination_position, destination_surface)
        game.print(
            player.name ..
                " foi teletransportado para " .. surface_name .. " nas coordenadas " .. x .. ", " .. y
        )
    else
        game.print("Superfície " .. surface_name .. " não encontrada!")
    end
end

-- Função para processar a entrada do jogador
function Handle_teleport_planet(event)
    local player = game.players[event.player_index]
    local element = event.element

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text -- Obtém o nome da superfície
        Teleport_to_planet(player, surface_name)
        -- Fecha a janela após o teletransporte
        player.gui.screen.teleport_window.destroy()
    end
end

function Handle_teleport_cords(event)
    local player = game.players[event.player_index]
    local element = event.element

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        local coord_x = tonumber(player.gui.screen.teleport_window.coord_x.text)
        local coord_y = tonumber(player.gui.screen.teleport_window.coord_y.text)

        local destination_surface = game.surfaces[surface_name]

        Teleport_to_planet_with_cords(player, destination_surface, coord_x, coord_y)
    elseif element.name == "close_button" then
        -- Fecha a janela ao clicar no botão "X"
        player.gui.screen.teleport_window.destroy()
    end
end
