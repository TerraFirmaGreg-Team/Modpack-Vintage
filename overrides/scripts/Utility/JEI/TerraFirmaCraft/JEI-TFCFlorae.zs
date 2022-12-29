#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.LeatherKnapping;

// --- Массивы

val RemoveAndHide as IItemStack[] = [
   <tfcflorae:tools/flint/hammer/flint>,
   <tfcflorae:tools/flint/hammer_head/flint>,
   <tfcflorae:container/leather_bag_piece>,
   <tfcflorae:container/leather_bag>,
   <tfcflorae:container/pineapple_leather_bag_piece>,
   <tfcflorae:container/pineapple_leather_bag>,
   // Bows
   <tfcflorae:tools/bows/shortbow/shortbow>,
   <tfcflorae:tools/bows/longbow/longbow>,
   <tfcflorae:tools/bows/bonebow/bonebow>,
   <tfcflorae:tools/bows/bow_of_lost_souls/bow_of_lost_souls>,
   <tfcflorae:tools/bows/elite_power_bow/elite_power_bow>,
   <tfcflorae:tools/bows/green_menace/green_menace>,
   <tfcflorae:tools/bows/hunting_bow/hunting_bow>,
   <tfcflorae:tools/bows/nocturnal_bow/nocturnal_bow>,
   <tfcflorae:tools/bows/red_snake/red_snake>,
   <tfcflorae:tools/bows/rosebow/rosebow>,
   <tfcflorae:tools/bows/sabrewing/sabrewing>,
   // Gems
   <tfcflorae:gem/amber:*>
];

val RemoveRecipesByName = [
	"tfcflorae:wood/joshua_tree2/joshua_tree_log",
	"tfcflorae:wood/joshua_tree/joshua_tree_log_reverse",
	"tfcflorae:wood/fruit_tree/firmalife/fence/cassia_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence/ceylon_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence_gate/cassia_cinnamon",
	"tfcflorae:wood/fruit_tree/firmalife/fence_gate/ceylon_cinnamon",
	"tfcflorae:yeast"
] as string[];

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

// Поименное удаление рецептов
for item in RemoveRecipesByName{
   recipes.removeByRecipeName(item);
}

// Недоработанные рецепты вина из Pear
Barrel.removeRecipe(<liquid:pear_wine> * 500);
Barrel.removeRecipe(<liquid:pear_brandy> * 500);

// Недоработанные рецепты вина из Papaya
Barrel.removeRecipe(<liquid:papaya_wine> * 500);
Barrel.removeRecipe(<liquid:papaya_brandy> * 500);

// Недоработанные рецепты вина из Orange
Barrel.removeRecipe(<liquid:orange_wine> * 500);

Barrel.removeRecipe(<minecraft:clay_ball>);

Barrel.removeRecipe(<tfc:crop/product/dirty_jute_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_sisal_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_silk_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_cotton_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_linen_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_hemp_net>, <liquid:olive_oil> * 50);

LeatherKnapping.removeRecipe(<tfcflorae:container/leather_bag>);
LeatherKnapping.removeRecipe(<tfcflorae:container/pineapple_leather_bag>);