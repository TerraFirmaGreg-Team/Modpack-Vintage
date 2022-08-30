import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadShovel as OrePrefix = OrePrefix.getPrefix("toolHeadShovel");

toolHeadShovel.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:head_toolheadshovel_" + material.name);

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal>)
    .notConsumable(<metaitem:glass_lens.pink>)
    .outputs(<metaitem:toolHeadShovelOpal>)
    .duration(200).EUt(2).buildAndRegister();