local player = game.player  -- Obtém o jogador

-- Função para criar a janela com fundo e botão de fechar
local function create_input_window()
    local screen_gui = player.gui.screen

    -- Adiciona um frame para a janela, com fundo e bordas
    local window = screen_gui.add({
        type = "frame", 
        name = "teleport_window", 
        direction = "vertical", 
        caption = "Teletransporte",
        style = "frame",
        visible = true
    })

    -- Adiciona a opção de fechar a janela no canto superior direito
    window.add({
        type = "button", 
        name = "close_button", 
        caption = "X", 
        style = "close_button"
    })

    -- Adiciona a área para digitar o nome da superfície
    window.add({type = "label", caption = "Digite o nome da superfície para teletransporte:"})
    window.add({type = "textfield", name = "surface_name", text = ""})

    -- Adiciona as coordenadas X e Y
    window.add({type = "label", caption = "Digite a coordenada X:"})
    window.add({type = "textfield", name = "coord_x", text = "0"})

    window.add({type = "label", caption = "Digite a coordenada Y:"})
    window.add({type = "textfield", name = "coord_y", text = "0"})

    -- Adiciona o botão de teletransporte
    window.add({type = "button", name = "confirm_button", caption = "Teletransportar"})

    -- Centraliza a janela na tela do jogador
    window.location = {x = (screen_gui.width - window.width) / 2, y = (screen_gui.height - window.height) / 2}
end

-- Função para processar o pedido de teletransporte
local function handle_teleport_request(event)
    local player = game.players[event.player_index]
    local element = event.element

    if element.name == "confirm_button" then
        -- Pega os valores digitados na janela
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        local coord_x = tonumber(player.gui.screen.teleport_window.coord_x.text)
        local coord_y = tonumber(player.gui.screen.teleport_window.coord_y.text)

        local destination_surface = game.surfaces[surface_name]

        if destination_surface then
            local destination_position = {x = coord_x, y = coord_y}
            player.teleport(destination_position, destination_surface)
            game.print(player.name .. " foi teletransportado para " .. surface_name .. " nas coordenadas " .. coord_x .. ", " .. coord_y)

            -- Fecha a janela após o teletransporte
            player.gui.screen.teleport_window.destroy()
        else
            game.print("Superfície " .. surface_name .. " não encontrada!")
        end
    elseif element.name == "close_button" then
        -- Fecha a janela ao clicar no botão "X"
        player.gui.screen.teleport_window.destroy()
    end
end

-- Cria a janela quando o jogador usa o comando
create_input_window()

-- Evento para detectar o clique nos botões
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