import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadHoe as OrePrefix = OrePrefix.getPrefix("toolHeadHoe");

toolHeadHoe.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:head_toolheadhoe_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal> * 2)
    .notConsumable(<metaitem:glass_lens.yellow>)
    .outputs(<metaitem:toolHeadHoeOpal>)
    .duration(200).EUt(2).buildAndRegister();