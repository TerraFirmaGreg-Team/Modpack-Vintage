#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<planetprogression:telescope_fake_block>,
   <planetprogression:block_multi>,
	<planetprogression:satellite_builder>,
	<planetprogression:advanced_launch_pad_full>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

recipes.removeByMod("planetprogression");

// Спутник
mods.PlanetProgression.removeSatelliteBuilderRecipe(<planetprogression:satellite_basic>);

// Ракета со спутником
mods.PlanetProgression.removeSatelliteRocketRecipe();