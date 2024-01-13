
local sounds = require("__base__.prototypes.entity.sounds")


--TODO    Entity needs to be added. Either copy/paste pumpjack & make it accept an input fluid (hard), OR
--          copy/paste a mining drill (akin to uranium), and make it output 'oil-shale'. Obviously, this means adding oil-shale as well as a recipe to 
--            turn that oil-shale into crude oil. Potentially more fun to do :)

local fracking_drill = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])


fracking_drill.name = 'fracking-drill'
fracking_drill.icon = '__oil-fracking__/graphics/fracking-drill.png'
fracking_drill.icon_size = 64
fracking_drill.icon_mipmaps = 4
fracking_drill.minable = {mining_time = 0.3, result = 'fracking-drill'}
fracking_drill.resource_categories = {'basic-solid'}
fracking_drill.resource_searching_radius = 2
fracking_drill.mining_speed = 2

data:extend({fracking_drill})