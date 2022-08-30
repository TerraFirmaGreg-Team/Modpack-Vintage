import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val plateDouble as OrePrefix = OrePrefix.getPrefix("plateDouble");

plateDouble.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:plate_double_" + material.name);

} as IOreRecipeHandler);
