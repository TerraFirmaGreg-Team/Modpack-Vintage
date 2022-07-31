import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

import mods.inworldcrafting.FluidToItem;

import mods.charset.Cauldron;

val dustImpure as OrePrefix = OrePrefix.getPrefix("dustImpure");

dustImpure.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:fresh_water>, [Utils.ore(orePrefix, material)]);
    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:salt_water>, [Utils.ore(orePrefix, material)]);
    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:water>, [Utils.ore(orePrefix, material)]);

    Cauldron.addItemRecipe(Utils.ore(orePrefix, material), <liquid:fresh_water> * 100, Utils.item("dustTiny", material) * 2);
    Cauldron.addItemRecipe(Utils.ore(orePrefix, material), <liquid:salt_water> * 100, Utils.item("dustTiny", material) * 2);
    Cauldron.addItemRecipe(Utils.ore(orePrefix, material), <liquid:water> * 100, Utils.item("dustTiny", material) * 2);

} as IOreRecipeHandler);
