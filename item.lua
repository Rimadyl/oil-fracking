--item.lua


-- Fracking sludge item
data:extend(
    {
    
        {   --Copy & Pasted from lubricant, then modified.
            type = "fluid",
            name = "fracking-sludge",
            default_temperature = 25,
            heat_capacity = "0.1KJ",
            base_color = {r=0.22, g=0.77, b=0.66},
            flow_color = {r=0.29, g=0.65, b=0.39},
            icon = "__oil-fracking__/graphics/fracking-sludge.png",
            icon_size = 64, icon_mipmaps = 4,
            order = "e[fracking-sludge]"
        }
    }
)

-- Fracking miner item
data:extend(
    {
        {
            type = "item",
            name = "fracking-drill",
            icon = "__oil-fracking__/graphics/fracking-drill.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "extraction-machine",
            order = "b[fluids]-b[fracking-drill]",
            place_result = "fracking-drill",
            stack_size = 50
        }
    }
)

-- Oil shale item
data:extend(
    {
        {
            type = 'item',
            name = 'oil-shale',
            icon = '__oil-fracking__/graphics/oil-shale.png',
            icon_size = 64, icon_mipmaps = 4,
            subgroup = 'raw-resource',
            stack_size = 20
        }
    }
)