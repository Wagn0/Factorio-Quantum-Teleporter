local path_main = "__Quantum-Teleporter__/"

data:extend({ {
    type = "technology",
    name = "Quantum-Teleporter",
    icon = path_main.. "graficos/technology/technology-teleporter-equipment.png",
    icon_size = 126,
    icon_mipmaps = 4,
    prerequisites = {
        "quantum-processor"
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "quantum-teleporter-equipment-recipe",
        }
    },
    unit = {
        count = 500,
        time = 60,
        ingredients = {
            { "automation-science-pack", 1},
            { "logistic-science-pack", 1},
            { "chemical-science-pack", 1},
            { "production-science-pack", 1},
            { "utility-science-pack", 1},
            { "space-science-pack", 1},
            { "metallurgic-science-pack", 1},
            { "electromagnetic-science-pack", 1},
            { "agricultural-science-pack", 1},
            { "cryogenic-science-pack", 1},
        },
        order = "quantum-teleporter"
    }
}
})


data:extend({ 
    {
    type = "technology",
    name = "Quantum-Teleporter-Portal",
    icon = path_main.. "graficos/technology/technology-portal.png",
    icon_size = 128,
    icon_mipmaps = 4,
    prerequisites = {
        "Quantum-Teleporter",
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "quantum-teleporter-portal-recipe"
        },
    },
    unit = {
        count = 100,
        time = 30,
        ingredients = {
            { "automation-science-pack", 1},
            { "logistic-science-pack", 1},
            { "chemical-science-pack", 1},
            { "production-science-pack", 1},
            { "utility-science-pack", 1},
            { "space-science-pack", 1},
            { "metallurgic-science-pack", 1},
            { "electromagnetic-science-pack", 1},
            { "agricultural-science-pack", 1},
            { "cryogenic-science-pack", 1},
        },
        order = "quantum-teleporter"
    }
}
})


data:extend({ {
    type = "technology",
    name = "AE2-autocraft",
    icon = path_main.. "graficos/technology/autocraft.png",
    icon_size = 128,
    icon_mipmaps = 4,
    prerequisites = {
        "AE2"
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "1k-crafting-storage-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "4k-crafting-storage-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "16k-crafting-storage-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "64k-crafting-storage-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "crafting-terminal-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "crafting-monitor-recipe",
        },
        {
            type = "unlock-recipe",
            recipe = "molecular-assembler-recipe",
        },
    },
    unit = {
        count = 10,
        time = 30,
        ingredients = {
            { "automation-science-pack", 200},
            { "logistic-science-pack", 200},
            { "chemical-science-pack", 200},
            {"production-science-pack",200}
        },
        order = "AE2-group"
    }
}
})