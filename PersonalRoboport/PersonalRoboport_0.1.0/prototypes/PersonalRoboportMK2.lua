data:extend(
{
	{
    type = "item",
    name = "personal-roboport-equipment-mk2",
    icon = "__base__/graphics/icons/personal-roboport-equipment.png",
    placed_as_equipment_result = "personal-roboport-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "e[robotics]-b[personal-roboport-equipment-mk2]",
    stack_size = 5
	},
	{
    type = "recipe",
    name = "personal-roboport-equipment-mk2",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {"personal-roboport-equipment", 4},
      {"processing-unit", 5},
      {"advanced-circuit", 10},
	  {"steel-plate", 10},
      {"battery", 10},
    },
    result = "personal-roboport-equipment-mk2"
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-equipment-mk2",
    take_result = "personal-roboport-equipment-mk2",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-roboport-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "100MJ",
      input_flow_limit = "10MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "3000kW",
    energy_consumption = "50kW",

    robot_limit = 50,
    construction_radius = 50,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 10,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "technology",
    name = "personal-roboport-equipment-mk2",
    icon = "__base__/graphics/technology/personal-roboport-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-equipment-mk2"
      },
    },
    prerequisites = { "personal-roboport-equipment" },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-d-zzz",
  }
})