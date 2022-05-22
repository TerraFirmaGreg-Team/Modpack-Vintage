import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.recipe.Utils;
import mods.gregtech.material.Material;

import crafttweaker.item.IItemStack;

import mods.dropt.Dropt;

val oreChunk as OrePrefix = OrePrefix.getPrefix("oreChunk");

oreChunk.generateRecipes(function(orePrefix as OrePrefix, material as Material) {

    // Руды в их куски при выкапывании
    Dropt.list("Ore_To_oreChunks_" + material.name).add(Dropt.rule()
        .matchBlocks(["gregtech:ore_" + material.name + "_0:*", "gregtech:ore_" + material.name + "_1:*", "gregtech:ore_" + material.name + "_2:*"])
        .addDrop(Dropt.drop().force().items([Utils.item(orePrefix, material)]))    
        .addDrop(Dropt.drop().selector(Dropt.weight(70)))
        .addDrop(Dropt.drop().selector(Dropt.weight(30)).items([Utils.item(orePrefix, material)]))
        );

} as IOreRecipeHandler);

function GenerateRecipes (item_input as IItemStack, item_output as IItemStack, item_byproduct as IItemStack, mode as string) {
	
    if (mode == "1")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 2)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (mode == "2")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 4)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 2)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (mode == "3")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 6)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 3)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (mode == "4")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 8)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 4)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (mode == "5")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 10)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 5)
            .duration(10).EUt(16).buildAndRegister();
    }
    else if (mode == "6")
    {
        // Centrifuge
        macerator.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 12)
            .chancedOutput(item_byproduct, 1400, 850)
            .chancedOutput(<metaitem:dustStone>, 6700, 800)
            .duration(400).EUt(2).buildAndRegister();

        // Forge Hammer
        forge_hammer.recipeBuilder()
            .inputs(item_input)
            .outputs(item_output * 6)
            .duration(10).EUt(16).buildAndRegister();
    }
}

