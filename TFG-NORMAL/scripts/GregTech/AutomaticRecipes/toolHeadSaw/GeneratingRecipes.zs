import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadSaw as OrePrefix = OrePrefix.getPrefix("toolHeadSaw");

toolHeadSaw.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:head_toolheadsaw_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 2)
    .notConsumable(<metaitem:glass_lens.green>)
    .outputs(<metaitem:toolHeadSawOpal>)
    .duration(200).EUt(2).buildAndRegister();