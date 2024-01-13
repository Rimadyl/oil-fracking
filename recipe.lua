--data.lua

-- Fracking sludge recipe
data:extend(
    {
        {   -- For fluid recipes you must use the "full" name convention in the ingredients and result. 
            type = "recipe",
            name = "fracking-sludge",
            category = "chemistry",
            enabled = false,
            ingredients = 
            {
                {type = 'item' , name = 'stone',     amount = 5},
                {type = 'fluid', name = 'water',     amount = 10},
                {type = 'fluid', name = 'heavy-oil', amount = 5}
            },
            results = 
            {
                {type = 'fluid', name = 'fracking-sludge', amount = 20}
            },
            energy_required = 8,
            icon = "__oil-fracking__/graphics/fracking-sludge.png",
            icon_size = 64, icon_mipmaps = 4
            
        }
    }
)

-- Fracking drill recipe
data:extend(
    {
        {
            type = 'recipe',
            name = 'fracking-drill',
            energy_required = 20,
            ingredients = 
            {
                {"steel-plate", 50},
                {"iron-gear-wheel", 20},
                {"advanced-circuit", 15},
                {"pipe-to-ground", 5}
            },
            result = 'fracking-drill',
            enabled = false
        }
    }
    
)