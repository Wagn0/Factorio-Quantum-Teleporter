
-- Função para criar a janela com campos de entrada
local function create_input_window(player)
    local flow = player.gui.screen.add({type = "flow", direction = "vertical", name = "teleport_window"})

    -- Título da janela
    flow.add({type = "label", caption = "Digite o nome da superfície para teletransporte:"})

    -- Campo de texto para o nome da superfície
    flow.add({type = "textfield", name = "surface_name", text = ""})

    -- Botão para confirmar
    flow.add({type = "button", name = "confirm_button", caption = "Teletransportar"})
end