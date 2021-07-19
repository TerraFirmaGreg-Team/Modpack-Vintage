import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;

//Машинки гречки
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val wiremill as RecipeMap = RecipeMap.getByName("wiremill");
val laser_engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
val forming_press as RecipeMap = RecipeMap.getByName("forming_press");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val autoclave as RecipeMap = RecipeMap.getByName("autoclave");
val mixer as RecipeMap = RecipeMap.getByName("mixer");

//Переменные
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolScrewdriverEmptyTag = <ore:craftingToolScrewdriverEmptyTag>;
var craftingToolSoftHammerEmptyTag = <ore:craftingToolSoftHammerEmptyTag>;
var craftingToolWrenchEmptyTag = <ore:craftingToolWrenchEmptyTag>;
var craftingToolKnifeEmptyTag = <ore:craftingToolKnifeEmptyTag>;

var AdvAssembler = <meta_tile_entity:assembler.mv>;
var AdvCircuit = <ore:circuitAdvanced>;
var AdvElectrolyzer = <meta_tile_entity:electrolyzer.mv>;
var AlCable = <ore:cableGtOctalAluminium>;
var plateAluminum = <ore:plateAluminium>;
var stickAluminum = <ore:stickAluminium>;
var AnnihilationCore = <appliedenergistics2:material:44>;
var BasicCircuit = <metaitem:circuit.good.regular>;
var woodenGear = <appliedenergistics2:material:40>;

//var blockCompressedWroughtIron = <ore:blockCompressedWroughtIron>;
var blockIron = <minecraft:iron_block>;
var ChCertusQuartz = <appliedenergistics2:material:1>;
var ChCertusQuartzBlock = <appliedenergistics2:chiseled_quartz_block>;
var CertusPlate = <ore:plateCertusQuartz>;
var CertusQuartzBlock = <appliedenergistics2:quartz_block>;
var CertusQuartz = <ore:gemCertusQuartz> | <ore:crystalCertusQuartz>;
var CertusRod = <ore:stickCertusQuartz>;
var CertusScrew = <ore:boltCertusQuartz>;

var HardenedGlass = <ore:blockGlassHardened>;
var ClearPane = <ore:plateGlass>;
var CoCraftingUnit = <appliedenergistics2:crafting_accelerator>;
var CopperCable = <ore:cableGtSingleCopper>;
var craftingTable = <minecraft:crafting_table>;
var CraftingTerminal = <appliedenergistics2:part:360>;
var CraftingUnit = <appliedenergistics2:crafting_unit>;

var DEnergyCell = <appliedenergistics2:dense_energy_cell>;
var EFlow = <ore:circuitMaster>;
var plateRAM = <metaitem:plate.random_access_memory>;
var EnderEyePlate = <ore:plateEnderEye>;
var EnderRod = <ore:stickEnderium>;
var EnderPearl = <minecraft:ender_pearl>;
var EnergyCell = <appliedenergistics2:energy_cell>;
var EVBatBuffer = <meta_tile_entity:battery_buffer.ev.1>;
var FluixBlock = <appliedenergistics2:fluix_block>;
var FluixCoveredC = <appliedenergistics2:part:36>;
var FluixCoveredCBlack = <appliedenergistics2:part:35>;
var FluixCoveredCBlue = <appliedenergistics2:part:31>;
var FluixCoveredCBrown = <appliedenergistics2:part:32>;
var FluixCoveredCCyan = <appliedenergistics2:part:29>;
var FluixCoveredCGray = <appliedenergistics2:part:27>;
var FluixCoveredCGreen = <appliedenergistics2:part:33>;
var FluixCoveredCLightBlue = <appliedenergistics2:part:23>;
var FluixCoveredCLightGray = <appliedenergistics2:part:28>;
var FluixCoveredCLime = <appliedenergistics2:part:25>;
var FluixCoveredCMagenta = <appliedenergistics2:part:22>;
var FluixCoveredCOrange = <appliedenergistics2:part:21>;
var FluixCoveredCPink = <appliedenergistics2:part:26>;
var FluixCoveredCPurple = <appliedenergistics2:part:30>;
var FluixCoveredCRed = <appliedenergistics2:part:34>;
var FluixCoveredCWhite = <appliedenergistics2:part:20>;
var FluixCoveredCYellow = <appliedenergistics2:part:24>;
var FluixCrystal = <appliedenergistics2:material:7>;
var FluixDenseCable = <appliedenergistics2:part:516>;
var FluixDenseCableBlack = <appliedenergistics2:part:515>;
var FluixDenseCableBlue = <appliedenergistics2:part:511>;
var FluixDenseCableBrown = <appliedenergistics2:part:512>;
var FluixDenseCableCyan = <appliedenergistics2:part:509>;
var FluixDenseCableGray = <appliedenergistics2:part:507>;
var FluixDenseCableGreen = <appliedenergistics2:part:513>;
var FluixDenseCableLightBlue = <appliedenergistics2:part:503>;
var FluixDenseCableLightGray = <appliedenergistics2:part:508>;
var FluixDenseCableLime = <appliedenergistics2:part:505>;
var FluixDenseCableMagenta = <appliedenergistics2:part:502>;
var FluixDenseCableOrange = <appliedenergistics2:part:501>;
var FluixDenseCablePink = <appliedenergistics2:part:506>;
var FluixDenseCablePurple = <appliedenergistics2:part:510>;
var FluixDenseCableRed = <appliedenergistics2:part:514>;
var FluixDenseCableWhite = <appliedenergistics2:part:500>;
var FluixDenseCableYellow = <appliedenergistics2:part:504>;
var FluixDust = <ore:dustFluix>;
var FluixGlassCable = <appliedenergistics2:part:16>;
var FluixGlassCableBlack = <appliedenergistics2:part:15>;
var FluixGlassCableBlue = <appliedenergistics2:part:11>;
var FluixGlassCableBrown = <appliedenergistics2:part:12>;
var FluixGlassCableCyan = <appliedenergistics2:part:9>;
var FluixGlassCableGray = <appliedenergistics2:part:7>;
var FluixGlassCableGreen = <appliedenergistics2:part:13>;
var FluixGlassCableLightBlue = <appliedenergistics2:part:3>;
var FluixGlassCableLightGray = <appliedenergistics2:part:8>;
var FluixGlassCableLime = <appliedenergistics2:part:5>;
var FluixGlassCableMagenta = <appliedenergistics2:part:2>;
var FluixGlassCableOrange = <appliedenergistics2:part:1>;
var FluixGlassCablePink = <appliedenergistics2:part:6>;
var FluixGlassCablePurple = <appliedenergistics2:part:10>;
var FluixGlassCableRed = <appliedenergistics2:part:14>;
var FluixGlassCableWhite = <appliedenergistics2:part>;
var FluixGlassCableYellow = <appliedenergistics2:part:4>;
var FluixPearl = <appliedenergistics2:material:9>;
var FluixSmartCable = <appliedenergistics2:part:56>;
var FluixSmartCableBlack = <appliedenergistics2:part:55>;
var FluixSmartCableBlue = <appliedenergistics2:part:51>;
var FluixSmartCableBrown = <appliedenergistics2:part:52>;
var FluixSmartCableCyan = <appliedenergistics2:part:49>;
var FluixSmartCableGray = <appliedenergistics2:part:47>;
var FluixSmartCableGreen = <appliedenergistics2:part:53>;
var FluixSmartCableLightBlue = <appliedenergistics2:part:43>;
var FluixSmartCableLightGray = <appliedenergistics2:part:48>;
var FluixSmartCableLime = <appliedenergistics2:part:45>;
var FluixSmartCableMagenta = <appliedenergistics2:part:42>;
var FluixSmartCableOrange = <appliedenergistics2:part:41>;
var FluixSmartCablePink = <appliedenergistics2:part:46>;
var FluixSmartCablePurple = <appliedenergistics2:part:50>;
var FluixSmartCableRed = <appliedenergistics2:part:54>;
var FluixSmartCableWhite = <appliedenergistics2:part:40>;
var FluixSmartCableYellow = <appliedenergistics2:part:44>;
var FormationCore = <appliedenergistics2:material:43>;

