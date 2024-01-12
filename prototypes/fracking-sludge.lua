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