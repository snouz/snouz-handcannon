local item_sounds = require("__base__.prototypes.item_sounds")
local path = "__snouz-handcannon__"

data:extend({
  {
    type = "gun",
    name = "handcannon",
    icon = path .. "/graphics/icons/handcannon.png",
    subgroup = "gun",
    order = "e[hand-cannon]",
    inventory_move_sound = item_sounds.ammo_large_inventory_move,
    pick_sound = item_sounds.ammo_large_inventory_pickup,
    drop_sound = item_sounds.ammo_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 120,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 30,
      sound = {
        switch_vibration_data =
        {
          filename = "__base__/sound/fight/tank-cannon.bnvib",
        },
        game_controller_vibration_data =
        {
          low_frequency_vibration_intensity = 0.9,
          duration = 200
        },
        variations = sound_variations("__base__/sound/fight/tank-cannon", 5, 0.57),
        priority = 64
      }
    },
    stack_size = 5
  },

  {
	type = "recipe",
	name = "handcannon",
	enabled = false,
  category = "crafting-with-fluid",
  ingredients = {
		{type="item",name="advanced-circuit", amount=5},
		{type="item",name="iron-gear-wheel", amount=10},
		{type="item",name="steel-plate", amount=15},
	},
	results = {{type="item",name="handcannon",amount=1}}
  },

  {
    type = "technology",
    name = "handcannon",
    icon_size = 256,
    icon = path .. "/graphics/technology/handcannon-tech.png",
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "handcannon"
      },
    },
    prerequisites = {"tank"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-b"
  },
})