var DenseSmartCableWhite = <appliedenergistics2:part:60>;
var DenseSmartCableOrange = <appliedenergistics2:part:61>;
var DenseSmartCableMagenta = <appliedenergistics2:part:62>;
var DenseSmartCableLightBlue = <appliedenergistics2:part:63>;
var DenseSmartCableYellow = <appliedenergistics2:part:64>;
var DenseSmartCableLime = <appliedenergistics2:part:65>;
var DenseSmartCablePink = <appliedenergistics2:part:66>;
var DenseSmartCableGray = <appliedenergistics2:part:67>;
var DenseSmartCableLightGray = <appliedenergistics2:part:68>;
var DenseSmartCableCyan = <appliedenergistics2:part:69>;
var DenseSmartCablePurple = <appliedenergistics2:part:70>;
var DenseSmartCableBlue = <appliedenergistics2:part:71>;
var DenseSmartCableBrown = <appliedenergistics2:part:72>;
var DenseSmartCableGreen = <appliedenergistics2:part:73>;
var DenseSmartCableRed = <appliedenergistics2:part:74>;
var DenseSmartCableBlack = <appliedenergistics2:part:75>;
var DenseSmartCableFluix = <appliedenergistics2:part:76>;

//Словаь руд для умных толстых кабелей
<ore:smartCableDenseAny>.add(DenseSmartCableWhite);
<ore:smartCableDenseAny>.add(DenseSmartCableOrange);
<ore:smartCableDenseAny>.add(DenseSmartCableMagenta);
<ore:smartCableDenseAny>.add(DenseSmartCableLightBlue);
<ore:smartCableDenseAny>.add(DenseSmartCableYellow);
<ore:smartCableDenseAny>.add(DenseSmartCableLime);
<ore:smartCableDenseAny>.add(DenseSmartCablePink);
<ore:smartCableDenseAny>.add(DenseSmartCableGray);
<ore:smartCableDenseAny>.add(DenseSmartCableLightGray);
<ore:smartCableDenseAny>.add(DenseSmartCableCyan);
<ore:smartCableDenseAny>.add(DenseSmartCablePurple);
<ore:smartCableDenseAny>.add(DenseSmartCableBlue);
<ore:smartCableDenseAny>.add(DenseSmartCableBrown);
<ore:smartCableDenseAny>.add(DenseSmartCableGreen);
<ore:smartCableDenseAny>.add(DenseSmartCableRed);
<ore:smartCableDenseAny>.add(DenseSmartCableBlack);
<ore:smartCableDenseAny>.add(DenseSmartCableFluix);

//Покраска кабелей
recipes.addShapeless(DenseSmartCableWhite, [<ore:smartCableDenseAny>, <ore:dyeWhite>]);
recipes.addShapeless(DenseSmartCableOrange, [<ore:smartCableDenseAny>, <ore:dyeOrange>]);
recipes.addShapeless(DenseSmartCableMagenta, [<ore:smartCableDenseAny>, <ore:dyeMagenta>]);
recipes.addShapeless(DenseSmartCableLightBlue, [<ore:smartCableDenseAny>, <ore:dyeLightBlue>]);
recipes.addShapeless(DenseSmartCableYellow, [<ore:smartCableDenseAny>, <ore:dyeYellow>]);
recipes.addShapeless(DenseSmartCableLime, [<ore:smartCableDenseAny>, <ore:dyeLime>]);
recipes.addShapeless(DenseSmartCablePink, [<ore:smartCableDenseAny>, <ore:dyePink>]);
recipes.addShapeless(DenseSmartCableGray, [<ore:smartCableDenseAny>, <ore:dyeGray>]);
recipes.addShapeless(DenseSmartCableLightGray, [<ore:smartCableDenseAny>, <ore:dyeLightGray>]);
recipes.addShapeless(DenseSmartCableCyan, [<ore:smartCableDenseAny>, <ore:dyeCyan>]);
recipes.addShapeless(DenseSmartCablePurple, [<ore:smartCableDenseAny>, <ore:dyePurple>]);
recipes.addShapeless(DenseSmartCableBlue, [<ore:smartCableDenseAny>, <ore:dyeBlue>]);
recipes.addShapeless(DenseSmartCableBrown, [<ore:smartCableDenseAny>, <ore:dyeBrown>]);
recipes.addShapeless(DenseSmartCableGreen, [<ore:smartCableDenseAny>, <ore:dyeGreen>]);
recipes.addShapeless(DenseSmartCableRed, [<ore:smartCableDenseAny>, <ore:dyeRed>]);
recipes.addShapeless(DenseSmartCableBlack, [<ore:smartCableDenseAny>, <ore:dyeBlack>]);
recipes.addShapeless(DenseSmartCableFluix, [<ore:smartCableDenseAny>, <ore:dyeFluix>]);

