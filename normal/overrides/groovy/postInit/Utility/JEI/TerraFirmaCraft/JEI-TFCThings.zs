#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Welding
import mods.terrafirmacraft.Anvil
import mods.terrafirmacraft.Heating
import mods.terrafirmacraft.ClayKnapping
import mods.terrafirmacraft.Quern


// --- Массивы

def (RemoveAndHide) = [
	item('tfcthings:pigvil'),
	item('tfcthings:pigvil_black_steel'),
	item('tfcthings:pigvil_blue_steel'),
	item('tfcthings:pigvil_red_steel'),
	item('tfcthings:pigvil_purple_steel'),
	item('tfcthings:mold/unfired/prospectors_hammer_head'),
	item('tfcthings:mold/prospectors_hammer_head'),
	item('tfcthings:pig_iron_carrot'),
	item('tfcthings:black_steel_carrot'),
	item('tfcthings:blue_steel_carrot'),
	item('tfcthings:red_steel_carrot'),
	// Crowns
	item('tfcthings:crown/gold_beryl'),
	item('tfcthings:crown/gold_agate'),
	item('tfcthings:crown/gold_jade'),
	item('tfcthings:crown/gold_jasper'),
	item('tfcthings:crown/gold_tourmaline'),
	item('tfcthings:crown/platinum_jasper'),
	item('tfcthings:crown/platinum_jade'),
	item('tfcthings:crown/platinum_agate'),
	item('tfcthings:crown/platinum_beryl'),
	item('tfcthings:crown/platinum_tourmaline'),
	// Затачивалки (Временно)
	item('tfcthings:honing_steel'),
	item('tfcthings:honing_steel_diamond'),
	item('tfcthings:honing_steel_head'),
	item('tfcthings:honing_steel_head_diamond'),
	item('tfcthings:grindstone_quartz'),
	item('tfcthings:grindstone_steel'),
	item('tfcthings:grindstone_diamond'),
	item('tfcthings:diamond_grit'),
	item('tfcthings:grindstone_base'),
	item('tfcthings:whetstone')
]

def (ItemsToRemove) = [
   // Платиновые короны
   item('tfcthings:crown/platinum_opal'),
   item('tfcthings:crown/platinum_jasper'),
   item('tfcthings:crown/platinum_jade'),
   item('tfcthings:crown/platinum_garnet'),
   item('tfcthings:crown/platinum_emerald'),
   item('tfcthings:crown/platinum_diamond'),
   item('tfcthings:crown/platinum_beryl'),
   item('tfcthings:crown/platinum_amethyst'),
   item('tfcthings:crown/platinum_agate'),
   item('tfcthings:crown/platinum_ruby'),
   item('tfcthings:crown/platinum_sapphire'),
   item('tfcthings:crown/platinum_topaz'),
   item('tfcthings:crown/platinum_tourmaline'),
   // Золотые короны
   item('tfcthings:crown/gold_jade'),
   item('tfcthings:crown/gold_garnet'),
   item('tfcthings:crown/gold_emerald'),
   item('tfcthings:crown/gold_diamond'),
   item('tfcthings:crown/gold_beryl'),
   item('tfcthings:crown/gold_amethyst'),
   item('tfcthings:crown/gold_agate'),
   item('tfcthings:crown/gold_topaz'),
   item('tfcthings:crown/gold_tourmaline'),
   item('tfcthings:crown/gold_sapphire'),
   item('tfcthings:crown/gold_ruby'),
   item('tfcthings:crown/gold_opal'),
   item('tfcthings:crown/gold_jasper'),
   //Other
   item('tfcthings:sling_ammo_light'),
   item('tfcthings:sling_ammo_spread'),
   item('tfcthings:diamond_grit')
]


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item)
}

for item in ItemsToRemove{
   crafting.removeByOutput(item)
}

// Поименное удаление
crafting.removeByOutputByRecipeName("tfcthings:grindstone_base_steel")
crafting.removeByOutputByRecipeName("tfcthings:grindstone_base")

// Removing Prospect Hammer
ClayKnapping.removeRecipe(item('tfcthings:mold/unfired/prospectors_hammer_head'))
Heating.removeRecipe(item('tfcthings:mold/prospectors_hammer_head'))

// Remove carrots
Anvil.removeRecipe(item('tfcthings:pig_iron_carrot'))
Anvil.removeRecipe(item('tfcthings:black_steel_carrot'))
Anvil.removeRecipe(item('tfcthings:blue_steel_carrot'))
Anvil.removeRecipe(item('tfcthings:red_steel_carrot'))

// Bracing
Anvil.removeRecipe(item('tfcthings:metal_bracing'))
Anvil.removeRecipe(item('tfcthings:metal_bracing') * 2)

// Молотки
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/bismuth_bronze'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/black_bronze'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/bronze'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/copper'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/wrought_iron'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/steel'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/black_steel'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/blue_steel'))
Anvil.removeRecipe(item('tfcthings:prospectors_hammer_head/red_steel'))

// Black Steel Grindstone
Welding.removeRecipe(item('tfcthings:grindstone_steel'))

// Heavy Sling Ammo recipe
Anvil.removeRecipe(item('tfcthings:sling_ammo') * 8)
Anvil.removeRecipe(item('tfcthings:sling_ammo') * 16)

// Отключение затачивалок всех типов (Временно)
Welding.removeRecipe(item('tfcthings:honing_steel_diamond'))
Welding.removeRecipe(item('tfcthings:honing_steel_head_diamond'))
Anvil.removeRecipe(item('tfcthings:honing_steel_head'))
Quern.removeRecipe(item('tfcthings:whetstone'))