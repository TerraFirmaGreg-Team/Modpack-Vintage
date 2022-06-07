import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;
import mods.inworldcrafting.FluidToItem;

val dustImpure as OrePrefix = OrePrefix.getPrefix("dustImpure");

dustImpure.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:fresh_water>, [Utils.ore(orePrefix, material)]);
    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:salt_water>, [Utils.ore(orePrefix, material)]);
    FluidToItem.transform(Utils.item("dustTiny", material) * 2, <liquid:water>, [Utils.ore(orePrefix, material)]);

} as IOreRecipeHandler);
