import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadSense as OrePrefix = OrePrefix.getPrefix("toolHeadSense");

toolHeadSense.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    //recipes.removeByRecipeName("gregtech:head_toolheadsense_" + material.name);

} as IOreRecipeHandler);
/*
// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 3)
    .notConsumable(<metaitem:glass_lens.magenta>)
    .outputs(<metaitem:toolHeadSenseOpal>)
    .duration(200).EUt(2).buildAndRegister();
*/