import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Quern;

import mods.horsepower.Grindstone;

import mods.dropt.Dropt;

val oreChunk as OrePrefix = OrePrefix.getPrefix("oreChunk");

oreChunk.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    // Дробилка TFC
    Quern.addRecipe("tfg/gregtech/ore_chunk/" + material.name, Utils.item(orePrefix, material), Utils.item("crushed", material) * 2);

    // Конская дробилка
    Grindstone.add(Utils.item(orePrefix, material), Utils.item("dustImpure", material) * 3, 10, false);

    // Руды в их куски при выкапывании
    Dropt.list("tfg/gregtech/ore_chunk/" + material.name).add(Dropt.rule()
        .matchBlocks(["gregtech:ore_" + material.name + "_0:*", "gregtech:ore_" + material.name + "_1:*", "gregtech:ore_" + material.name + "_2:*"])
        .addDrop(Dropt.drop().force().items([Utils.item(orePrefix, material)]))    
        .addDrop(Dropt.drop().selector(Dropt.weight(70)))
        .addDrop(Dropt.drop().selector(Dropt.weight(30)).items([Utils.item(orePrefix, material)]))
        );

} as IOreRecipeHandler);

// Fix strange bug with oreQuartzite
// Centrifuge
macerator.recipeBuilder()
    .inputs(<gregtech:ore_quartzite_0>)
    .outputs(<metaitem:crushedQuartzite> * 2)
    .chancedOutput(<metaitem:gemCertusQuartz>, 1400, 850)
    .chancedOutput(<metaitem:dustStone>, 6700, 800)
    .duration(400).EUt(2).buildAndRegister();

// Forge Hammer
forge_hammer.recipeBuilder()
    .inputs(<gregtech:ore_quartzite_0>)
    .outputs(<metaitem:crushedQuartzite>)
    .duration(10).EUt(16).buildAndRegister();


// Fix strange bug with oreSoapstone
// Centrifuge
macerator.recipeBuilder()
    .inputs(<gregtech:ore_soapstone_0>)
    .outputs(<metaitem:crushedSoapstone> * 2)
    .chancedOutput(<metaitem:dustSiliconDioxide>, 1400, 850)
    .chancedOutput(<metaitem:dustStone>, 6700, 800)
    .duration(400).EUt(2).buildAndRegister();

// Forge Hammer
forge_hammer.recipeBuilder()
    .inputs(<gregtech:ore_soapstone_0>)
    .outputs(<metaitem:crushedSoapstone>)
    .duration(10).EUt(16).buildAndRegister();