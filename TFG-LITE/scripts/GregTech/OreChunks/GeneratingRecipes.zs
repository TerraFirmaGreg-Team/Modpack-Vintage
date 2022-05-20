import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;

import mods.dropt.Dropt;

import crafttweaker.oredict.IOreDictEntry;

val oreChunk as OrePrefix = OrePrefix.getPrefix("oreChunk");

oreChunk.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    // Chunks = Ores
    //val material_string = material.name[0].toUpperCase + material.name.substring(1);

    //val oreDictEnt = oreDict.get("ore" + material_string);

    //oreDictEnt.add(Utils.item(orePrefix, material));

    // Руда угля GT -> Уголь Гем
    Dropt.list("Ore_To_oreChunks_" + material.name).add(Dropt.rule()
        .matchBlocks(["gregtech:ore_" + material.name + "_0:*", "gregtech:ore_" + material.name + "_1:*", "gregtech:ore_" + material.name + "_2:*"])
        .addDrop(Dropt.drop().items([Utils.item(orePrefix, material)])));

} as IOreRecipeHandler);