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
    Quern.addRecipe("tfg/ore_chunk/" + material.name, Utils.item(orePrefix, material), Utils.item("crushed", material) * 2);

    // Конская дробилка
    Grindstone.add(Utils.item(orePrefix, material), Utils.item("dustImpure", material) * 3, 10, false);

    // Руды в их куски при выкапывании
    Dropt.list("Ore_To_oreChunks_" + material.name).add(Dropt.rule()
        .matchBlocks(["gregtech:ore_" + material.name + "_0:*", "gregtech:ore_" + material.name + "_1:*", "gregtech:ore_" + material.name + "_2:*"])
        .addDrop(Dropt.drop().force().items([Utils.item(orePrefix, material)]))    
        .addDrop(Dropt.drop().selector(Dropt.weight(70)))
        .addDrop(Dropt.drop().selector(Dropt.weight(30)).items([Utils.item(orePrefix, material)]))
        );

} as IOreRecipeHandler);

function GenerateRecipes(material_input as string, item_byproduct as IItemStack, oreMultip as int) {
	
    if (oreMultip == 1)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)), Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input)), Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input)), Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * 2)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)))
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (oreMultip == 2)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)) * 2, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input))  * 2, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input))  * 2, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * (oreMultip * 2))
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * oreMultip)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (oreMultip == 3)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)) * 3, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input)) * 3, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input)) * 3, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * (oreMultip * 2))
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * oreMultip)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (oreMultip == 4)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)) * 4, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input)) * 4, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input)) * 4, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * (oreMultip * 2))
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * oreMultip)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (oreMultip == 5)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)) * 5, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input)) * 5, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input)) * 5, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * (oreMultip * 2))
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * oreMultip)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (oreMultip == 6)
    {
        // Furnace
        if (Utils.material(material_input).hasIngot()) {
            if (!Utils.material(material_input).hasBlastTemp()) {
                furnace.addRecipe(Utils.item(OrePrefix.getPrefix("ingot"), Utils.material(material_input)) * 6, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
            }
        }
        else if (Utils.material(material_input).hasGem()) {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("gem"), Utils.material(material_input)) * 6, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        else {
            furnace.addRecipe(Utils.item(OrePrefix.getPrefix("dust"), Utils.material(material_input)) * 6, Utils.item(OrePrefix.getPrefix("oreChunk"), Utils.material(material_input)));
        }
        
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * (oreMultip * 2))
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(Utils.item("oreChunk", Utils.material(material_input)))
            .outputs(Utils.item(OrePrefix.getPrefix("crushed"), Utils.material(material_input)) * oreMultip)
            .duration(10).EUt(16).buildAndRegister();
    }
}

