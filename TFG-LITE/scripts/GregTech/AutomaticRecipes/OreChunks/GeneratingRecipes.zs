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

function GenerateRecipes (item_input as IItemStack, item_output as IItemStack, item_byproduct as IItemStack) {
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

// Создание рецептов для кусков, ведь разработчики GTCEu не могут исправить баг с рецептами
GenerateRecipes(<metaitem:oreChunkZeolite>, <metaitem:crushedZeolite> * 3, <metaitem:dustCalcium>);
GenerateRecipes(<metaitem:oreChunkTantalite>, <metaitem:crushedTantalite>, <metaitem:dustManganese>);
GenerateRecipes(<metaitem:oreChunkBornite>, <metaitem:crushedBornite>, <metaitem:dustPyrite>);
GenerateRecipes(<metaitem:oreChunkLapis>, <metaitem:crushedLapis>, <metaitem:gemLazurite>);
GenerateRecipes(<metaitem:oreChunkAlmandine>, <metaitem:crushedAlmandine>, <metaitem:gemGarnetRed>);
GenerateRecipes(<metaitem:oreChunkStibnite>, <metaitem:crushedStibnite>, <metaitem:dustAntimonyTrioxide>);
GenerateRecipes(<metaitem:oreChunkBarite>, <metaitem:crushedBarite>, <metaitem:dustBarite>);
GenerateRecipes(<metaitem:oreChunkPyrochlore>, <metaitem:crushedPyrochlore>, <metaitem:gemApatite>);
GenerateRecipes(<metaitem:oreChunkScheelite>, <metaitem:crushedScheelite>, <metaitem:dustManganese>);
GenerateRecipes(<metaitem:oreChunkPowellite>, <metaitem:crushedPowellite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkCobaltite>, <metaitem:crushedCobaltite>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkCassiterite>, <metaitem:crushedCassiterite>, <metaitem:dustTin>);
GenerateRecipes(<metaitem:oreChunkGarnetRed>, <metaitem:crushedGarnetRed>, <metaitem:gemSpessartine>);
GenerateRecipes(<metaitem:oreChunkChromite>, <metaitem:crushedChromite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkTrona>, <metaitem:crushedTrona>, <metaitem:dustSodium>);
GenerateRecipes(<metaitem:oreChunkGarnierite>, <metaitem:crushedGarnierite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkGlauconiteSand>, <metaitem:crushedGlauconiteSand>, <metaitem:dustSodium>);
GenerateRecipes(<metaitem:oreChunkMica>, <metaitem:crushedMica>, <metaitem:dustPotassium>);
GenerateRecipes(<metaitem:oreChunkPyrite>, <metaitem:crushedPyrite>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkPentlandite>, <metaitem:crushedPentlandite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkUraninite>, <metaitem:crushedUraninite>, <metaitem:dustUraninite>);
GenerateRecipes(<metaitem:oreChunkCobalt>, <metaitem:crushedCobalt>, <metaitem:dustCobaltOxide>);
GenerateRecipes(<metaitem:oreChunkSodalite>, <metaitem:crushedSodalite>, <metaitem:gemLazurite>);
GenerateRecipes(<metaitem:oreChunkMolybdenum>, <metaitem:crushedMolybdenum>, <metaitem:dustMolybdenum>);
GenerateRecipes(<metaitem:oreChunkSalt>, <metaitem:crushedSalt>, <metaitem:gemRockSalt>);
GenerateRecipes(<metaitem:oreChunkThorium>, <metaitem:crushedThorium>, <metaitem:dustUraninite>);
GenerateRecipes(<metaitem:oreChunkBandedIron>, <metaitem:crushedBandedIron>, <metaitem:dustMagnetite>);
GenerateRecipes(<metaitem:oreChunkSpessartine>, <metaitem:crushedSpessartine>, <metaitem:gemGarnetRed>);
GenerateRecipes(<metaitem:oreChunkOlivine>, <metaitem:crushedOlivine>, <metaitem:gemPyrope>);
GenerateRecipes(<metaitem:oreChunkPollucite>, <metaitem:crushedPollucite>, <metaitem:dustCaesium>);
GenerateRecipes(<metaitem:oreChunkLead>, <metaitem:crushedLead>, <metaitem:dustSilver>);
GenerateRecipes(<metaitem:oreChunkTricalciumPhosphate>, <metaitem:crushedTricalciumPhosphate>, <metaitem:gemApatite>);
GenerateRecipes(<metaitem:oreChunkPlutonium>, <metaitem:crushedPlutonium>, <metaitem:dustUraninite>);
GenerateRecipes(<metaitem:oreChunkTopaz>, <metaitem:crushedTopaz>, <metaitem:gemBlueTopaz>);
GenerateRecipes(<metaitem:oreChunkGarnetYellow>, <metaitem:crushedGarnetYellow>, <metaitem:gemAndradite>);
GenerateRecipes(<metaitem:oreChunkBlueTopaz>, <metaitem:crushedBlueTopaz>, <metaitem:gemTopaz>);
GenerateRecipes(<metaitem:oreChunkBauxite>, <metaitem:crushedBauxite>, <metaitem:gemGrossular>);
GenerateRecipes(<metaitem:oreChunkGold>, <metaitem:crushedGold>, <metaitem:dustCopper>);
GenerateRecipes(<metaitem:oreChunkIron>, <metaitem:crushedIron>, <metaitem:dustNickel>);
GenerateRecipes(<metaitem:oreChunkYellowLimonite>, <metaitem:crushedYellowLimonite>, <metaitem:dustNickel>);
GenerateRecipes(<metaitem:oreChunkOpal>, <metaitem:crushedOpal>, <metaitem:gemOpal>);
GenerateRecipes(<metaitem:oreChunkEmerald>, <metaitem:crushedEmerald>, <metaitem:dustBeryllium>);
GenerateRecipes(<metaitem:oreChunkLithium>, <metaitem:crushedLithium>, <metaitem:dustLithium>);
GenerateRecipes(<metaitem:oreChunkTetrahedrite>, <metaitem:crushedTetrahedrite>, <metaitem:dustAntimony>);
GenerateRecipes(<metaitem:oreChunkElectrotine>, <metaitem:crushedElectrotine>, <minecraft:redstone>);
GenerateRecipes(<metaitem:oreChunkBasalticMineralSand>, <metaitem:crushedBasalticMineralSand>, <metaitem:dustBasalt>);
GenerateRecipes(<metaitem:oreChunkNetherQuartz>, <metaitem:crushedNetherQuartz>, <metaitem:gemQuartzite>);
GenerateRecipes(<metaitem:oreChunkGreenSapphire>, <metaitem:crushedGreenSapphire>, <metaitem:dustAluminium>);
GenerateRecipes(<metaitem:oreChunkSphalerite>, <metaitem:crushedSphalerite>, <metaitem:gemGarnetYellow>);
GenerateRecipes(<metaitem:oreChunkCinnabar>, <metaitem:crushedCinnabar>, <minecraft:redstone>);
GenerateRecipes(<metaitem:oreChunkNaquadah>, <metaitem:crushedNaquadah>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkBastnasite>, <metaitem:crushedBastnasite>, <metaitem:dustNeodymium>);
GenerateRecipes(<metaitem:oreChunkPlatinum>, <metaitem:crushedPlatinum>, <metaitem:dustNickel>);
GenerateRecipes(<metaitem:oreChunkMagnetite>, <metaitem:crushedMagnetite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkQuartzite>, <metaitem:crushedQuartzite>, <metaitem:gemCertusQuartz>);
GenerateRecipes(<metaitem:oreChunkTalc>, <metaitem:crushedTalc>, <metaitem:dustClay>);
GenerateRecipes(<metaitem:oreChunkGraniticMineralSand>, <metaitem:crushedGraniticMineralSand>, <metaitem:dustGraniteBlack>);
GenerateRecipes(<metaitem:oreChunkCertusQuartz>, <metaitem:crushedCertusQuartz>, <minecraft:quartz>);
GenerateRecipes(<metaitem:oreChunkMonazite>, <metaitem:crushedMonazite>, <metaitem:dustThorium>);
GenerateRecipes(<metaitem:oreChunkChalcopyrite>, <metaitem:crushedChalcopyrite>, <metaitem:dustPyrite>);
GenerateRecipes(<metaitem:oreChunkSilver>, <metaitem:crushedSilver>, <metaitem:dustLead>);
GenerateRecipes(<metaitem:oreChunkAlunite>, <metaitem:crushedAlunite>, <metaitem:dustAlunite>);
GenerateRecipes(<metaitem:oreChunkAsbestos>, <metaitem:crushedAsbestos>, <metaitem:dustDiatomite>);
GenerateRecipes(<metaitem:oreChunkSapphire>, <metaitem:crushedSapphire>, <metaitem:dustAluminium>);
GenerateRecipes(<metaitem:oreChunkNickel>, <metaitem:crushedNickel>, <metaitem:dustCobalt>);
GenerateRecipes(<metaitem:oreChunkKyanite>, <metaitem:crushedKyanite>, <metaitem:dustTalc>);
GenerateRecipes(<metaitem:oreChunkVanadiumMagnetite>, <metaitem:crushedVanadiumMagnetite>, <metaitem:dustMagnetite>);
GenerateRecipes(<metaitem:oreChunkPyrope>, <metaitem:crushedPyrope>, <metaitem:gemGarnetRed>);
GenerateRecipes(<metaitem:oreChunkSulfur>, <metaitem:crushedSulfur>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkMagnesite>, <metaitem:crushedMagnesite>, <metaitem:dustMagnesium>);
GenerateRecipes(<metaitem:oreChunkBentonite>, <metaitem:crushedBentonite>, <metaitem:dustAluminium>);
GenerateRecipes(<metaitem:oreChunkPalladium>, <metaitem:crushedPalladium>, <metaitem:dustPalladium>);
GenerateRecipes(<metaitem:oreChunkGlowstone>, <metaitem:crushedGlowstone>, <minecraft:glowstone_dust>);
GenerateRecipes(<metaitem:oreChunkBeryllium>, <metaitem:crushedBeryllium>, <minecraft:emerald>);
GenerateRecipes(<metaitem:oreChunkMalachite>, <metaitem:crushedMalachite>, <metaitem:dustBrownLimonite>);
GenerateRecipes(<metaitem:oreChunkRockSalt>, <metaitem:crushedRockSalt>, <metaitem:gemSalt>);
GenerateRecipes(<metaitem:oreChunkIlmenite>, <metaitem:crushedIlmenite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkCalcite>, <metaitem:crushedCalcite>, <metaitem:dustCalcium>);
GenerateRecipes(<metaitem:oreChunkGraphite>, <metaitem:crushedGraphite>, <metaitem:dustCarbon>);
GenerateRecipes(<metaitem:oreChunkPitchblende>, <metaitem:crushedPitchblende>, <metaitem:dustThorium>);
GenerateRecipes(<metaitem:oreChunkAluminium>, <metaitem:crushedAluminium>, <metaitem:dustThorium>);
GenerateRecipes(<metaitem:oreChunkAmethyst>, <metaitem:crushedAmethyst>, <metaitem:gemAmethyst>);
GenerateRecipes(<metaitem:oreChunkRedstone>, <metaitem:crushedRedstone>, <metaitem:gemCinnabar>);
GenerateRecipes(<metaitem:oreChunkSpodumene>, <metaitem:crushedSpodumene>, <metaitem:dustAluminium>);
GenerateRecipes(<metaitem:oreChunkCooperite>, <metaitem:crushedCooperite>, <metaitem:dustNickel>);
GenerateRecipes(<metaitem:oreChunkRealgar>, <metaitem:crushedRealgar>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkDiatomite>, <metaitem:crushedDiatomite>, <metaitem:dustBandedIron>);
GenerateRecipes(<metaitem:oreChunkBismuth>, <metaitem:crushedBismuth>, <metaitem:dustBismuth>);
GenerateRecipes(<metaitem:oreChunkLepidolite>, <metaitem:crushedLepidolite>, <metaitem:dustLithium>);
GenerateRecipes(<metaitem:oreChunkBrownLimonite>, <metaitem:crushedBrownLimonite>, <metaitem:gemMalachite>);
GenerateRecipes(<metaitem:oreChunkWulfenite>, <metaitem:crushedWulfenite>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkGypsum>, <metaitem:crushedGypsum>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkSoapstone>, <metaitem:crushedSoapstone>, <metaitem:dustSiliconDioxide>);
GenerateRecipes(<metaitem:oreChunkApatite>, <metaitem:crushedApatite>, <metaitem:dustTricalciumPhosphate>);
GenerateRecipes(<metaitem:oreChunkCopper>, <metaitem:crushedCopper>, <metaitem:dustCobalt>);
GenerateRecipes(<metaitem:oreChunkGalena>, <metaitem:crushedGalena>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkNeodymium>, <metaitem:crushedNeodymium>, <metaitem:dustRareEarth>);
GenerateRecipes(<metaitem:oreChunkTin>, <metaitem:crushedTin>, <metaitem:dustIron>);
GenerateRecipes(<metaitem:oreChunkCoal>, <metaitem:crushedCoal>, <minecraft:coal>);
GenerateRecipes(<metaitem:oreChunkFullersEarth>, <metaitem:crushedFullersEarth>, <metaitem:dustAluminium>);
GenerateRecipes(<metaitem:oreChunkPyrolusite>, <metaitem:crushedPyrolusite>, <metaitem:dustManganese>);
GenerateRecipes(<metaitem:oreChunkMolybdenite>, <metaitem:crushedMolybdenite>, <metaitem:dustMolybdenum>);
GenerateRecipes(<metaitem:oreChunkSaltpeter>, <metaitem:crushedSaltpeter>, <metaitem:dustSaltpeter>); //
GenerateRecipes(<metaitem:oreChunkTungstate>, <metaitem:crushedTungstate>, <metaitem:dustManganese>);
GenerateRecipes(<metaitem:oreChunkGarnetSand>, <metaitem:crushedGarnetSand>, <metaitem:gemGarnetRed>);
GenerateRecipes(<metaitem:oreChunkGrossular>, <metaitem:crushedGrossular>, <metaitem:gemGarnetYellow>);
GenerateRecipes(<metaitem:oreChunkRuby>, <metaitem:crushedRuby>, <metaitem:dustChrome>);
GenerateRecipes(<metaitem:oreChunkCassiteriteSand>, <metaitem:crushedCassiteriteSand>, <metaitem:dustTin>);
GenerateRecipes(<metaitem:oreChunkOilsands>, <metaitem:crushedOilsands>, <metaitem:dustOilsands>);
GenerateRecipes(<metaitem:oreChunkLazurite>, <metaitem:crushedLazurite>, <metaitem:gemSodalite>);
GenerateRecipes(<metaitem:oreChunkChalcocite>, <metaitem:crushedChalcocite>, <metaitem:dustSulfur>); //
GenerateRecipes(<metaitem:oreChunkDiamond>, <metaitem:crushedDiamond>, <metaitem:dustGraphite>); //