var GlassPlate = <ore:plateGlass>;
var GlowstoneDust = <ore:dustGlowstone>;
var GlowstonePlate = <ore:plateGlowstone>;
var GoodCircuit = <ore:circuitGood>;
var HVMachineHull = <meta_tile_entity:hull.hv>;
var Illuminated = <appliedenergistics2:part:180>;
var Interface = <appliedenergistics2:part:440>;
var InterfaceTerminal = <appliedenergistics2:part:480>;
var IronRod = <ore:stickIron>;
var lensBlueTopaz = <ore:lensBlueTopaz>;
var lensDiamond = <ore:lensDiamond>;
var lensEmerald = <ore:lensEmerald>;
var lensGlass = <ore:lensGlass>;
var lensGreenSapphire = <ore:lensGreenSapphire>;
var lensOpal = <ore:lensOpal>;
var lensSapphire = <ore:lensSapphire>;
var lensYellowGarnet = <ore:lensYellowGarnet>;
var LightDetector = <appliedenergistics2:light_detector>;
var MEChest = <appliedenergistics2:chest>;
var MEController = <appliedenergistics2:controller>;
var MEDrive = <appliedenergistics2:drive>;
var MolecularAssembler = <appliedenergistics2:molecular_assembler>;
var moltenChlorine = <liquid:chlorine>;
var MSteelRod = <ore:stickSteelMagnetic>;
var NANDChip = <ore:circuitBasic>;
var NetherQuartzBlock = <minecraft:quartz_block>;
var NQuartzPlate = <ore:plateNetherQuartz>;
var NQuartzRod = <ore:stickNetherQuartz>;
var NQuartzScrew = <ore:boltNetherQuartz>;
var Pattern = <appliedenergistics2:material:52>;
var PatternTerminal = <appliedenergistics2:part:340>;
var pistonSticky = <minecraft:sticky_piston>;
var plateSteel = <ore:plateSteel>;
var PlatinumCable = <ore:cableGtQuadruplePlatinum>;
var PureCertusQCrystal = <ore:crystalPureCertusQuartz>;
var PureFluixCrystal = <appliedenergistics2:material:12>;
var PureNetherQCrystal = <ore:crystalPureNetherQuartz>;
var QuartzFixture = <appliedenergistics2:quartz_fixture>;
var QuartzGlass = <appliedenergistics2:quartz_glass>;
var Quartzite = <ore:gemQuartzite>;
var QuartzitePlate = <ore:plateQuartzite>;
var QuartziteRod = <ore:stickQuartzite>;
var QuartziteScrew = <ore:gemQuartzite>;
var RubberPlate = <ore:plateRubber>;
var SiliconPlate = <ore:plateSilicon>;
var SiliconRod = <ore:stickSilicon>;
var StainlessPlate = <ore:plateStainlessSteel>;
var SteelPlate = <ore:plateSteel>;
var Storage16K = <appliedenergistics2:storage_cell_16k>;
var Storage1K = <appliedenergistics2:storage_cell_1k>;
var Storage4K = <appliedenergistics2:storage_cell_4k>;
var Storage64K = <appliedenergistics2:storage_cell_64k>;
var StorageComponent16K = <appliedenergistics2:material:37>;
var StorageComponent1K = <appliedenergistics2:material:35>;
var StorageComponent4K = <appliedenergistics2:material:36>;
var StorageComponent64K = <appliedenergistics2:material:38>;
var Terminal = <appliedenergistics2:part:380>;
var TitaniumPlate = <ore:plateTitanium>;
var UStorageHousing = <appliedenergistics2:material:39>;
var VibrantQGlass = <appliedenergistics2:quartz_vibrant_glass>;
var WirelessReceiver = <appliedenergistics2:material:41>;
var WirelessTerminal = <appliedenergistics2:wireless_terminal>;
var WirelessCraftingTerminal = <wct:wct>;
var Singularity = <appliedenergistics2:part:47>;
var blockMeteorite = <appliedenergistics2:sky_stone_block>;
var stickNeoMag = <ore:stickNeodymiumMagnetic>;
var FluStorage1K = <appliedenergistics2:fluid_storage_cell_1k>;
var FluStorage4K = <appliedenergistics2:fluid_storage_cell_4k>;
var FluStorage16K = <appliedenergistics2:fluid_storage_cell_16k>;
var FluStorage64K = <appliedenergistics2:fluid_storage_cell_64k>;
var FluStorageComponent1K = <appliedenergistics2:material:54>;
var FluStorageComponent4K = <appliedenergistics2:material:55>;
var FluStorageComponent16K = <appliedenergistics2:material:56>;
var FluStorageComponent64K = <appliedenergistics2:material:57>;
var ChQuartzRod = <ore:stickCertusQuartz>;
var pressCalculation = <appliedenergistics2:material:13>;
var pressEngineering = <appliedenergistics2:material:14>;
var pressLogic = <appliedenergistics2:material:15>;
var pressSilicon = <appliedenergistics2:material:19>;
var bronzeChest = <gregtech:machine:802>;

var CalcCirc = <appliedenergistics2:material:16>;
var EngCirc = <appliedenergistics2:material:17>;
var LogiCirc = <appliedenergistics2:material:18>;
var SiliCirc = <appliedenergistics2:material:20>;
var capacity_card = <appliedenergistics2:material:27>;
var CalcProc = <appliedenergistics2:material:23>;
var basic_card = <appliedenergistics2:material:25>;
var EngProc = <appliedenergistics2:material:24>;
var LogiProc = <appliedenergistics2:material:22>;
var fluix_dust = <appliedenergistics2:material:8>;
var reddosanudo = <minecraft:sand:1>;
var pureQuartz = <appliedenergistics2:material:10>;
var pureNQuartz = <appliedenergistics2:material:11>;
var pureFluix = <appliedenergistics2:material:12>;
var fluid_storage_bus = <appliedenergistics2:part:221>;
var quartzFiber = <appliedenergistics2:part:140>;
var seedCrystal = <appliedenergistics2:crystal_seed:1200>;

//Убирание рецептов
//Высекатель
Inscriber.removeRecipe(pressCalculation);
Inscriber.removeRecipe(pressEngineering);
Inscriber.removeRecipe(pressLogic);
Inscriber.removeRecipe(pressSilicon);
//Блоки
recipes.remove(FluixBlock);
recipes.remove(CertusQuartzBlock);
recipes.remove(ChCertusQuartzBlock);
recipes.remove(MEController);
recipes.remove(EnergyCell);
recipes.remove(DEnergyCell);
recipes.remove(MEChest);
recipes.remove(MEDrive);
recipes.remove(CraftingUnit);
recipes.remove(CoCraftingUnit);
recipes.remove(MolecularAssembler);
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.remove(<appliedenergistics2:interface>);
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.remove(<appliedenergistics2:io_port>);
recipes.remove(<appliedenergistics2:condenser>);
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.remove(<appliedenergistics2:security_station>);
recipes.removeByRecipeName("appliedenergistics2:decorative/quartz_block_pure");
recipes.removeByRecipeName("appliedenergistics2:tools/misctools_charged_staff");
//Предметы
recipes.remove(quartzFiber);
recipes.remove(FluixGlassCable);
recipes.remove(FluixCoveredC);
recipes.remove(FluixCrystal);
recipes.remove(PureFluixCrystal);
recipes.remove(FluixPearl);
recipes.remove(AnnihilationCore);
recipes.remove(FormationCore);
recipes.remove(WirelessReceiver);
recipes.remove(Illuminated);
recipes.remove(Terminal);
recipes.remove(CraftingTerminal);
recipes.remove(InterfaceTerminal);
recipes.remove(PatternTerminal);
recipes.remove(WirelessTerminal);
recipes.remove(WirelessCraftingTerminal);
recipes.remove(QuartzGlass);
recipes.remove(VibrantQGlass);
recipes.remove(QuartzFixture);
recipes.remove(LightDetector);
recipes.remove(<appliedenergistics2:material:28>);
recipes.remove(Pattern);
recipes.remove(basic_card);
recipes.remove(<appliedenergistics2:material:52>);
recipes.remove(capacity_card);
recipes.remove(<appliedenergistics2:material:53>);
recipes.remove(<appliedenergistics2:material:26>);
recipes.remove(<appliedenergistics2:material:29>);
recipes.remove(<appliedenergistics2:material:31>);
recipes.remove(<appliedenergistics2:material:30>);
recipes.remove(<wct:magnet_card>);
recipes.remove(<appliedenergistics2:material:42>);
recipes.remove(<appliedenergistics2:part:300>);
recipes.remove(<appliedenergistics2:part:120>);
recipes.remove(<appliedenergistics2:part:260>);
recipes.remove(<appliedenergistics2:part:320>);
recipes.remove(<appliedenergistics2:part:240>);
recipes.remove(<appliedenergistics2:part:460>);
recipes.remove(<appliedenergistics2:part:180>);
recipes.remove(<appliedenergistics2:part:80>);
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.remove(<appliedenergistics2:memory_card>);
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.remove(<appliedenergistics2:color_applicator>);
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.remove(<appliedenergistics2:crystal_seed>);
recipes.remove(<appliedenergistics2:crystal_seed:600>);
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
recipes.remove(fluid_storage_bus);
recipes.remove(<appliedenergistics2:part:241>);
recipes.remove(<appliedenergistics2:part:261>);
recipes.remove(<appliedenergistics2:part:281>);
recipes.remove(<appliedenergistics2:part:302>);
recipes.remove(<appliedenergistics2:part:321>);
recipes.remove(<appliedenergistics2:part:441>);
recipes.remove(<appliedenergistics2:part:463>);
recipes.remove(<appliedenergistics2:part:520>);
//Ячейки
recipes.remove(Storage1K);
recipes.remove(Storage4K);
recipes.remove(Storage16K);
recipes.remove(Storage64K);
recipes.remove(UStorageHousing);
recipes.remove(StorageComponent1K);
recipes.remove(StorageComponent4K);
recipes.remove(StorageComponent16K);
recipes.remove(StorageComponent64K);
recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.remove(<appliedenergistics2:view_cell>);
recipes.remove(<appliedenergistics2:material:32>);
recipes.remove(<appliedenergistics2:material:33>);
recipes.remove(<appliedenergistics2:material:34>);
recipes.remove(FluStorage1K);
recipes.remove(FluStorage4K);
recipes.remove(FluStorage16K);
recipes.remove(FluStorage64K);
recipes.remove(FluStorageComponent1K);
recipes.remove(FluStorageComponent4K);
recipes.remove(FluStorageComponent16K);
recipes.remove(FluStorageComponent64K);

