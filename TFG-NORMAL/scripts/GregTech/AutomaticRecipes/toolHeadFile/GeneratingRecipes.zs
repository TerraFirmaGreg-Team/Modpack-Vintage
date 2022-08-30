import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadFile as OrePrefix = OrePrefix.getPrefix("toolHeadFile");

toolHeadFile.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:file_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 2)
    .notConsumable(<metaitem:glass_lens.light_blue>)
    .outputs(<metaitem:toolHeadFileOpal>)
    .duration(200).EUt(2).buildAndRegister();