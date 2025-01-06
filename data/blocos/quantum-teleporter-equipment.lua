local path_main = "__Quantum-Teleporter__/"

data:extend({
    {
        type = "item",
        name = "quantum-teleporter-equipment",
        icon = path_main .. "graficos/itens/quantum-teleporter-equipment.png",
        icon_size = 128,
        placed_as_equipment_result = "quantum-teleporter-equipment",
        subgroup = "equipment",
        order = "b[personal-transport]-a[quantum-teleporter-equipment]",
        stack_size = 1
    },
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
            width = 2, -- Tamanho do equipmento na grade (2x2)
            height = 2
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "112MW", -- Capacidade de energia do equipmento
            input_flow_limit = "112MW", -- Taxa de recarga
            usage_priority = "secondary-input"
        },
        energy_consumption = "112MW", -- Consumo de energia por uso
        movement_bonus = 0, -- Nenhum bônus de movimento, é apenas teleporte
        teleport_action = { -- Definição do teleporte
            type = "direct",
            sound = { filename = path_main .. "/audio/teleport.ogg", volume = 1.0 }
        }
    }
})
