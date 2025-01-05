
-- Função para criar a janela com campos de entrada
function Create_input(player)
    local flow = player.gui.screen.add({type = "flow", direction = "vertical", name = "teleport_window"})

    -- Título da janela
    flow.add({type = "label", caption = "Digite o nome da superfície para teletransporte:"})

    -- Campo de texto para o nome da superfície
    flow.add({type = "textfield", name = "surface_name", text = ""})

    -- Botão para confirmar
    flow.add({type = "button", name = "confirm_button", caption = "Teletransportar"})
end

function Create_input_window(player)
    local screen_gui = player.gui.screen

    -- Adiciona um frame para a janela, com fundo e bordas
    local window =
        screen_gui.add(
        {
            type = "frame",
            name = "teleport_window",
            direction = "vertical",
            caption = "Teletransporte",
            style = "frame",
            visible = true
        }
    )

    -- Adiciona a opção de fechar a janela no canto superior direito
    window.add(
        {
            type = "button",
            name = "close_button",
            caption = "X",
            style = "close_button"
        }
    )

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