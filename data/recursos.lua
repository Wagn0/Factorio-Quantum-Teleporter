local path_main = "__Quantum-Teleporter__/"

data:extend({
    -- Item do equipamento
    {
        type = "item",
        name = "quantum-teleporter-equipment",
        icon = path_main .. "graficos/itens/quantum-teleporter-equipment.png",
        icon_size = 128,
        subgroup = "itens",
        order = "Quantum-Teleporter-itens[quantum-teleporter-item]",
        stack_size = 1
    },
    -- Receita do equipamento
    {
        type = "recipe",
        name = "quantum-teleporter-equipment-recipe",
        category = "advanced-crafting", -- Certifique-se de que esta categoria existe
        enabled = false, -- Geralmente, será desbloqueada por uma tecnologia
        ingredients = {
            {type = "item", name = "supercapacitor", amount = 4096},
            {type = "item", name = "tungsten-plate", amount = 256},
            {type = "item", name = "carbon-fiber", amount = 64},
            {type = "item", name = "quantum-processor", amount = 256}
        },
        result = "quantum-teleporter-equipment"
    },
    -- Item do portal
    {
        type = "item",
        name = "quantum-teleporter-portal",
        icon = path_main .. "graficos/blocos/quantum-teleporter-portal.png",
        icon_size = 128,
        subgroup = "itens",
        order = "Quantum-Teleporter-itens[quantum-teleporter-portal]",
        place_result = "quantum-teleporter-portal-entidade",
        stack_size = 1
    },
    -- Receita do portal
    {
        type = "recipe",
        name = "quantum-teleporter-portal-recipe",
        category = "advanced-crafting",
        enabled = false, -- Geralmente, será desbloqueada por uma tecnologia
        ingredients = {
            {type = "item", name = "quantum-processor", amount = 512},
            {type = "item", name = "tungsten-plate", amount = 10240},
            {type = "item", name = "superconductor", amount = 2048},
            {type = "item", name = "carbon-fiber", amount = 4096}
        },
        result = "quantum-teleporter-portal"
    }
})
