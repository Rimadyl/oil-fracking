local sounds = require("__base__.prototypes.entity.sounds")
local resource_autoplace = require("__core__/lualib/resource-autoplace")
data:extend(
    {
        {
            type = "resource",
            name = "fracking-crack",
            icon = "__base__/graphics/icons/crude-oil-resource.png",
            icon_size = 64, icon_mipmaps = 4,
            flags = {"placeable-neutral"},
            category = "fracking-crack",
            subgroup = "raw-resource",
            order="a-b-a",
            infinite = true,
            highlight = true,
            minimum = 60000,
            normal = 300000,
            infinite_depletion_amount = 10,
            resource_patch_search_radius = 12,
            tree_removal_probability = 0.7,
            tree_removal_max_distance = 32 * 32,
            minable =
            {
                mining_time = 1,
                results =
                {
                    {
                    type = "fluid",
                    name = "frack-oil",
                    amount_min = 10,
                    amount_max = 10,
                    probability = 1
                    }
                },
                required_fluid = 'fracking-sludge',
                fluid_amount = 20
            },
            walking_sound = sounds.oil,
            collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            autoplace = resource_autoplace.resource_autoplace_settings
            {
                name = "fracking-crack",
                order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
                base_density = 8.2,
                base_spots_per_km2 = 1.8,
                random_probability = 1/48,
                random_spot_size_minimum = 1,
                random_spot_size_maximum = 1, -- don't randomize spot size
                additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
                has_starting_area_placement = false,
                regular_rq_factor_multiplier = 1
            },
            stage_counts = {0},
            stages =
            {
                sheet =
                {
                    filename = "__oil-fracking__/graphics/fracking-crack.png",
                    priority = "extra-high",
                    width = 74,
                    height = 60,
                    frame_count = 4,
                    variation_count = 1,
                    shift = util.by_pixel(0, -2),
                    hr_version =
                    {
                    filename = "__oil-fracking__/graphics/hr-fracking-crack.png",
                    priority = "extra-high",
                    width = 148,
                    height = 120,
                    frame_count = 4,
                    variation_count = 1,
                    shift = util.by_pixel(0, -2),
                    scale = 0.5
                    }
                }
            },
            map_color = {0.22, 0.65, 0.01},
            map_grid = false
        }
    }
)

data:extend({
    {
        type = "autoplace-control",
        name = "fracking-crack",
        richness = true,
        order = "b-g",
        category = "resource"
    }
})

data:extend({
    {
        type = "noise-layer",
        name = 'fracking-crack',
    }
})