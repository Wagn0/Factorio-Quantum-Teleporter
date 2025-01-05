-- Função para criar a janela com fundo e botão de fechar
local function create_input_window(player)
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

-- Evento para detectar o clique nos botões
script.on_event(defines.events.on_gui_click, Handle_teleport_cords)
script.on_init(
    function()
        local player = game.players[event.player_index]
        create_input_window(player)
    end
)

-- on_init() will run when the game starts (or in mod cases, when you add it to an existing save). It is used to initialize storage variables you will need, changing game parameters, for instance:

-- script.on_init(function()
--     storage.ticker = 0
--     storage.level = 1
--     storage.teams = {default_team = "johns-lads"}
--     game.create_surface("Scenario Surface")
--     game.map_settings.pollution.enabled = false
--     --etc.
--   end)