//Рецепты
//Кварцевая ткань
wiremill.recipeBuilder()
 .inputs(ChQuartzRod * 1)
 .outputs(quartzFiber * 8)
 .duration(200)
 .EUt(120)
 .buildAndRegister();
//Кварцевая ткань 2
wiremill.recipeBuilder()
 .inputs(NQuartzRod * 1)
 .outputs(quartzFiber * 4)
 .duration(200)
 .EUt(120)
 .buildAndRegister();
//Кварцевая ткань 3
wiremill.recipeBuilder()
 .inputs(QuartziteRod * 1)
 .outputs(quartzFiber * 2)
 .duration(200)
 .EUt(120)
 .buildAndRegister();
//Кварцевое стекло
alloy_smelter.recipeBuilder()
    .inputs(<minecraft:glass> * 4, <ore:dustCertusQuartz> *4)
    .outputs(QuartzGlass * 4)
    .duration(400)
    .EUt(16)
    .buildAndRegister();
//Семяна
//Чистый кварц
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustCertusQuartz> * 1, <minecraft:sand> * 1)
 .fluidInputs(<liquid:water> * 100)
 .outputs(pureQuartz * 4)
 .duration(100)
 .EUt(8)
 .buildAndRegister();
//Чистый кварц 2
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustCertusQuartz> * 1, reddosanudo * 1)
 .fluidInputs(<liquid:water> * 100)
 .outputs(pureQuartz * 4)
 .duration(100)
 .EUt(8)
 .buildAndRegister();
//Чистый незер кварц
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustNetherQuartz> * 1, <minecraft:sand> * 1)
 .fluidInputs(<liquid:water> * 100).outputs(pureNQuartz * 4)
 .duration(100)
 .EUt(10)
 .buildAndRegister();
//Чистый незер кварц 2
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustNetherQuartz> * 1, reddosanudo * 1)
 .fluidInputs(<liquid:water> * 100)
 .outputs(pureNQuartz * 4)
 .duration(100)
 .EUt(10)
 .buildAndRegister();
//Флюкс кварц
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustFluix> * 1, <minecraft:sand> * 1)
 .fluidInputs(<liquid:water> * 100)
 .outputs(seedCrystal * 2)
 .duration(100)
 .EUt(28)
 .buildAndRegister();
//Флюкс кварц 2
chemical_reactor.recipeBuilder()
 .inputs(<ore:dustFluix> * 1, reddosanudo * 1)
 .fluidInputs(<liquid:water> * 100)
 .outputs(seedCrystal * 2)
 .duration(100)
 .EUt(28)
 .buildAndRegister();
//Чистый флакс кристалл
autoclave.recipeBuilder()
 .inputs(seedCrystal * 1)
 .fluidInputs(<liquid:water> * 1000)
 .chancedOutput(PureFluixCrystal * 1, 6000, 500)
 .duration(2000)
 .EUt(26)
 .buildAndRegister();
//Чистый флакс кристалл 2
autoclave.recipeBuilder()
 .inputs(seedCrystal * 1)
 .fluidInputs(<liquid:distilled_water> * 1000)
 .chancedOutput(PureFluixCrystal * 1, 7000, 700)
 .duration(1000)
 .EUt(26)
 .buildAndRegister();
//Флакс кристалл из пыли
autoclave.recipeBuilder()
 .inputs(<ore:dustFluix> * 1)
 .fluidInputs(<liquid:water> * 1000)
 .chancedOutput(FluixCrystal * 1, 7000, 500)
 .duration(2000)
 .EUt(26)
 .buildAndRegister();
//Флакс кристалл из пыли 2
autoclave.recipeBuilder()
 .inputs(<ore:dustFluix> * 1)
 .fluidInputs(<liquid:distilled_water> * 1000)
 .chancedOutput(FluixCrystal * 1, 7500, 500)
 .duration(1000)
 .EUt(26)
 .buildAndRegister();
//Флакс кристалл
mixer.recipeBuilder()
 .inputs(<minecraft:quartz> * 1, <minecraft:redstone> * 4, ChCertusQuartz * 1)
 .outputs(FluixCrystal * 1)
 .duration(40)
 .EUt(18)
 .buildAndRegister();
//Флакс кристалл 2
mixer.recipeBuilder()
 .inputs(<minecraft:quartz> * 1, <ore:gemExquisiteRuby> * 1, ChCertusQuartz * 1)
 .outputs(FluixCrystal * 4)
 .duration(40)
 .EUt(18)
 .buildAndRegister();
//Флакс кристалл 3
mixer.recipeBuilder()
 .inputs(<ore:gemExquisiteNetherQuartz> * 1, <minecraft:redstone> * 4, ChCertusQuartz * 1)
 .outputs(FluixCrystal * 4)
 .duration(40)
 .EUt(18)
 .buildAndRegister();
//Флакс кристалл 4
mixer.recipeBuilder()
 .inputs(<ore:gemExquisiteNetherQuartz> * 1, <ore:gemExquisiteRuby> * 1, ChCertusQuartz * 1)
 .outputs(FluixCrystal * 12)
 .duration(40)
 .EUt(18)
 .buildAndRegister();
//Прессы
//Силиконовый
laser_engraver.recipeBuilder()
 .inputs(<ore:blockIron> * 1)
 .notConsumable(<ore:craftingLensWhite> * 1)
 .outputs(pressSilicon * 1)
 .duration(12000)
 .EUt(116)
 .buildAndRegister();
//Силиконовый 2
laser_engraver.recipeBuilder()
 .inputs(<ore:blockWroughtIron> * 1)
 .notConsumable(<ore:craftingLensWhite> * 1)
 .outputs(pressSilicon * 1)
 .duration(8000)
 .EUt(116)
 .buildAndRegister();
//Логический
laser_engraver.recipeBuilder()
 .inputs(<ore:blockIron> * 1)
 .notConsumable(<ore:craftingLensLime> * 1)
 .outputs(pressLogic * 1)
 .duration(12000)
 .EUt(118)
 .buildAndRegister();
//Логический 2
laser_engraver.recipeBuilder()
 .inputs(<ore:blockWroughtIron> * 1)
 .notConsumable(<ore:craftingLensGreen> * 1)
 .outputs(pressLogic * 1)
 .duration(8000)
 .EUt(118)
 .buildAndRegister();
//Инженерный
laser_engraver.recipeBuilder()
 .inputs(<ore:blockIron> * 1)
 .notConsumable(<ore:craftingLensYellow> * 1)
 .outputs(pressEngineering * 1)
 .duration(12000)
 .EUt(120)
 .buildAndRegister();
//Инженерный 2
laser_engraver.recipeBuilder()
 .inputs(<ore:blockWroughtIron> * 1)
 .notConsumable(<ore:craftingLensYellow> * 1)
 .outputs(pressEngineering * 1)
 .duration(8000)
 .EUt(120)
 .buildAndRegister();
//Вычислительный
laser_engraver.recipeBuilder()
 .inputs(<ore:blockIron> * 1)
 .notConsumable(<ore:craftingLensBlue> * 1)
 .outputs(pressCalculation * 1)
 .duration(12000)
 .EUt(122)
 .buildAndRegister();
