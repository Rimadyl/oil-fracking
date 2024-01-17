local fracked_oil = table.deepcopy(data.raw['resource']['crude-oil'])
local resource_autoplace = require("resource-autoplace")

fracked_oil.name = 'fracked-oil'

fracked_oil.stages = 
{
  sheet =
  {
    filename = "__oil-fracking__/graphics/fracked-oil.png",
    priority = "extra-high",
    width = 74,
    height = 60,
    frame_count = 4,
    variation_count = 1,
    shift = util.by_pixel(0, -2),
    hr_version =
    {
        filename = "__oil-fracking__/graphics/hr-fracked-oil.png",
        priority = "extra-high",
        width = 148,
        height = 120,
        frame_count = 4,
        variation_count = 1,
        shift = util.by_pixel(0, -2),
        scale = 0.5
    }
  }
}
fracked_oil.minable =
{
    mining_time = 0.5,
    results =
    {
        {
            type = 'fluid',
            name = 'fracked-oil',
            amount_min = 10,
            amount_max = 20,
            required_fluid = 'fracking-sludge',
            probability = 1
        }
    }
}
fracked_oil.autoplace = resource_autoplace.resource_autoplace_settings
{
    name = 'fracked-oil',
    order = 'c',
    base_density = 8.2,
    base_spots_per_km2 = 1.8,
    random_probability = 1/48,
    random_spot_size_minimum = 1,
    random_spot_size_maximum = 1,
    additional_richness = 220000,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1
}

fracked_oil.map_color = {0.99, 0.5, 0.77}
fracked_oil.map_grid = false


data:extend({fracked_oil})

data:extend({
    {
        type = "autoplace-control",
        name = "fracked-oil",
        richness = true,
        order = "b-g",
        category = "resource"
    }
})

data:extend({
    {
        type = "noise-layer",
        name = 'fracked-oil',
    }
})