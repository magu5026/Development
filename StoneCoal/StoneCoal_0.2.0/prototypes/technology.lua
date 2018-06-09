data:extend(
{
	{
		type = "technology",
		name = "sand-processing",
		icon = "__StoneCoal__/graphics/icons/sand-icon-32.png",
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "sand-slurry"
		  },
		  {
			type = "unlock-recipe",
			recipe = "sand"
		  },
		  {
			type = "unlock-recipe",
			recipe = "stone"
		  },
		  {
			type = "unlock-recipe",
			recipe = "sand-plant"
		  } 
		},
		prerequisites = {"tanks","advanced-material-processing"},
		unit =
		{
		  count = 50,
		  ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}},
		  time = 10
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "charcoal-processing",
		icon = "__StoneCoal__/graphics/icons/sand-icon-32.png",
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "charcoal"
		  },
		  {
			type = "unlock-recipe",
			recipe = "charcoal-burner"
		  }
		},
		prerequisites = {"sand-processing"},
		unit =
		{
		  count = 100,
		  ingredients = {{"science-pack-1", 2},{"science-pack-2", 2}},
		  time = 15
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "advanced-charcoal-processing",
		icon = "__StoneCoal__/graphics/icons/sand-icon-32.png",
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "advanced-charcoal"
		  },
		  {
			type = "unlock-recipe",
			recipe = "charcoal-burner-mk2"
		  }
		},
		prerequisites = {"charcoal-processing","advanced-electronics"},
		unit =
		{
		  count = 100,
		  ingredients = {{"science-pack-1", 2},{"science-pack-2", 2},{"science-pack-3", 1}},
		  time = 20
		},
		order = "c-c"
	}

})