//Вычислительный
laser_engraver.recipeBuilder()
 .inputs(<ore:blockWroughtIron> * 1)
 .notConsumable(<ore:craftingLensBlue> * 1)
 .outputs(pressCalculation * 1)
 .duration(8000)
 .EUt(122)
 .buildAndRegister();
//Форменные прессы
//Силиконовый пресс/микросхема
forming_press.recipeBuilder()
 .inputs(<ore:plateSilicon> * 1)
 .notConsumable(pressSilicon * 1)
 .outputs(SiliCirc * 1)
 .duration(200).EUt(16)
 .buildAndRegister();
//Логический пресс/микросхема
forming_press.recipeBuilder()
 .inputs(<ore:plateGold> * 1)
 .notConsumable(pressLogic * 1)
 .outputs(LogiCirc * 1)
 .duration(200).EUt(16)
 .buildAndRegister();
//Инженерный пресс/микросхема
forming_press.recipeBuilder()
 .inputs(<ore:plateDiamond> * 1)
 .notConsumable(pressEngineering * 1)
 .outputs(EngCirc * 1)
 .duration(200)
 .EUt(16)
 .buildAndRegister();
//Вычислительный пресс/микросхема
forming_press.recipeBuilder()
 .inputs(<ore:plateCertusQuartz> * 1)
 .notConsumable(pressCalculation * 1)
 .outputs(CalcCirc * 1)
 .duration(200)
 .EUt(16)
 .buildAndRegister();
//Вычислительный пресс/микросхема 2
forming_press.recipeBuilder()
 .inputs(pureQuartz * 1)
 .notConsumable(pressCalculation * 1)
 .outputs(CalcCirc * 1)
 .duration(200)
 .EUt(16)
 .buildAndRegister();
//Процессоры аплайда
//Логичсекий
assembler.recipeBuilder().inputs(LogiCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(LogiProc * 1).duration(60).EUt(32).buildAndRegister();
//Инженерный
assembler.recipeBuilder().inputs(EngCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(EngProc * 1).duration(60).EUt(32).buildAndRegister();
//Вычислительный 
assembler.recipeBuilder().inputs(CalcCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(CalcProc * 1).duration(60).EUt(32).buildAndRegister();
//Обесцвечивание
var coloredFluixGlassCable = [FluixGlassCableWhite, FluixGlassCableOrange, FluixGlassCableMagenta, FluixGlassCableLightBlue, FluixGlassCableYellow, FluixGlassCableLime, FluixGlassCablePink, FluixGlassCableGray, FluixGlassCableLightGray, FluixGlassCableCyan, FluixGlassCablePurple, FluixGlassCableBrown, FluixGlassCableGreen, FluixGlassCableRed, FluixGlassCableBlack] as IItemStack[];
var coloredFluixCoveredC = [FluixCoveredCWhite, FluixCoveredCOrange, FluixCoveredCMagenta, FluixCoveredCLightBlue, FluixCoveredCYellow, FluixCoveredCLime, FluixCoveredCPink, FluixCoveredCGray, FluixCoveredCLightGray, FluixCoveredCCyan, FluixCoveredCPurple, FluixCoveredCBrown, FluixCoveredCGreen, FluixCoveredCRed, FluixCoveredCBlack] as IItemStack[];
var coloredFluixDenseCable = [FluixDenseCableWhite, FluixDenseCableOrange, FluixDenseCableMagenta, FluixDenseCableLightBlue, FluixDenseCableYellow, FluixDenseCableLime, FluixDenseCablePink, FluixDenseCableGray, FluixDenseCableLightGray, FluixDenseCableCyan, FluixDenseCablePurple, FluixDenseCableBrown, FluixDenseCableGreen, FluixDenseCableRed, FluixDenseCableBlack] as IItemStack[];
var coloredFluixSmartCable = [FluixSmartCableWhite, FluixSmartCableOrange, FluixSmartCableMagenta, FluixSmartCableLightBlue, FluixSmartCableYellow, FluixSmartCableLime, FluixSmartCablePink, FluixSmartCableGray, FluixSmartCableLightGray, FluixSmartCableCyan, FluixSmartCablePurple, FluixSmartCableBrown, FluixSmartCableGreen, FluixSmartCableRed, FluixSmartCableBlack] as IItemStack[];
for i in 0 to 15 {
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixGlassCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixGlassCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixCoveredC[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixCoveredC)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixDenseCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixDenseCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixSmartCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixSmartCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
}
//Заряженный кварц
var charged_certus_quartz = <appliedenergistics2:material:1>;
electrolyzer.recipeBuilder()
	.inputs(CertusQuartz | <ore:crystalCertusQuartz>)
	.outputs(charged_certus_quartz)
	.duration(520)
    .EUt(82)
	.buildAndRegister();
//Флакс блок
compressor.recipeBuilder()
	.inputs(<ore:crystalFluix> * 4)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400)
	.EUt(6)
	.buildAndRegister();
//Флакс блок
compressor.recipeBuilder()
	.inputs(<ore:crystalPureFluix> * 8)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400)
	.EUt(6)
	.buildAndRegister();
//Блок истинного кварца
compressor.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> * 4)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
//Блок истинного кварца
compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:10> * 16) // Prevents infinite certus exploit
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
//Крафт пыли флакса
macerator.recipeBuilder()
	.inputs([<ore:crystalFluix> * 1])
	.outputs(fluix_dust * 1)
	.duration(65)
	.EUt(12)
	.buildAndRegister();
