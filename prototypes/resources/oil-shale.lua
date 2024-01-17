local sounds = require("__base__.prototypes.entity.sounds")
local resource_autoplace = require("__core__/lualib/resource-autoplace")
data:extend(
    {
        {
            type = "resource",
            name = "oil-shale",
            icon = "__oil-fracking__/graphics/oil-shale.png",
            icon_size = 64,
            icon_mipmaps = 4,
            flags = {"placeable-neutral"},
            order="a-b-e",
            tree_removal_probability = 0,
            tree_removal_max_distance = 32 * 32,
            walking_sound = sounds.ore,
            minable =
            {
              mining_particle = "stone-particle",
              mining_time = 2,
              result = "oil-shale",
              fluid_amount = 10,
              required_fluid = "fracking-sludge"
            },
            collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            autoplace = resource_autoplace.resource_autoplace_settings
            {
              name = "oil-shale",
              order = "c",
              base_density = 0.2,
              base_spots_per_km2 = 1.5,
              has_starting_area_placement = false,
              random_spot_size_minimum = 2,
              random_spot_size_maximum = 4,
              regular_rq_factor_multiplier = 1
            },
            stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
            stages =
            {
              sheet =
              {
                filename = "__oil-fracking__/graphics/oil-shale.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version =
                {
                  filename = "__oil-fracking__/graphics/oil-shale.png",
                  priority = "extra-high",
                  width = 128,
                  height = 128,
                  frame_count = 8,
                  variation_count = 8,
                  scale = 0.5
                }
              }
            },
            map_color = {0.78, 0.2, 0.77},
            map_grid = false
        }    
    }
)

data:extend({
    {
        type = "autoplace-control",
        name = "oil-shale",
        richness = true,
        order = "b-g",
        category = "resource"
    }
})

data:extend({
    {
        type = "noise-layer",
        name = 'oil-shale',
    }
})