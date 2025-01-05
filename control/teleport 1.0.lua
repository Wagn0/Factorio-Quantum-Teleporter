local player = game.player  -- Obtém o jogador

-- Função para criar a janela com campos de entrada
local function create_input_window()
    local flow = player.gui.screen.add({type = "flow", direction = "vertical", name = "teleport_window"})

    -- Título da janela
    flow.add({type = "label", caption = "Digite o nome da superfície para teletransporte:"})

    -- Campo de texto para o nome da superfície
    flow.add({type = "textfield", name = "surface_name", text = ""})

    -- Botão para confirmar
    flow.add({type = "button", name = "confirm_button", caption = "Teletransportar"})
end

-- Função para processar a entrada do jogador
local function handle_teleport_request(event)
    local player = game.players[event.player_index]
    local element = event.element

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text  -- Obtém o nome da superfície

        -- Verifica se a superfície de destino existe
        local destination_surface = game.surfaces[surface_name]

        if destination_surface then
            -- Escolhe uma posição na superfície de destino para teletransportar o jogador
            local destination_position = {x = 0, y = 0}  -- Posição que você deseja no novo planeta (modifique conforme necessário)
            
            -- Teleporta o jogador
            player.teleport(destination_position, destination_surface)
            game.print(player.name .. " foi teletransportado para " .. surface_name)

            -- Fecha a janela após o teletransporte
            player.gui.screen.teleport_window.destroy()
        else
            game.print("Superfície " .. surface_name .. " não encontrada!")
        end
    end
end

-- Cria a janela quando o jogador usa o comando
create_input_window()

-- Evento para detectar o clique no botão
script.on_event(defines.events.on_gui_click, handle_teleport_request)



local function create_input_window()
    local flow = player.gui.screen.add({type = "flow", direction = "vertical", name = "teleport_window"})

    flow.add({type = "label", caption = "Digite o nome da superfície para teletransporte:"})
    flow.add({type = "textfield", name = "surface_name", text = ""})

    flow.add({type = "label", caption = "Digite a coordenada X:"})
    flow.add({type = "textfield", name = "coord_x", text = "0"})

    flow.add({type = "label", caption = "Digite a coordenada Y:"})
    flow.add({type = "textfield", name = "coord_y", text = "0"})

    flow.add({type = "button", name = "confirm_button", caption = "Teletransportar"})
end

local function handle_teleport_request(event)
    local player = game.players[event.player_index]
    local element = event.element

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        local coord_x = tonumber(player.gui.screen.teleport_window.coord_x.text)
        local coord_y = tonumber(player.gui.screen.teleport_window.coord_y.text)

        local destination_surface = game.surfaces[surface_name]

        if destination_surface then
            local destination_position = {x = coord_x, y = coord_y}
            player.teleport(destination_position, destination_surface)
            game.print(player.name .. " foi teletransportado para " .. surface_name .. " nas coordenadas " .. coord_x .. ", " .. coord_y)

            player.gui.screen.teleport_window.destroy()
        else
            game.print("Superfície " .. surface_name .. " não encontrada!")
        end
    end
end