//Иллюм панель
recipes.addShapeless(<appliedenergistics2:part:180>, [<appliedenergistics2:part:200>]);
//Инвертированная карта включения 2
recipes.addShapeless(<appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);
//Шина инвертировання отключенная
recipes.addShapeless(<appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
//Карта емкости
recipes.addShapeless(capacity_card, [basic_card, StorageComponent1K, StorageComponent1K, ChCertusQuartz]);
//Карта создания
recipes.addShapeless(<appliedenergistics2:material:53>, [basic_card, StorageComponent1K, StorageComponent1K, <ore:workbench>]);
//Карта красного камня
recipes.addShapeless(<appliedenergistics2:material:26>, [basic_card, <ore:craftingRedstoneTorch>, <ore:craftingRedstoneTorch>, CalcProc]);
//Карта нечетности
recipes.addShapeless(<appliedenergistics2:material:29>, [<appliedenergistics2:material:28>, EngProc, LogiProc, CalcProc]);
//Карта инвертор
recipes.addShapeless(<appliedenergistics2:material:31>, [<appliedenergistics2:material:28>, <appliedenergistics2:part:100>, <appliedenergistics2:part:100>, CalcProc]);
//Карта ускорения
recipes.addShapeless(<appliedenergistics2:material:30>, [<appliedenergistics2:material:28>, EngProc, LogiProc, FluixCrystal]);
//Карта магнит
recipes.addShapeless(<wct:magnet_card>, [<appliedenergistics2:material:28>, EngProc, LogiProc, <ore:craftingLensWhite>]);
//Заряженная кварцевая фикстура
recipes.addShapeless(QuartzFixture, [CertusQuartz, stickAluminum]);
//Легкая фикстура
recipes.addShapeless(LightDetector, [ChCertusQuartz, IronRod]);
//Сопроцесоор сборщика
recipes.addShapeless(CoCraftingUnit, [CraftingUnit, CalcProc, LogiProc, EngProc]);
//Жидкостный интерфейс
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);
//Интерфейс
recipes.addShapeless(<appliedenergistics2:interface>, [Interface]);
//Жидкостная шина хранения
recipes.addShapeless(fluid_storage_bus, [<appliedenergistics2:part:220>, <minecraft:water_bucket>]);
//Жидкостная импорт шина
recipes.addShapeless(<appliedenergistics2:part:241>, [<appliedenergistics2:part:240>, <minecraft:water_bucket>]);
//Шина экспорта
recipes.addShapeless(<appliedenergistics2:part:261>, [<appliedenergistics2:part:260>, <minecraft:water_bucket>]);
//Датчик жидкостного уровня
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:part:280>, <minecraft:water_bucket>]);
//Жидкостный аннигиляционный самолет 
recipes.addShapeless(<appliedenergistics2:part:302>, [<appliedenergistics2:part:300>, <minecraft:water_bucket>]);
//Формационная жидкостная шина
recipes.addShapeless(<appliedenergistics2:part:321>, [<appliedenergistics2:part:320>, <minecraft:water_bucket>]);
//Жидкостный интерфейс
recipes.addShapeless(<appliedenergistics2:part:441>, [<appliedenergistics2:fluid_interface>]);
//Шина P2P тунеля
recipes.addShapeless(<appliedenergistics2:part:463>, [<appliedenergistics2:part:460>, <minecraft:water_bucket>]);
//Якори
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotIron>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotCopper>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotBronze>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotTin>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 4, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotSteel>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 4, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotAluminium>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotLead>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotNickel>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotSilver>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotBrass>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotInvar>]);
//Контроллер
recipes.addShaped(MEController, [
[TitaniumPlate, AdvCircuit, TitaniumPlate],
[EngProc, FluixBlock, EngProc],
[TitaniumPlate, AdvCircuit, TitaniumPlate]]);
//Энерго-ячейка
recipes.addShaped(EnergyCell, [
[CertusRod, FluixDust, CertusRod],
[AdvCircuit, FluixBlock, AdvCircuit],
[CertusRod, AlCable, CertusRod]]);
//Энерго-ячейка 2
recipes.addShaped(DEnergyCell, [
[EnergyCell, EnergyCell, EnergyCell],
[EFlow, EngProc, EFlow],
[EnergyCell, EVBatBuffer, EnergyCell]]);
//Сундук
recipes.addShaped(MEChest, [
[StainlessPlate, GoodCircuit, StainlessPlate],
[FluixGlassCable, <gregtech:machine:803>, FluixGlassCable],
[StainlessPlate, GoodCircuit, StainlessPlate]]);
//Дисковод :D
recipes.addShaped(MEDrive, [
[TitaniumPlate, EngProc, TitaniumPlate], 
[FluixGlassCable, MEChest, FluixGlassCable], 
[TitaniumPlate, <ore:circuitAdvanced>, TitaniumPlate]]);
//Юнит сборщика
recipes.addShaped(CraftingUnit, [
[plateAluminum, LogiProc, plateAluminum],
[BasicCircuit, EngProc, BasicCircuit],
[plateAluminum, CalcProc, plateAluminum]]);
//Молек. сборщик
recipes.addShaped(MolecularAssembler, [
[TitaniumPlate, <appliedenergistics2:quartz_glass>, TitaniumPlate],
[AnnihilationCore, AdvAssembler, FormationCore],
[TitaniumPlate, <appliedenergistics2:quartz_glass>, TitaniumPlate]]);
//Квантовое кольцо
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
[TitaniumPlate, LogiProc, TitaniumPlate],
[EngProc, <appliedenergistics2:dense_energy_cell>, FluixGlassCable],
[TitaniumPlate, LogiProc, TitaniumPlate]]);
//Камера квантового моста
recipes.addShaped(<appliedenergistics2:quantum_link>, [
[TitaniumPlate, FluixPearl, TitaniumPlate],
[FluixPearl, <ore:gemFluix>, FluixPearl],
[TitaniumPlate, FluixPearl, TitaniumPlate]]);
//Пилон
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
[TitaniumPlate, FluixGlassCable, TitaniumPlate],
[FluixDust, FluixCrystal, FluixDust],
[TitaniumPlate, FluixGlassCable, TitaniumPlate]]);
//Порт входа/выхода
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
[TitaniumPlate, GlassPlate, TitaniumPlate],
[FluixGlassCable, <appliedenergistics2:io_port>, FluixGlassCable],
[TitaniumPlate, EngProc, TitaniumPlate]]);
//Интерфейс
recipes.addShaped(<appliedenergistics2:interface>, [
[plateAluminum, GlassPlate, plateAluminum],
[FormationCore, <meta_tile_entity:machine_casing.medium_voltage>, AnnihilationCore],
[plateAluminum, GlassPlate, plateAluminum]]);
//Верстак ячеек
recipes.addShaped(<appliedenergistics2:cell_workbench>, [
[<minecraft:wool>, <appliedenergistics2:part:380>, <minecraft:wool>],
[plateAluminum, CalcProc, plateAluminum],
[plateAluminum, plateAluminum, plateAluminum]]);
//МЕ вход/выход порт
recipes.addShaped(<appliedenergistics2:io_port>, [
[GlassPlate, GlassPlate, GlassPlate],
[MEDrive, FluixGlassCable, MEDrive],
[plateAluminum, LogiProc, plateAluminum]]);
//Конденсатор
recipes.addShaped(<appliedenergistics2:condenser>, [
[plateAluminum, <metaitem:electric.piston.mv>, plateAluminum],
[<metaitem:electric.piston.mv>, <meta_tile_entity:hull.hv>, <metaitem:electric.piston.mv>],
[plateAluminum, <metaitem:electric.piston.mv>, plateAluminum]]);
//Приниматель энергии
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
[plateAluminum, GlassPlate, plateAluminum],
[GlassPlate, FluixCrystal, GlassPlate],
[plateAluminum, GlassPlate, plateAluminum]]);
//Терминал безопасности
recipes.addShaped(<appliedenergistics2:security_station>, [
[plateAluminum, MEChest, plateAluminum],
[FluixGlassCable, StorageComponent16K, FluixGlassCable],
[plateAluminum, EngProc, plateAluminum]]);
//Стеклянный кабель
recipes.addShaped(FluixGlassCable * 3, [
[CertusRod, FluixDust, CertusRod],
[quartzFiber, quartzFiber, quartzFiber],
[CertusRod, FluixDust, CertusRod]]);
//Стеклянный кабель закрытый
recipes.addShaped(FluixCoveredC * 3, [
[RubberPlate, RubberPlate, RubberPlate],
[FluixGlassCable, FluixGlassCable, FluixGlassCable],
[RubberPlate, RubberPlate, RubberPlate]]);
//Ядро А
recipes.addShaped(AnnihilationCore, [
[NQuartzRod, LogiProc, NQuartzRod],
[LogiProc, PureFluixCrystal, LogiProc],
[NQuartzRod, LogiProc, NQuartzRod]]);
//Ядро Ф
recipes.addShaped(FormationCore, [
[CertusRod, LogiProc, CertusRod],
[LogiProc, PureFluixCrystal, LogiProc],
[CertusRod, LogiProc, CertusRod]]);
//Флаксовый перл
recipes.addShaped(FluixPearl, [
[PureFluixCrystal, EnderEyePlate, PureFluixCrystal],
[EnderEyePlate, EnderPearl, EnderEyePlate],
[PureFluixCrystal, EnderEyePlate, PureFluixCrystal]]);
//Флаксовый перл рецепт 2
recipes.addShaped(FluixPearl, [
[FluixCrystal, EnderEyePlate, FluixCrystal],
[EnderEyePlate, EnderPearl, EnderEyePlate],
[FluixCrystal, EnderEyePlate, FluixCrystal]]);
//Беспроводной раздатчик сигнала
recipes.addShaped(WirelessReceiver, [
[quartzFiber, FluixPearl, quartzFiber],
[null, EnderRod, null],
[CertusPlate, AdvCircuit, CertusPlate]]);
//Терминал
recipes.addShaped(Terminal, [
[NQuartzRod, QuartziteScrew, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, craftingToolScrewdriverEmptyTag, NQuartzRod]]);
//Терминал крафт 2
recipes.addShaped(Terminal, [
[NQuartzRod, craftingToolScrewdriverEmptyTag, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, QuartziteScrew, NQuartzRod]]);
//Терминал создания
recipes.addShaped(CraftingTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, craftingTable, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);
//Терминал интерфейстов
recipes.addShaped(InterfaceTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, Interface, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);
//Терминал шаблонов
recipes.addShaped(PatternTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, Pattern, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);
//Беспроводной терминал
recipes.addShaped(WirelessTerminal, [
[WirelessReceiver, Terminal, WirelessReceiver],
[NQuartzPlate, EngProc, NQuartzPlate],
[NQuartzPlate, DEnergyCell, NQuartzPlate]]);
//Беспроводной терминал крафта
recipes.addShaped(WirelessCraftingTerminal, [
[WirelessReceiver, CraftingTerminal, WirelessReceiver],
[NQuartzPlate, Singularity, NQuartzPlate],
[NQuartzPlate, DEnergyCell, NQuartzPlate]]);
//Вибрируещее кварцевое стекло
recipes.addShaped(VibrantQGlass, [
[GlowstoneDust, GlowstonePlate, GlowstoneDust],
[GlowstonePlate, QuartzGlass, GlowstonePlate],
[GlowstoneDust, GlowstonePlate, GlowstoneDust]]);
//Вибрируещее кварцевое стекло 2
recipes.addShaped(VibrantQGlass, [
[CertusRod, FluixDust, CertusRod],
[FluixDust, <minecraft:glowstone>, FluixDust],
[CertusRod, FluixDust, CertusRod]]);
//Улучшенная карта улучшения
recipes.addShaped(<appliedenergistics2:material:28>, [
[<ore:platePlatinum>, plateAluminum, null],
[<ore:plateRedAlloy>, CalcProc, plateAluminum],
[<ore:platePlatinum>, plateAluminum, null]]);
//Базовая карта улучшения
recipes.addShaped(basic_card, [
[<ore:plateGold>, plateAluminum, null],
[<ore:plateRedAlloy>, CalcProc, plateAluminum],
[<ore:plateGold>, plateAluminum, null]]);
//Пустой шаблон
recipes.addShaped(Pattern, [
[<appliedenergistics2:quartz_glass>, <ore:plateGlowstone>, <appliedenergistics2:quartz_glass>],
[<ore:plateGlowstone>, CertusQuartz, <ore:plateGlowstone>],
[plateAluminum, plateAluminum, plateAluminum]]);
//Увеличитель сигнала для беспроводной точки доступа
recipes.addShaped(<appliedenergistics2:material:42>, [
[FluixDust, CertusQuartz, <ore:plateEnderPearl>],
[plateAluminum, plateAluminum, plateAluminum],
[null, null, null]]);
//Какой-то аннигиляционный самолёт
recipes.addShaped(<appliedenergistics2:part:300>, [
[FluixDust, FluixDust, FluixDust],
[plateAluminum, <appliedenergistics2:material:44>, plateAluminum],
[null, null, null]]);
//Шина экспорта
recipes.addShaped(<appliedenergistics2:part:260>, [
[plateAluminum, FormationCore, plateAluminum],
[null, <minecraft:piston>, null],
[null, null, null]]);
//Какой-то формированный самолёт
recipes.addShaped(<appliedenergistics2:part:320>, [
[FluixDust, FluixDust, FluixDust],
[plateAluminum, FormationCore, plateAluminum],
[null, null, null]]);
//Шина импорта
recipes.addShaped(<appliedenergistics2:part:240>, [
[null, <appliedenergistics2:material:44>, null],
[plateAluminum, <minecraft:sticky_piston>, plateAluminum],
[null, null, null]]);
//Тунель P2P
recipes.addShaped(<appliedenergistics2:part:460>, [
[null, plateAluminum, null],
[plateAluminum, EngProc, plateAluminum],
[FluixCrystal, FluixCrystal, FluixCrystal]]);
//Иллюм панель 2
recipes.addShaped(<appliedenergistics2:part:180>, [
[null, <ore:plateGlowstone>, null],
[plateAluminum, <ore:plateRedAlloy>, <ore:dustRedstone>],
[null, <ore:plateGlowstone>, null]]);
//Шина переключения 2
recipes.addShaped(<appliedenergistics2:part:80>, [
[null, <ore:plateRedAlloy>, null],
[FluixGlassCable, <minecraft:lever>, FluixGlassCable],
[null, <ore:plateRedAlloy>, null]]);
//Пушка
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
[plateAluminum, plateAluminum, FormationCore],
[StorageComponent64K, <appliedenergistics2:dense_energy_cell>, null],
[plateAluminum, null, null]]);
//Карта памяти
recipes.addShaped(<appliedenergistics2:memory_card>, [
[CalcProc, plateAluminum, plateAluminum],
[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
[null, null, null]]);
//Заряженная палка
recipes.addShaped(<appliedenergistics2:charged_staff>, [
[ChCertusQuartz, ChCertusQuartz, null],
[ChCertusQuartz, stickNeoMag, null],
[null, null, <ore:plateThaumium>]]);
//Манипулятор хаоса
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
[FluixCrystal, LogiProc, null],
[EngProc, <appliedenergistics2:energy_cell>, null],
[null, null, <ore:stickThaumium>]]);
//Кисточка
recipes.addShaped(<appliedenergistics2:color_applicator>, [
[<ore:wireGtSingleAluminium>, FormationCore, <ore:wireGtSingleAluminium>],
[StorageComponent4K, <appliedenergistics2:energy_cell>, StorageComponent4K],
[null, <ore:stickSteel>, null]]);
//Биометрическая карта
recipes.addShaped(<appliedenergistics2:biometric_card>, [
[EngProc, plateAluminum, plateAluminum],
[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],[null, null, null]]);
//Жидкостный терминал
recipes.addShaped(<appliedenergistics2:part:520>, [
[ChQuartzRod, <ore:screwCobalt>, ChQuartzRod],
[Illuminated, GoodCircuit, NQuartzPlate],
[ChQuartzRod, craftingToolScrewdriverEmptyTag, ChQuartzRod]]);
//Ячейка видимости
recipes.addShapeless(<appliedenergistics2:view_cell>, [UStorageHousing, CertusQuartz]);
//1к ячейка
recipes.addShapeless(Storage1K, 
[UStorageHousing, StorageComponent1K]);
//4к ячейка
recipes.addShapeless(Storage4K, 
[UStorageHousing, StorageComponent4K]);
//16к ячейка 
recipes.addShapeless(Storage16K, 
[UStorageHousing, StorageComponent16K]);
//64к ячейка
recipes.addShapeless(Storage64K, 
[UStorageHousing, StorageComponent64K]);
//1к ячейка жидкость
recipes.addShapeless(FluStorage1K, 
[UStorageHousing, FluStorageComponent1K]);
//4к ячейка жидкость
recipes.addShapeless(FluStorage4K, 
[UStorageHousing, FluStorageComponent4K]);
//16к ячейка жидкость
recipes.addShapeless(FluStorage16K, 
[UStorageHousing, FluStorageComponent16K]);
//64к ячейка жидкость
recipes.addShapeless(FluStorage64K, 
[UStorageHousing, FluStorageComponent64K]);
//2к куб ячейка
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_2_cubed>, 
[UStorageHousing, <appliedenergistics2:material:32>]);
//16к куб ячейка
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_16_cubed>, 
[UStorageHousing, <appliedenergistics2:material:33>]);
//128к куб ячейка
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_128_cubed>, 
[UStorageHousing, <appliedenergistics2:material:34>]);
//Обшивка универсального хранилища
recipes.addShaped(UStorageHousing, [
[craftingToolHardHammerEmptyTag, CertusPlate, QuartziteScrew],
[StainlessPlate, ClearPane, StainlessPlate],
[QuartziteScrew, plateAluminum, craftingToolScrewdriverEmptyTag]]);
//Компонент 1к
recipes.addShaped(StorageComponent1K, [
[<ore:circuitBasic>, FluixDust, <ore:circuitBasic>],
[FluixDust, LogiProc, FluixDust],
[<ore:circuitBasic>, FluixDust, <ore:circuitBasic>]]);
//Компонент 4к
recipes.addShaped(StorageComponent4K, [
[plateRAM, StorageComponent1K, plateRAM],
[<ore:circuitGood>, LogiProc, <ore:circuitGood>],
[plateRAM, StorageComponent1K, plateRAM]]);
//Компонент 16к
recipes.addShaped(StorageComponent16K, [
[plateRAM, StorageComponent4K, plateRAM],
[<ore:circuitAdvanced>, CalcProc, <ore:circuitAdvanced>],
[plateRAM, StorageComponent4K, plateRAM]]);
//Компонент 64к
recipes.addShaped(StorageComponent64K, [
[plateRAM, StorageComponent16K, plateRAM],
[<ore:circuitExtreme>, CalcProc, <ore:circuitExtreme>],
[plateRAM, StorageComponent16K, plateRAM]]);
//Жидкость компонент ячейки 1к
recipes.addShaped(FluStorageComponent1K, [
[<ore:circuitBasic>, <metaitem:fluid_cell>, <ore:circuitBasic>],
[<metaitem:fluid_cell>, LogiProc, <metaitem:fluid_cell>],
[<ore:circuitBasic>, <metaitem:fluid_cell>, <ore:circuitBasic>]]);
//Жидкость компонент ячейки 4к
recipes.addShaped(FluStorageComponent4K, [
[plateRAM, FluStorageComponent1K, plateRAM],
[<ore:circuitGood>, LogiProc, <ore:circuitGood>],
[plateRAM, FluStorageComponent1K, plateRAM]]);  
//Жидкость компонент ячейки 16к
recipes.addShaped(FluStorageComponent16K, [
[plateRAM, FluStorageComponent4K, plateRAM],
[<ore:circuitAdvanced>, LogiProc, <ore:circuitAdvanced>],
[plateRAM, FluStorageComponent4K, plateRAM]]);    
//Жидкость компонент ячейки 64к
recipes.addShaped(FluStorageComponent64K, [
[plateRAM, FluStorageComponent16K, plateRAM],
[<ore:circuitExtreme>, CalcProc, <ore:circuitExtreme>],
[plateRAM, FluStorageComponent16K, plateRAM]]);
//Кубичсекий компонент 2к
recipes.addShaped(<appliedenergistics2:material:32>, [
[<ore:plateGlowstone>, FluixPearl, <ore:plateGlowstone>],
[FluixPearl, EngProc, FluixPearl],
[<ore:plateGlowstone>, FluixPearl, <ore:plateGlowstone>]]);
//Кубичсекий компонент 16к
recipes.addShaped(<appliedenergistics2:material:33>, [
[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>],
[<appliedenergistics2:material:32>, EngProc, <appliedenergistics2:material:32>],
[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>]]);
//Кубичсекий компонент 128к
recipes.addShaped(<appliedenergistics2:material:34>, [
[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>],
[<appliedenergistics2:material:33>, EngProc, <appliedenergistics2:material:33>],
[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>]]);

