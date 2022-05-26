import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadSword as OrePrefix = OrePrefix.getPrefix("toolHeadSword");

toolHeadSword.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:head_toolheadsword_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 2)
    .notConsumable(<metaitem:glass_lens.orange>)
    .outputs(<metaitem:toolHeadSwordOpal>)
    .duration(200).EUt(2).buildAndRegister();