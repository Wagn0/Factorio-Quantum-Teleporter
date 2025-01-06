data:extend(
{
-------------------------------------------------------------------------- MOD-category
  {
    type = "item-group",
    -- nome da categoria
    name = "quantum-teleporter-category",
    order = "e",
    icon = "__Quantum-Teleporter__/graficos/technology/Quantum-Teleporter.png",
    icon_size = 126,
    icon_mipmaps = 2
  },
  {
    type = "item-subgroup",
    -- nome usado para definir o grupo dos itens
    name = "itens",
    -- indexando o grupo a categoria
    group = "quantum-teleporter-category",
    -- ordem de A a Z e de cima para baixo para organização dos grupos "modname-name"
    order = "quantum-teleporter-itens"
  },
  {
    type = "item-subgroup",
    name = "component",
    group = "MOD-category",
    order = "MOD-component"
  },
}
)
-------------------------------------------------------------------------- MOD-category

-- -- categorias de receitas
-- data:extend({
--   {
--       type = "recipe-category",
--       name = "inscriber"
--   }
-- })
