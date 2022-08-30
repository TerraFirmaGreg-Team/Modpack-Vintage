import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

val toolHeadKnife as OrePrefix = OrePrefix.getPrefix("toolHeadKnife");

toolHeadKnife.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    recipes.removeByRecipeName("gregtech:knife_" + material.name);

    if (material.name != "flint") {
       recipes.addShaped("tfg/gregtech/knife/" + material.name, <metaitem:tool.knife>.withTag({"GT.ToolStats": {Material: material.name}}), [
        [Utils.ore(orePrefix, material), <minecraft:stick>, null]]); 
    }

    if (material.hasIngot()) {
        alloy_smelter.recipeBuilder()
            .inputs(Utils.ore("ingot", material))
            .notConsumable(<contenttweaker:shape_mold_knife>)
            .outputs(Utils.item(orePrefix, material))
            .duration(340).EUt(14).buildAndRegister();
    }

} as IOreRecipeHandler);

// Blue Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemBlueTopaz>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeBlueTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Diamond
laser_engraver.recipeBuilder()
    .inputs(<minecraft:diamond>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeDiamond>)
    .duration(200).EUt(2).buildAndRegister();

// Yellow Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetYellow>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeGarnetYellow>)
    .duration(200).EUt(2).buildAndRegister();

// Sapphire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemSapphire>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Green Saphhire
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGreenSapphire>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeGreenSapphire>)
    .duration(200).EUt(2).buildAndRegister();

// Red Garnet
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemGarnetRed>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeGarnetRed>)
    .duration(200).EUt(2).buildAndRegister();

// Ruby
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemRuby>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeRuby>)
    .duration(200).EUt(2).buildAndRegister();

// Amethyst
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemAmethyst>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeAmethyst>)
    .duration(200).EUt(2).buildAndRegister();

// Topaz
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemTopaz>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeTopaz>)
    .duration(200).EUt(2).buildAndRegister();

// Emerald
laser_engraver.recipeBuilder()
    .inputs(<minecraft:emerald>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeEmerald>)
    .duration(200).EUt(2).buildAndRegister();

// Olivine
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOlivine>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeOlivine>)
    .duration(200).EUt(2).buildAndRegister();

// Opal
laser_engraver.recipeBuilder()
    .inputs(<metaitem:gemOpal>)
    .notConsumable(<metaitem:glass_lens.red>)
    .outputs(<metaitem:toolHeadKnifeOpal>)
    .duration(200).EUt(2).buildAndRegister();