//ExtraCells2 Fork
//Удаление рецептов
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/4096k");
//recipes.remove(<aeadditions:part.base>);
//recipes.remove(<aeadditions:part.base:1>);
//recipes.remove(<aeadditions:part.base:3>);
//recipes.remove(<aeadditions:storage.physical:4>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
//recipes.remove(<aeadditions:pattern.fluid>);
recipes.remove(<aeadditions:storage.component>);
recipes.remove(<aeadditions:storage.component:1>);
recipes.remove(<aeadditions:storage.component:2>);
recipes.remove(<aeadditions:storage.component:3>);
recipes.remove(<aeadditions:storage.component:4>);
recipes.remove(<aeadditions:storage.component:5>);
recipes.remove(<aeadditions:storage.component:6>);
recipes.remove(<aeadditions:storage.casing>);
recipes.remove(<aeadditions:storage.casing:1>);
//recipes.remove(<aeadditions:storage.fluid.portable>.withTag({fuzzyMode: "IGNORE_ALL"}));
//recipes.remove(<aeadditions:fluidcrafter>);
//recipes.remove(<aeadditions:fluidfiller>);
//recipes.remove(<aeadditions:hardmedrive>);
mods.jei.JEI.removeAndHide(<aeadditions:terminal.fluid.wireless>.withTag({}));
mods.jei.JEI.removeAndHide(<aeadditions:terminal.universal.wireless>.withTag({type: 0 as byte, modules: 23 as byte}));
mods.jei.JEI.removeAndHide(<aeadditions:vibrantchamberfluid>);
mods.jei.JEI.removeAndHide(<aeadditions:certustank>);