// Создание рецептов для кусков, ведь разработчики GTCEu не могут исправить баг с рецептами
GenerateRecipes(<metaitem:oreChunkZeolite>, <metaitem:crushedZeolite>, <metaitem:dustCalcium>, "3");
GenerateRecipes(<metaitem:oreChunkTantalite>, <metaitem:crushedTantalite>, <metaitem:dustManganese>, "1");
GenerateRecipes(<metaitem:oreChunkBornite>, <metaitem:crushedBornite>, <metaitem:dustPyrite>, "1");
GenerateRecipes(<metaitem:oreChunkLapis>, <metaitem:crushedLapis>, <metaitem:gemLazurite>, "1");
GenerateRecipes(<metaitem:oreChunkAlmandine>, <metaitem:crushedAlmandine>, <metaitem:gemGarnetRed>, "3");
GenerateRecipes(<metaitem:oreChunkStibnite>, <metaitem:crushedStibnite>, <metaitem:dustAntimonyTrioxide>, "1");
GenerateRecipes(<metaitem:oreChunkBarite>, <metaitem:crushedBarite>, <metaitem:dustBarite>, "1");
GenerateRecipes(<metaitem:oreChunkPyrochlore>, <metaitem:crushedPyrochlore>, <metaitem:gemApatite>, "1");
GenerateRecipes(<metaitem:oreChunkScheelite>, <metaitem:crushedScheelite>, <metaitem:dustManganese>, "1");
GenerateRecipes(<metaitem:oreChunkPowellite>, <metaitem:crushedPowellite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkCobaltite>, <metaitem:crushedCobaltite>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkCassiterite>, <metaitem:crushedCassiterite>, <metaitem:dustTin>, "2");
GenerateRecipes(<metaitem:oreChunkGarnetRed>, <metaitem:crushedGarnetRed>, <metaitem:gemSpessartine>, "4");
GenerateRecipes(<metaitem:oreChunkChromite>, <metaitem:crushedChromite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkTrona>, <metaitem:crushedTrona>, <metaitem:dustSodium>, "2");
GenerateRecipes(<metaitem:oreChunkGarnierite>, <metaitem:crushedGarnierite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkGlauconiteSand>, <metaitem:crushedGlauconiteSand>, <metaitem:dustSodium>, "3");
GenerateRecipes(<metaitem:oreChunkMica>, <metaitem:crushedMica>, <metaitem:dustPotassium>, "2");
GenerateRecipes(<metaitem:oreChunkPyrite>, <metaitem:crushedPyrite>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkPentlandite>, <metaitem:crushedPentlandite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkUraninite>, <metaitem:crushedUraninite>, <metaitem:dustUraninite>, "1");
GenerateRecipes(<metaitem:oreChunkCobalt>, <metaitem:crushedCobalt>, <metaitem:dustCobaltOxide>, "1");
GenerateRecipes(<metaitem:oreChunkSodalite>, <metaitem:crushedSodalite>, <metaitem:gemLazurite>, "6");
GenerateRecipes(<metaitem:oreChunkMolybdenum>, <metaitem:crushedMolybdenum>, <metaitem:dustMolybdenum>, "1");
GenerateRecipes(<metaitem:oreChunkSalt>, <metaitem:crushedSalt>, <metaitem:gemRockSalt>, "2");
GenerateRecipes(<metaitem:oreChunkThorium>, <metaitem:crushedThorium>, <metaitem:dustUraninite>, "1");
GenerateRecipes(<metaitem:oreChunkBandedIron>, <metaitem:crushedBandedIron>, <metaitem:dustMagnetite>, "1");
GenerateRecipes(<metaitem:oreChunkSpessartine>, <metaitem:crushedSpessartine>, <metaitem:gemGarnetRed>, "3");
GenerateRecipes(<metaitem:oreChunkOlivine>, <metaitem:crushedOlivine>, <metaitem:gemPyrope>, "2");
GenerateRecipes(<metaitem:oreChunkPollucite>, <metaitem:crushedPollucite>, <metaitem:dustCaesium>, "1");
GenerateRecipes(<metaitem:oreChunkLead>, <metaitem:crushedLead>, <metaitem:dustSilver>, "1");
GenerateRecipes(<metaitem:oreChunkTricalciumPhosphate>, <metaitem:crushedTricalciumPhosphate>, <metaitem:gemApatite>, "3");
GenerateRecipes(<metaitem:oreChunkPlutonium>, <metaitem:crushedPlutonium>, <metaitem:dustUraninite>, "1");
GenerateRecipes(<metaitem:oreChunkTopaz>, <metaitem:crushedTopaz>, <metaitem:gemBlueTopaz>, "1");
GenerateRecipes(<metaitem:oreChunkGarnetYellow>, <metaitem:crushedGarnetYellow>, <metaitem:gemAndradite>, "4");
GenerateRecipes(<metaitem:oreChunkBlueTopaz>, <metaitem:crushedBlueTopaz>, <metaitem:gemTopaz>, "2");
GenerateRecipes(<metaitem:oreChunkBauxite>, <metaitem:crushedBauxite>, <metaitem:gemGrossular>, "1");
GenerateRecipes(<metaitem:oreChunkGold>, <metaitem:crushedGold>, <metaitem:dustCopper>, "1");
GenerateRecipes(<metaitem:oreChunkIron>, <metaitem:crushedIron>, <metaitem:dustNickel>, "1");
GenerateRecipes(<metaitem:oreChunkYellowLimonite>, <metaitem:crushedYellowLimonite>, <metaitem:dustNickel>, "1");
GenerateRecipes(<metaitem:oreChunkOpal>, <metaitem:crushedOpal>, <metaitem:gemOpal>, "1");
GenerateRecipes(<metaitem:oreChunkEmerald>, <metaitem:crushedEmerald>, <metaitem:dustBeryllium>, "2");
GenerateRecipes(<metaitem:oreChunkLithium>, <metaitem:crushedLithium>, <metaitem:dustLithium>, "1");
GenerateRecipes(<metaitem:oreChunkTetrahedrite>, <metaitem:crushedTetrahedrite>, <metaitem:dustAntimony>, "1");
GenerateRecipes(<metaitem:oreChunkElectrotine>, <metaitem:crushedElectrotine>, <minecraft:redstone>, "5");
GenerateRecipes(<metaitem:oreChunkBasalticMineralSand>, <metaitem:crushedBasalticMineralSand>, <metaitem:dustBasalt>, "1");
GenerateRecipes(<metaitem:oreChunkNetherQuartz>, <metaitem:crushedNetherQuartz>, <metaitem:gemQuartzite>, "2");
GenerateRecipes(<metaitem:oreChunkGreenSapphire>, <metaitem:crushedGreenSapphire>, <metaitem:dustAluminium>, "1");
GenerateRecipes(<metaitem:oreChunkSphalerite>, <metaitem:crushedSphalerite>, <metaitem:gemGarnetYellow>, "1");
GenerateRecipes(<metaitem:oreChunkCinnabar>, <metaitem:crushedCinnabar>, <minecraft:redstone>, "1");
GenerateRecipes(<metaitem:oreChunkNaquadah>, <metaitem:crushedNaquadah>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkBastnasite>, <metaitem:crushedBastnasite>, <metaitem:dustNeodymium>, "2");
GenerateRecipes(<metaitem:oreChunkPlatinum>, <metaitem:crushedPlatinum>, <metaitem:dustNickel>, "1");
GenerateRecipes(<metaitem:oreChunkMagnetite>, <metaitem:crushedMagnetite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkQuartzite>, <metaitem:crushedQuartzite>, <metaitem:gemCertusQuartz>, "1");
GenerateRecipes(<metaitem:oreChunkTalc>, <metaitem:crushedTalc>, <metaitem:dustClay>, "2");
GenerateRecipes(<metaitem:oreChunkGraniticMineralSand>, <metaitem:crushedGraniticMineralSand>, <metaitem:dustGraniteBlack>, "1");
GenerateRecipes(<metaitem:oreChunkCertusQuartz>, <metaitem:crushedCertusQuartz>, <minecraft:quartz>, "2");
GenerateRecipes(<metaitem:oreChunkMonazite>, <metaitem:crushedMonazite>, <metaitem:dustThorium>, "4");
GenerateRecipes(<metaitem:oreChunkChalcopyrite>, <metaitem:crushedChalcopyrite>, <metaitem:dustPyrite>, "1");
GenerateRecipes(<metaitem:oreChunkSilver>, <metaitem:crushedSilver>, <metaitem:dustLead>, "1");
GenerateRecipes(<metaitem:oreChunkAlunite>, <metaitem:crushedAlunite>, <metaitem:dustAlunite>, "3");
GenerateRecipes(<metaitem:oreChunkAsbestos>, <metaitem:crushedAsbestos>, <metaitem:dustDiatomite>, "3");
GenerateRecipes(<metaitem:oreChunkSapphire>, <metaitem:crushedSapphire>, <metaitem:dustAluminium>, "1");
GenerateRecipes(<metaitem:oreChunkNickel>, <metaitem:crushedNickel>, <metaitem:dustCobalt>, "1");
GenerateRecipes(<metaitem:oreChunkKyanite>, <metaitem:crushedKyanite>, <metaitem:dustTalc>, "1");
GenerateRecipes(<metaitem:oreChunkVanadiumMagnetite>, <metaitem:crushedVanadiumMagnetite>, <metaitem:dustMagnetite>, "1");
GenerateRecipes(<metaitem:oreChunkPyrope>, <metaitem:crushedPyrope>, <metaitem:gemGarnetRed>, "3");
GenerateRecipes(<metaitem:oreChunkSulfur>, <metaitem:crushedSulfur>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkMagnesite>, <metaitem:crushedMagnesite>, <metaitem:dustMagnesium>, "1");
GenerateRecipes(<metaitem:oreChunkBentonite>, <metaitem:crushedBentonite>, <metaitem:dustAluminium>, "3");
GenerateRecipes(<metaitem:oreChunkPalladium>, <metaitem:crushedPalladium>, <metaitem:dustPalladium>, "1");
GenerateRecipes(<metaitem:oreChunkGlowstone>, <metaitem:crushedGlowstone>, <minecraft:glowstone_dust>, "1");
GenerateRecipes(<metaitem:oreChunkBeryllium>, <metaitem:crushedBeryllium>, <minecraft:emerald>, "1");
GenerateRecipes(<metaitem:oreChunkMalachite>, <metaitem:crushedMalachite>, <metaitem:dustBrownLimonite>, "1");
GenerateRecipes(<metaitem:oreChunkRockSalt>, <metaitem:crushedRockSalt>, <metaitem:gemSalt>, "2");
GenerateRecipes(<metaitem:oreChunkIlmenite>, <metaitem:crushedIlmenite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkCalcite>, <metaitem:crushedCalcite>, <metaitem:dustCalcium>, "1");
GenerateRecipes(<metaitem:oreChunkGraphite>, <metaitem:crushedGraphite>, <metaitem:dustCarbon>, "1");
GenerateRecipes(<metaitem:oreChunkPitchblende>, <metaitem:crushedPitchblende>, <metaitem:dustThorium>, "1");
GenerateRecipes(<metaitem:oreChunkAluminium>, <metaitem:crushedAluminium>, <metaitem:dustThorium>, "1");
GenerateRecipes(<metaitem:oreChunkAmethyst>, <metaitem:crushedAmethyst>, <metaitem:gemAmethyst>, "1");
GenerateRecipes(<metaitem:oreChunkRedstone>, <metaitem:crushedRedstone>, <metaitem:gemCinnabar>, "5");
GenerateRecipes(<metaitem:oreChunkSpodumene>, <metaitem:crushedSpodumene>, <metaitem:dustAluminium>, "1");
GenerateRecipes(<metaitem:oreChunkCooperite>, <metaitem:crushedCooperite>, <metaitem:dustNickel>, "1");
GenerateRecipes(<metaitem:oreChunkRealgar>, <metaitem:crushedRealgar>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkDiatomite>, <metaitem:crushedDiatomite>, <metaitem:dustBandedIron>, "1");
GenerateRecipes(<metaitem:oreChunkBismuth>, <metaitem:crushedBismuth>, <metaitem:dustBismuth>, "1");
GenerateRecipes(<metaitem:oreChunkLepidolite>, <metaitem:crushedLepidolite>, <metaitem:dustLithium>, "2");
GenerateRecipes(<metaitem:oreChunkBrownLimonite>, <metaitem:crushedBrownLimonite>, <metaitem:gemMalachite>, "1");
GenerateRecipes(<metaitem:oreChunkWulfenite>, <metaitem:crushedWulfenite>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkGypsum>, <metaitem:crushedGypsum>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkSoapstone>, <metaitem:crushedSoapstone>, <metaitem:dustSiliconDioxide>, "1");
GenerateRecipes(<metaitem:oreChunkApatite>, <metaitem:crushedApatite>, <metaitem:dustTricalciumPhosphate>, "4");
GenerateRecipes(<metaitem:oreChunkCopper>, <metaitem:crushedCopper>, <metaitem:dustCobalt>, "1");
GenerateRecipes(<metaitem:oreChunkGalena>, <metaitem:crushedGalena>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkNeodymium>, <metaitem:crushedNeodymium>, <metaitem:dustRareEarth>, "1");
GenerateRecipes(<metaitem:oreChunkTin>, <metaitem:crushedTin>, <metaitem:dustIron>, "1");
GenerateRecipes(<metaitem:oreChunkCoal>, <metaitem:crushedCoal>, <minecraft:coal>, "2");
GenerateRecipes(<metaitem:oreChunkFullersEarth>, <metaitem:crushedFullersEarth>, <metaitem:dustAluminium>, "2");
GenerateRecipes(<metaitem:oreChunkPyrolusite>, <metaitem:crushedPyrolusite>, <metaitem:dustManganese>, "1");
GenerateRecipes(<metaitem:oreChunkMolybdenite>, <metaitem:crushedMolybdenite>, <metaitem:dustMolybdenum>, "1");
GenerateRecipes(<metaitem:oreChunkSaltpeter>, <metaitem:crushedSaltpeter>, <metaitem:dustSaltpeter>, "2"); //
GenerateRecipes(<metaitem:oreChunkTungstate>, <metaitem:crushedTungstate>, <metaitem:dustManganese>, "1");
GenerateRecipes(<metaitem:oreChunkGarnetSand>, <metaitem:crushedGarnetSand>, <metaitem:gemGarnetRed>, "1");
GenerateRecipes(<metaitem:oreChunkGrossular>, <metaitem:crushedGrossular>, <metaitem:gemGarnetYellow>, "3");
GenerateRecipes(<metaitem:oreChunkRuby>, <metaitem:crushedRuby>, <metaitem:dustChrome>, "1");
GenerateRecipes(<metaitem:oreChunkCassiteriteSand>, <metaitem:crushedCassiteriteSand>, <metaitem:dustTin>, "2");
GenerateRecipes(<metaitem:oreChunkOilsands>, <metaitem:crushedOilsands>, <metaitem:dustOilsands>, "1");
GenerateRecipes(<metaitem:oreChunkLazurite>, <metaitem:crushedLazurite>, <metaitem:gemSodalite>, "6");
GenerateRecipes(<metaitem:oreChunkChalcocite>, <metaitem:crushedChalcocite>, <metaitem:dustSulfur>, "1"); //
GenerateRecipes(<metaitem:oreChunkDiamond>, <metaitem:crushedDiamond>, <metaitem:dustGraphite>, "1"); //

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