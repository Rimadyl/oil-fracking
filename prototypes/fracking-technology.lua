--Fracking Technology

data:extend(
    {
        {
            name = 'fracking-technology',
            type = 'technology',
            icon = '__oil-fracking__/graphics/fracking-technology.png',
            icon_size = 128,
            prerequisites = {'oil-processing'},
            effects = 
            {
                {
                    type = 'unlock-recipe',
                    recipe = 'fracking-sludge'
                },
                {
                    type = 'unlock-recipe',
                    recipe = 'fracking-drill'
                },
                {
                    type = 'unlock-recipe',
                    recipe = 'shale-oil'
                }
            },
            unit = 
            {
                count = 250,
                ingredients = 
                {
                    {'automation-science-pack', 1},
                    {'logistic-science-pack'  , 1},
                    {'chemical-science-pack'  , 1},
                    {'production-science-pack', 1},
                },
                time = 60
            },
        }
    }
)