//256k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*8, <appliedenergistics2:material:23>*2, <ore:circuitElite>*2, <appliedenergistics2:material:38>*2).outputs(<aeadditions:storage.component>).duration(300).EUt(3000).buildAndRegister();
//1024k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*16, <appliedenergistics2:material:23>*4, <ore:circuitMaster>*2, <aeadditions:storage.component>*2).outputs(<aeadditions:storage.component:1>).duration(300).EUt(5000).buildAndRegister();
//4096k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*24, <appliedenergistics2:material:23>*6, <ore:circuitUltimate>*2, <aeadditions:storage.component:1>*2).outputs(<aeadditions:storage.component:2>).duration(300).EUt(7000).buildAndRegister();
//16384k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*32, <appliedenergistics2:material:23>*8, <ore:circuitSuperconductor>*2, <aeadditions:storage.component:2>*2).outputs(<aeadditions:storage.component:3>).duration(300).EUt(9000).buildAndRegister();

//256k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*8, <appliedenergistics2:material:24>*2, <ore:circuitElite>*2, <appliedenergistics2:material:57>*2).outputs(<aeadditions:storage.component:4>).duration(300).EUt(3000).buildAndRegister();
//1024k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*16, <appliedenergistics2:material:24>*4, <ore:circuitMaster>*2, <aeadditions:storage.component:4>*2).outputs(<aeadditions:storage.component:5>).duration(300).EUt(5000).buildAndRegister();
//4096k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_2:32485>*24, <appliedenergistics2:material:24>*6, <ore:circuitUltimate>*2, <aeadditions:storage.component:5>*2).outputs(<aeadditions:storage.component:6>).duration(300).EUt(7000).buildAndRegister();

//Fluid Storage Housing
assembler.recipeBuilder().inputs(CertusPlate*2, QuartziteScrew*2, StainlessPlate*2, plateAluminum*2).outputs(<aeadditions:storage.casing:1>).duration(250).EUt(128).buildAndRegister();

//Advanced Storage Housing
assembler.recipeBuilder().inputs(<appliedenergistics2:material:39>*2, QuartziteScrew*4, StainlessPlate*4, plateAluminum*4).outputs(<aeadditions:storage.casing>).duration(250).EUt(128).buildAndRegister();