import crafttweaker.item.IItemStack;

import mods.horsepower.Grindstone;

// --- Removing Recipes

// GrindStone Removing
val RemoveItemsFromQuern as IItemStack[] = [
	<tfc:powder/flux> * 4,
    <minecraft:redstone> * 8,
    <tfc:powder/fertilizer> * 8,
    <minecraft:glowstone_dust> * 8
];
for item in RemoveItemsFromQuern{
    Grindstone.remove(item);
}

// --- Adding Recipes

// Other Recipes
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 3, 5, false);
