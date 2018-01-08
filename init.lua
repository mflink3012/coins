local modName = minetest.get_current_modname();

local coins = {
  steel = {
    enabled = true,
    def = {
      description = "Steel coin",
      inventory_image = modName.."_steel.png",
      name = modName..":steel",
    },
    recipe = "default:steel_ingot",
    amount_per_recipe = 2,
  },
  copper = {
    enabled = true,
    def = {
      description = "Copper coin",
      inventory_image = modName.."_copper.png",
      name = modName..":copper",
    },
    recipe = "default:copper_ingot",
    amount_per_recipe = 2,
  },
  bronze = {
    enabled = true,
    def = {
      description = "Bronze coin",
      inventory_image = modName.."_bronze.png",
      name = modName..":bronze",
    },
    recipe = "default:bronze_ingot",
    amount_per_recipe = 2,
  },
  gold = {
    enabled = true,
    def = {
      description = "Gold coin",
      inventory_image = modName.."_gold.png",
      name = modName..":gold",
    },
    recipe = "default:gold_ingot",
    amount_per_recipe = 2,
  },
}

local key, var
for key,var in pairs(coins) do
  if var.enabled then
    minetest.register_craftitem(var.def.name, var.def)
    
    minetest.register_craft({
      type = "cooking",
      output = var.def.name.." "..var.amount_per_recipe,
      recipe = var.recipe,
    })
  end	
end

if minetest.setting_get("log_mods") then
  minetest.log("action", "[mod/" .. modName .. "] loaded.")
end
