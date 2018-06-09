data:extend(
{
	{
	type = "item",
	name = "sand",
	icon = "__StoneCoal__/graphics/icons/White_Sand_32-icon.png",
	flags = {"goes-to-main-inventory"},
	stack_size = 100
	},
	{
	type = "fluid",
	name = "sand-slurry",
	default_temperature = 25,
	max_temperature = 100,
	base_color = {r=0.92, g=0.73, b=0.53},
	flow_color = {r=0.92, g=0.73, b=0.53},
	icon = "__StoneCoal__/graphics/icons/geology-water-soil-dirt-32.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59
	},
	{
    type = "item",
    name = "charcoal-burner",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"goes-to-quickbar"},
    place_result = "charcoal-burner",
    stack_size = 50
  },
  {
    type = "item",
    name = "charcoal-burner-mk2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    flags = {"goes-to-quickbar"},
    place_result = "charcoal-burner-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "sand-plant",
    icon = "__base__/graphics/icons/chemical-plant.png",
    flags = {"goes-to-quickbar"},
    place_result = "sand-plant",
    stack_size = 50
  },
   {
    type = "item",
    name = "test",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"goes-to-quickbar"},
    order = "e[test]",
    place_result = "test",
    stack_size = 50
  }
})

