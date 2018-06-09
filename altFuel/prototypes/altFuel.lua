data:extend(
{
	{
		type = "item",
		name = "alt-fuel",
		icon = "__altFuel__/graphics/pic32.png",
		flags = {"goes-to-main-inventory"},
		fuel_category = "chemical",
		fuel_value = "15MJ",
		fuel_acceleration_multiplier = 1.1,
		fuel_top_speed_multiplier = 1.05,
		subgroup = "raw-material",
		order = "c[solid-fuel]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "alt-fuel",
		category = "chemistry",
		energy_required = 3,
		enabled = true,
		ingredients =
		{
			{type="fluid", name="crude-oil", amount=20}
		},
		result = "alt-fuel"
	},
})