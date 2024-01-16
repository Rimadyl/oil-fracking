--recipe.lua
-- Fracking pumpjack recipe
data:extend(
    {
        {
            type = 'recipe',
            name = 'fracking-pumpjack',
            energy_required = 20,
            ingredients = 
            {
                {"steel-plate", 50},
                {"iron-gear-wheel", 20},
                {"advanced-circuit", 15},
                {"pipe-to-ground", 5}
            },
            result = 'fracking-pumpjack',
            enabled = false,
            icon = '__oil-fracking__/graphics/fracking-drill.png',
            icon_size = 64, icon_mipmaps = 4
        }
    }
    
)

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
            enabled = false,
            icon = '__oil-fracking__/graphics/fracking-drill.png',
            icon_size = 64, icon_mipmaps = 4
        }
    }
    
)

-- Shale -> Oil recipe
data:extend(
    {
        {
            type = 'recipe',
            name = 'shale-oil',
            category = 'oil-processing',
            subgroup = 'fluid-recipes',
            energy_required = 5,
            enabled = false,
            icon = '__oil-fracking__/graphics/shale-oil.png',
            icon_size = 64, icon_mipmaps = 4,
            ingredients =
            {
                {type = 'item' , name = 'oil-shale',  amount = 5},
                {type = 'fluid', name = 'crude-oil' , amount = 5}
            },
            results =
            {
                {type = 'fluid', name = 'crude-oil' , amount = 25},
                {type = 'item' , name = 'coal'      , amount = 2}
            },
        }
    }
)