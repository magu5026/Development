data:extend(
{
	{
	type = "recipe",
	name = "sand-slurry",
	category = "sand-processing",
	enabled = false,
	energy_required = 2,
	ingredients ={{type="fluid", name="water", amount=10}},
	results={{type="fluid", name="sand-slurry", amount=8}},
	subgroup = "StoneCoal",
	order = "a"
	},
	{
	type = "recipe",
	name = "sand",
	category = "sand-processing",
	enabled = false,
	energy_required = 4,
	ingredients ={{type="fluid", name="sand-slurry", amount=4}},
	results={{"sand",2}},
	subgroup = "StoneCoal",
	order = "b"
	},	
	{
	type = "recipe",
	name = "stone",
	category = "smelting",
	energy_required = 3.5,
	enabled = false,
	ingredients = {{"sand",2}},
	result = "stone",
	subgroup = "StoneCoal",
	order = "c"
	},
	{
	type = "recipe",
	name = "charcoal-burner",
	energy_required = 5,
	enabled = false,
	ingredients = {{"stone-brick", 15}},
	result = "charcoal-burner",
	subgroup = "StoneCoal-Processing",
	order = "b"
	},
	{
	type = "recipe",
	name = "charcoal-burner-mk2",
	energy_required = 5,
	enabled = false,
	ingredients = {{"steel-plate", 15},{"advanced-circuit", 5},{"stone-brick", 10}},
	result = "charcoal-burner-mk2",
	subgroup = "StoneCoal-Processing",
	order = "c"
	},
	{
    type = "recipe-category",
    name = "charcoal-burning"
	},
	{
    type = "recipe-category",
    name = "sand-processing"
	},
	{
    type = "recipe",
    name = "charcoal",
    category = "charcoal-burning",
    enabled = false,
    energy_required = 10,
    ingredients = {{"raw-wood", 20},{"sand",8},{"coal",4}},
    results = {{"coal",8}},
	subgroup = "StoneCoal",
	order = "d"
    },
	{
    type = "recipe",
    name = "advanced-charcoal",
    category = "charcoal-burning",
    enabled = false,
    energy_required = 10,
    ingredients = {{"raw-wood", 10},{"sand",4},{"coal",1}},
    results = {{"coal",6}},
	subgroup = "StoneCoal",
	order = "e"
    },
	{
    type = "recipe",
    name = "sand-plant",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 5},
      {"pipe", 5}
    },
    result= "sand-plant",
	subgroup = "StoneCoal-Processing",
	order = "a"
  },
	
	
	{
	type = "recipe",
	name = "test",
	energy_required = 5,
	enabled = true,
	ingredients = {{"steel-plate",2}},
	result = "test",
	subgroup = "test",
	order = "a"
	},
})
