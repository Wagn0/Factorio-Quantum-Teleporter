

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
