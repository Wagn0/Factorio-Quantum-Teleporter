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

-- Evento para detectar o clique no botão
script.on_event(defines.events.on_gui_click, Handle_teleport_planet)
script.on_init(
    function()
        local player = game.players[event.player_index]
        -- Cria a janela quando o jogador usa o comando
        create_input_window(player)
    end
)

-- destroi a janela quando o player morre
script.on_event(
    defines.events.on_player_died,
    function(event)
        local player = game.players[event.player_index]

        player.gui.screen.teleport_window.destroy()
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