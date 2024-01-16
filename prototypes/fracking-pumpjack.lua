require ("__base__.prototypes.entity.pipecovers")
--fracking-pumpjack TEST

local fracking_pumpjack = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])

fracking_pumpjack.name = 'fracking-pumpjack'
fracking_pumpjack.resource_categories = {'basic-fluid'}
fracking_pumpjack.minable = {mining_time = 0.3, result = 'fracking-pumpjack'}

-- fracking_pumpjack.input_fluid_box.pipe_connections = 
-- {
--   {
--     { position = {-2, 0} },
--     { position = {2, 0} },
--     { position = {0, 2} }
--   }
-- }

fracking_pumpjack.output_fluid_box = 
{
  base_area = 10,
  base_level = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {
      positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} },
      type = "output"
    }
  }
}


data:extend({fracking_pumpjack})