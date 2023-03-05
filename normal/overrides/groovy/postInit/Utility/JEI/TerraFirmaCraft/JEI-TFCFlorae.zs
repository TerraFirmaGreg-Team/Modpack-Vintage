#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Barrel
import mods.terrafirmacraft.LeatherKnapping

// --- Массивы

def (RemoveAndHide) = [
   item('tfcflorae:tools/flint/hammer/flint'),
   item('tfcflorae:tools/flint/hammer_head/flint'),
   item('tfcflorae:container/leather_bag_piece'),
   item('tfcflorae:container/leather_bag'),
   item('tfcflorae:container/pineapple_leather_bag_piece'),
   item('tfcflorae:container/pineapple_leather_bag'),
   // Bows
   item('tfcflorae:tools/bows/shortbow/shortbow'),
   item('tfcflorae:tools/bows/longbow/longbow'),
   item('tfcflorae:tools/bows/bonebow/bonebow'),
   item('tfcflorae:tools/bows/bow_of_lost_souls/bow_of_lost_souls'),
   item('tfcflorae:tools/bows/elite_power_bow/elite_power_bow'),
   item('tfcflorae:tools/bows/green_menace/green_menace'),
   item('tfcflorae:tools/bows/hunting_bow/hunting_bow'),
   item('tfcflorae:tools/bows/nocturnal_bow/nocturnal_bow'),
   item('tfcflorae:tools/bows/red_snake/red_snake'),
   item('tfcflorae:tools/bows/rosebow/rosebow'),
   item('tfcflorae:tools/bows/sabrewing/sabrewing'),
   // Gems
   item('tfcflorae:gem/amber:*')
]

def (RemoveRecipesByName) = [
	"tfcflorae:wood/joshua_tree2/joshua_tree_log",
	"tfcflorae:wood/joshua_tree/joshua_tree_log_reverse",
	"tfcflorae:wood/fruit_tree/firmalife/fence/cassia_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence/ceylon_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence_gate/cassia_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence_gate/ceylon_cinnamon",
	"tfcflorae:yeast"
] as string[]

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

// Поименное удаление рецептов
for item in RemoveRecipesByName{
   crafting.removeByOutputByRecipeName(item)
}

// Недоработанные рецепты вина из Pear
Barrel.removeRecipe(fluid('pear_wine') * 500)
Barrel.removeRecipe(fluid('pear_brandy') * 500)

// Недоработанные рецепты вина из Papaya
Barrel.removeRecipe(fluid('papaya_wine') * 500)
Barrel.removeRecipe(fluid('papaya_brandy') * 500)

// Недоработанные рецепты вина из Orange
Barrel.removeRecipe(fluid('orange_wine') * 500)

Barrel.removeRecipe(item('minecraft:clay_ball'))

Barrel.removeRecipe(item('tfc:crop/product/dirty_jute_net'), fluid('olive_oil') * 50)
Barrel.removeRecipe(item('tfcflorae:crop/product/dirty_sisal_net'), fluid('olive_oil') * 50)
Barrel.removeRecipe(item('tfcflorae:crop/product/dirty_silk_net'), fluid('olive_oil') * 50)
Barrel.removeRecipe(item('tfcflorae:crop/product/dirty_cotton_net'), fluid('olive_oil') * 50)
Barrel.removeRecipe(item('tfcflorae:crop/product/dirty_linen_net'), fluid('olive_oil') * 50)
Barrel.removeRecipe(item('tfcflorae:crop/product/dirty_hemp_net'), fluid('olive_oil') * 50)

LeatherKnapping.removeRecipe(item('tfcflorae:container/leather_bag'))
LeatherKnapping.removeRecipe(item('tfcflorae:container/pineapple_leather_bag'))