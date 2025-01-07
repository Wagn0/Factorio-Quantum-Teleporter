local path_main = "__Quantum-Teleporter__/"

data:extend(
    {
        {
            type = "assembling-machine",
            name = "quantum-teleporter-portal-entidade",
            icon = path_main .. "graficos/blocos/quantum-teleporter-portal.png",
            icon_size = 128,
            icon_mipmaps = 4,
            minable = {mining_time = 60, result = "quantum-teleporter-portal"},
            max_health = 1500,
            crafting_speed = 4,
            ingredient_count = 3,
            off_when_no_fluid_recipe = true,
            energy_usage = "20MW",
            buffer_capacity = "300MW",
            crafting_categories = {"crafting"},
            -- corpse = "big-remnants",
            corpse = "assembling-machine-2-remnants",
            -- dying_explosion = "big-explosion",
            dying_explosion = "assembling-machine-2-explosion",
            alert_icon_shift = {-0.09375, -0.375},
            collision_box = {
                {-80, -80},
                {100, 100}
            },
            selection_box = {
                {-80.5, -80.5},
                {100.5, 100.5}
            },
            drawing_box = {
                {-80.5, -80.5},
                {100.5, 100.5}
            },
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input"
            },            
            resistances = {
                {
                    type = "fire",
                    percent = 70
                },
                {
                    type = "physical",
                    percent = 100
                },
                {
                    type = "impact",
                    percent = 100
                },
                {
                    type = "electric",
                    percent = 5
                },
                {
                    type = "explosion",
                    percent = 97
                },
                {
                    type = "laser",
                    percent = 100
                }
            },
            damaged_trigger_effect = {
                entity_name = "spark-explosion",
                type = "create-entity",
                damage_type_filters = "fire",
                offsets = {{0, 1}},
                offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
            },
            allowed_effects = {
                "consumption",
                "speed",
                "productivity",
                "pollution"
            },
            flags = {
                "placeable-neutral",
                "placeable-player",
                "player-creation"
            },
            placeable_by = {
                item = "quantum-teleporter-portal",
                count = 1
            },
            module_specification = {
                module_slots = 0,
                module_info_icon_shift = {0, 0.5}
            },
            working_sound = {
                sound = {
                    {filename = path_main .. "audio/portal.ogg", volume = 0.45}
                },
                fade_in_ticks = 4,
                audible_distance_modifier = 0.5,
                fade_out_ticks = 20
            },
            vehicle_impact_sound = {
                {
                    filename = "__base__/sound/car-metal-impact-2.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-3.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-4.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-5.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-6.ogg",
                    volume = 0.5
                }
            },
            animation = {
                layers = {
                    {
                        frame_count = 1,
                        filename = path_main .. "graficos/blocos/quantum-teleporter-portal.png",
                        hr_version = {
                            frame_count = 1,
                            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
                            height = 128,
                            line_length = 1,
                            shift = {0, 0.125},
                            scale = 0.5,
                            priority = "high",
                            width = 128
                        },
                        height = 128,
                        line_length = 1,
                        shift = {0, 0.125},
                        priority = "high",
                        width = 128
                    }
                }
            },
            close_sound = {
                {
                    filename = "__base__/sound/machine-close.ogg",
                    volume = 0.5
                }
            },
            open_sound = {
                {
                    filename = "__base__/sound/machine-open.ogg",
                    volume = 0.5
                }
            }
        }
    }
)
