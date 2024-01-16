local fracked_oil = table.deepcopy(data.raw['resources']['crude-oil'])

fracked_oil.name = 'fracked-oil'

data:extend({fracked_oil})