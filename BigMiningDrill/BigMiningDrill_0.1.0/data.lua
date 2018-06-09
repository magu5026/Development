local a = table.deepcopy(data.raw['item']['electric-mining-drill'])
a.name = "electric-mining-drill-big"
a.order = "a[items]-c[electric-mining-drill-big]"
a.place_result = "electric-mining-drill-big"

local b = table.deepcopy(data.raw['recipe']['electric-mining-drill'])
b.name = "electric-mining-drill-big"
b.normal.ingredients = {}
b.normal.result = "electric-mining-drill-big"
b.expensive.ingredients = {}
b.expensive.result = "electric-mining-drill-big"

local c = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])
c.name = "electric-mining-drill-big"
c.minable.result = "electric-mining-drill-big"
c.mining_speed = 5
c.mining_power = 30
c.resource_searching_radius = 7.5

data:extend({a,b,c})