local sounds = require("__base__.prototypes.entity.sounds")
local fracking_drill = require("__base__.prototypes.entity.mining-drill")

--TODO    Entity needs to be added. Either copy/paste pumpjack & make it accept an input fluid (hard), OR
--          copy/paste a mining drill (akin to uranium), and make it output 'oil-shale'. Obviously, this means adding oil-shale as well as a recipe to 
--            turn that oil-shale into crude oil. Potentially more fun to do :)


data:extend(
    {
        {
            type = "item",
            name = "fracking-pumpjack",
            icon = "__oil-fracking__/graphics/fracking-pumpjack.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "extraction-machine",
            order = "b[fluids]-b[fracking-pumpjack]",
            place_result = "fracking-pumpjack",
            stack_size = 20
        }
    }
)
data:extend(
    {
        {
            type = 'recipe',
            name = 'fracking-pumpjack',
            energy_required = 20,
            ingredients = 
            {
                {"steel-plate", 10},
                {"iron-gear-wheel", 10},
                {"advanced-circuit", 5},
                {"pipe-to-ground", 5}
            },
            result = 'fracking-pumpjack',
            enabled = false
        }
    }
    
)