// Создание рецептов для кусков, ведь разработчики GTCEu не могут исправить баг с рецептами
GenerateRecipes("zeolite", <metaitem:dustCalcium>, "3");
GenerateRecipes("tantalite", <metaitem:dustManganese>, "1");
GenerateRecipes("bornite", <metaitem:dustPyrite>, "1");
GenerateRecipes("lapis", <metaitem:gemLazurite>, "1");
GenerateRecipes("almandine", <metaitem:gemGarnetRed>, "3");
GenerateRecipes("stibnite", <metaitem:dustAntimonyTrioxide>, "1");
GenerateRecipes("barite", <metaitem:dustBarite>, "1");
GenerateRecipes("pyrochlore", <metaitem:gemApatite>, "1");
GenerateRecipes("scheelite", <metaitem:dustManganese>, "1");
GenerateRecipes("powellite", <metaitem:dustIron>, "1");
GenerateRecipes("cobaltite", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("cassiterite", <metaitem:dustTin>, "2");
GenerateRecipes("garnet_red", <metaitem:gemSpessartine>, "4");
GenerateRecipes("chromite", <metaitem:dustIron>, "1");
GenerateRecipes("trona", <metaitem:dustSodium>, "2");
GenerateRecipes("garnierite", <metaitem:dustIron>, "1");
GenerateRecipes("glauconite_sand", <metaitem:dustSodium>, "3");
GenerateRecipes("mica", <metaitem:dustPotassium>, "2");
GenerateRecipes("pyrite", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("pentlandite", <metaitem:dustIron>, "1");
GenerateRecipes("uraninite", <metaitem:dustUraninite>, "1");
GenerateRecipes("cobalt", <metaitem:dustCobaltOxide>, "1");
GenerateRecipes("sodalite", <metaitem:gemLazurite>, "6");
GenerateRecipes("molybdenum", <metaitem:dustMolybdenum>, "1");
GenerateRecipes("salt", <metaitem:gemRockSalt>, "2");
GenerateRecipes("thorium", <metaitem:dustUraninite>, "1");
GenerateRecipes("banded_iron", <metaitem:dustMagnetite>, "1");
GenerateRecipes("spessartine", <metaitem:gemGarnetRed>, "3");
GenerateRecipes("olivine", <metaitem:gemPyrope>, "2");
GenerateRecipes("pollucite", <metaitem:dustCaesium>, "1");
GenerateRecipes("lead", <metaitem:dustSilver>, "1");
GenerateRecipes("tricalcium_phosphate", <metaitem:gemApatite>, "3");
GenerateRecipes("plutonium", <metaitem:dustUraninite>, "1");
GenerateRecipes("topaz", <metaitem:gemBlueTopaz>, "1");
GenerateRecipes("garnet_yellow", <metaitem:gemAndradite>, "4");
GenerateRecipes("blue_topaz", <metaitem:gemTopaz>, "2");
GenerateRecipes("bauxite", <metaitem:gemGrossular>, "1");
GenerateRecipes("gold",  <metaitem:dustCopper>, "1");
GenerateRecipes("iron", <metaitem:dustNickel>, "1");
GenerateRecipes("yellow_limonite", <metaitem:dustNickel>, "1");
GenerateRecipes("opal", <metaitem:gemOpal>, "1");
GenerateRecipes("emerald", <metaitem:dustBeryllium>, "2");
GenerateRecipes("lithium", <metaitem:dustLithium>, "1");
GenerateRecipes("tetrahedrite", <metaitem:dustAntimony>, "1");
GenerateRecipes("electrotine", <minecraft:redstone>, "5");
GenerateRecipes("basaltic_mineral_sand", <metaitem:dustBasalt>, "1");
GenerateRecipes("nether_quartz", <metaitem:gemQuartzite>, "2");
GenerateRecipes("green_sapphire", <metaitem:dustAluminium>, "1");
GenerateRecipes("sphalerite", <metaitem:gemGarnetYellow>, "1");
GenerateRecipes("cinnabar", <minecraft:redstone>, "1");
GenerateRecipes("naquadah", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("bastnasite", <metaitem:dustNeodymium>, "2");
GenerateRecipes("platinum", <metaitem:dustNickel>, "1");
GenerateRecipes("magnetite", <metaitem:dustIron>, "1");
GenerateRecipes("quartzite", <metaitem:gemCertusQuartz>, "1");
GenerateRecipes("talc", <metaitem:dustClay>, "2");
GenerateRecipes("granitic_mineral_sand", <metaitem:dustGraniteBlack>, "1");
GenerateRecipes("certus_quartz", <minecraft:quartz>, "2");
GenerateRecipes("monazite", <metaitem:dustThorium>, "4");
GenerateRecipes("chalcopyrite", <metaitem:dustPyrite>, "1");
GenerateRecipes("silver", <metaitem:dustLead>, "1");
GenerateRecipes("alunite", <metaitem:dustAlunite>, "3");
GenerateRecipes("asbestos", <metaitem:dustDiatomite>, "3");
GenerateRecipes("sapphire", <metaitem:dustAluminium>, "1");
GenerateRecipes("nickel", <metaitem:dustCobalt>, "1");
GenerateRecipes("kyanite", <metaitem:dustTalc>, "1");
GenerateRecipes("vanadium_magnetite", <metaitem:dustMagnetite>, "1");
GenerateRecipes("pyrope", <metaitem:gemGarnetRed>, "3");
GenerateRecipes("sulfur", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("magnesite", <metaitem:dustMagnesium>, "1");
GenerateRecipes("bentonite", <metaitem:dustAluminium>, "3");
GenerateRecipes("palladium", <metaitem:dustPalladium>, "1");
GenerateRecipes("glowstone", <minecraft:glowstone_dust>, "1");
GenerateRecipes("beryllium", <minecraft:emerald>, "1");
GenerateRecipes("malachite", <metaitem:dustBrownLimonite>, "1");
GenerateRecipes("rock_salt", <metaitem:gemSalt>, "2");
GenerateRecipes("ilmenite", <metaitem:dustIron>, "1");
GenerateRecipes("calcite", <metaitem:dustCalcium>, "1");
GenerateRecipes("graphite", <metaitem:dustCarbon>, "1");
GenerateRecipes("pitchblende", <metaitem:dustThorium>, "1");
GenerateRecipes("aluminium", <metaitem:dustThorium>, "1");
GenerateRecipes("amethyst", <metaitem:gemAmethyst>, "1");
GenerateRecipes("redstone", <metaitem:gemCinnabar>, "5");
GenerateRecipes("spodumene", <metaitem:dustAluminium>, "1");
GenerateRecipes("cooperite",  <metaitem:dustNickel>, "1");
GenerateRecipes("realgar", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("diatomite", <metaitem:dustBandedIron>, "1");
GenerateRecipes("bismuth", <metaitem:dustBismuth>, "1");
GenerateRecipes("lepidolite", <metaitem:dustLithium>, "2");
GenerateRecipes("brown_limonite", <metaitem:gemMalachite>, "1");
GenerateRecipes("wulfenite", <metaitem:dustIron>, "1");
GenerateRecipes("gypsum",  <metaitem:dustSulfur>, "1"); //
GenerateRecipes("soapstone", <metaitem:dustSiliconDioxide>, "1");
GenerateRecipes("apatite", <metaitem:dustTricalciumPhosphate>, "4");
GenerateRecipes("copper", <metaitem:dustCobalt>, "1");
GenerateRecipes("galena", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("neodymium", <metaitem:dustRareEarth>, "1");
GenerateRecipes("tin", <metaitem:dustIron>, "1");
GenerateRecipes("coal", <minecraft:coal>, "2");
GenerateRecipes("fullers_earth", <metaitem:dustAluminium>, "2");
GenerateRecipes("pyrolusite", <metaitem:dustManganese>, "1");
GenerateRecipes("molybdenite", <metaitem:dustMolybdenum>, "1");
GenerateRecipes("saltpeter", <metaitem:dustSaltpeter>, "2"); //
GenerateRecipes("tungstate", <metaitem:dustManganese>, "1");
GenerateRecipes("garnet_sand", <metaitem:gemGarnetRed>, "1");
GenerateRecipes("grossular", <metaitem:gemGarnetYellow>, "3");
GenerateRecipes("ruby", <metaitem:dustChrome>, "1");
GenerateRecipes("cassiterite_sand", <metaitem:dustTin>, "2");
GenerateRecipes("oilsands", <metaitem:dustOilsands>, "1");
GenerateRecipes("lazurite", <metaitem:gemSodalite>, "6");
GenerateRecipes("chalcocite", <metaitem:dustSulfur>, "1"); //
GenerateRecipes("diamond", <metaitem:dustGraphite>, "1"); //

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