import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadHammer as OrePrefix = OrePrefix.getPrefix("toolHeadHammer");

toolHeadHammer.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:hammer_" + material.name);
    recipes.removeByRecipeName("gregtech:head_toolheadhammer_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 6)
    .notConsumable(<metaitem:glass_lens.light_gray>)
    .outputs(<metaitem:toolHeadHammerOpal>)
    .duration(200).EUt(2).buildAndRegister();