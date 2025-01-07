local handle = require("control.handle")
local guimaker = require("gui.gui-maker")

-- Evento para detectar o clique no botão
script.on_event(defines.events.on_gui_click, handle.teleport_planet)
script.on_init(
    function()
        local player = game.players[event.player_index]
        -- Cria a janela quando o jogador usa o comando
        guimaker.create_input_window(player)
    end
)

-- destroi a janela quando o player morre
script.on_event(defines.events.on_player_died, handle.player_died_teleport)

-- on_init() will run when the game starts (or in mod cases, when you add it to an existing save). It is used to initialize storage variables you will need, changing game parameters, for instance:

-- script.on_init(function()
--     storage.ticker = 0
--     storage.level = 1
--     storage.teams = {default_team = "johns-lads"}
--     game.create_surface("Scenario Surface")
--     game.map_settings.pollution.enabled = false
--     --etc.
--   end)
