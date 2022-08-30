import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val plate as OrePrefix = OrePrefix.getPrefix("plate");

plate.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:plate_" + material.name);

} as IOreRecipeHandler);
