local path_main = "__Quantum-Teleporter__/"

data:extend({
    {
        type = "movement-bonus-equipment", -- Tipo específico para modificar movimentação
        name = "quantum-teleporter-equipment",
        sprite = {
            filename = path_main .. "graficos/itens/quantum-teleporter-equipment.png",
            width = 128,
            height = 128,
            priority = "medium"
        },
        shape = {
            type = "full", -- Forma do equipamento
            width = 2, -- Tamanho na grade (2x2)
            height = 2
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "112MW", -- Capacidade de energia do equipamento
            input_flow_limit = "112MW", -- Taxa de recarga
            usage_priority = "secondary-input"
        },
        energy_consumption = "112MW", -- Consumo de energia por uso
        movement_bonus = 0, -- Nenhum bônus de movimento, é apenas teleporte
        categories = {"armor"}, -- Define as categorias permitidas
        teleport_action = { -- Definição do teleporte
            type = "direct",
            sound = { filename = path_main .. "/audio/teleport.ogg", volume = 1.0 }
        }
    }
})
