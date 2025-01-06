local path_main = "__Quantum-Teleporter__/"

data:extend({
-- definindo o item
{
    type = "item",
    name = "quantum-teleporter-equipment",
    icon = path_main.. "graficos/itens/quantum-teleporter-equipment.png",
    icon_size = 128,
    subgroup = "itens",
    order = "Quantum-Teleporter-itens[quantum-teleporter-item]",
    stack_size = 1,
},
-- receita
{
    type = "recipe",
    name = "quantum-teleporter-equipment-recipe",
    category = "advanced-crafting",
    enabled = true,
    ingredients = {
        {"supercapacitor", 4096},
        {"tungsten-plate", 256},
        {"carbon-fiber", 64},
        {"quantum-processor", 256}
    },
    result = "quantum-teleporter-equipment",
},
})

data:extend({
    -- definindo o item
    {
        type = "item",
        name = "quantum-teleporter-portal",
        icon = path_main.. "graficos/blocos/quantum-teleporter-portal.png",
        icon_size = 128,
        subgroup = "itens",
        order = "Quantum-Teleporter-itens[quantum-teleporter-portal]",
        place_result = "quantum-teleporter-portal-entidade",
        stack_size = 1,
    },
    -- receita
    {
        type = "recipe",
        name = "quantum-teleporter-portal-recipe",
        category = "advanced-crafting",
        enabled = true,
        ingredients = {
            {"quantum-processor", 512},
            {"tungsten-plate",10240},
            {"superconductor", 2048},
            {"carbon-fiber",4096}
        },
        result = "quantum-teleporter-portal",
    },
    })