import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;
import mods.gregtech.TerminalRegistry;

// --- Массивы

val Diamonds = <metaitem:gemFlawedDiamond> | <minecraft:diamond> | <metaitem:gemFlawlessDiamond>;

val Rubber_Trees = <tfc:wood/log/rubber_fig> | <tfc:wood/log/hevea>;


// --- Добавление рецептов
// !Удалить после исправления Контролера напряжения
recipes.remove(<metaitem:gcym:tiered_hatch.uhv>);
recipes.addShaped("tfg/gregtech/tiered_hatch_uv", <metaitem:gcym:tiered_hatch.uv>, [
    [<metaitem:plateDarmstadtium>, <metaitem:plateDarmstadtium>, <metaitem:plateDarmstadtium>],
    [<metaitem:plateDarmstadtium>, <ore:circuitUhv>, <metaitem:plateDarmstadtium>],
    [<metaitem:plateDarmstadtium>, <metaitem:plateDarmstadtium>, <metaitem:plateDarmstadtium>]]);

// Регистрация металлов для голов ножей
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeCopper>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBismuthBronze>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBronze>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlackBronze>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeWroughtIron>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeSteel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlackSteel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeRedSteel>, "RED_STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlueSteel>, "BLUE_STEEL", 144, true);

// Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<metaitem:stickGold>, "GOLD", 72, true);
ItemRegistry.registerItemMetal(<metaitem:stickWroughtIron>, "WROUGHT_IRON", 72, true);
ItemRegistry.registerItemMetal(<metaitem:stickSteel>, "STEEL", 72, true);

// Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuth>, "BISMUTH", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBrass>, "BRASS", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBronze>, "BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleCopper>, "COPPER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleGold>, "GOLD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleLead>, "LEAD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleNickel>, "NICKEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRoseGold>, "ROSE_GOLD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSilver>, "SILVER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleTin>, "TIN", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuthBronze>, "BISMUTH_BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackBronze>, "BLACK_BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSteel>, "STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleWroughtIron>, "WROUGHT_IRON", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSterlingSilver>, "STERLING_SILVER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleZinc>, "ZINC", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRedSteel>, "RED_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlueSteel>, "BLUE_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackSteel>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoublePlatinum>, "PLATINUM", 288, true);

// Люк коксовой печи
recipes.addShapeless("tfg/gregtech/coke_oven_hatch", <metaitem:coke_oven_hatch>, [<gregtech:metal_casing:8>, <ore:barrel>]);

// Контроллер теплицы
recipes.addShaped("tfg/gregtech/greenhouse_controller", <metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<metaitem:electric.pump.mv>, <metaitem:gregtechfoodoption:farmer.mv>, <metaitem:electric.pump.mv>],
    [<metaitem:wireGtQuadrupleCopper>, <ore:circuitMv>, <metaitem:wireGtQuadrupleCopper>]]);

// Контроллер пилорамы
recipes.addShaped("tfg/gregtech/saw_mill_controller", <metaitem:multiblocktweaker:saw_mill>, [
    [<metaitem:screwSteel>, <metaitem:toolHeadBuzzSawSteel>, <metaitem:screwSteel>],
    [<metaitem:electric.motor.mv>, <metaitem:hull.mv>, <metaitem:electric.motor.mv>],
    [<ore:circuitMv>, <metaitem:conveyor.module.mv>, <ore:circuitMv>]]);

// Бронзовый паровой молот
recipes.addShaped("tfg/gregtech/bronze_forge_hammer", <metaitem:steam_hammer_bronze>, [
    [<metaitem:pipeSmallFluidBronze>, <ore:craftingPiston>, <metaitem:pipeSmallFluidBronze>],
    [<metaitem:pipeSmallFluidBronze>, <gregtech:steam_casing>, <metaitem:pipeSmallFluidBronze>],
    [<metaitem:pipeSmallFluidBronze>, <tfc:metal/anvil/wrought_iron>, <metaitem:pipeSmallFluidBronze>]]);

// Стальной паровой молот
recipes.addShaped("tfg/gregtech/steam_forge_hammer", <metaitem:steam_hammer_steel>, [
    [<metaitem:pipeSmallFluidSteel>, <ore:craftingPiston>, <metaitem:pipeSmallFluidSteel>],
    [<metaitem:pipeSmallFluidSteel>, <gregtech:steam_casing:2>, <metaitem:pipeSmallFluidSteel>],
    [<metaitem:pipeSmallFluidSteel>, <tfc:metal/anvil/steel>, <metaitem:pipeSmallFluidSteel>]]);

// Скомпрессированная глина
recipes.addShaped("tfg/gregtech/compressed_coke_clay", <metaitem:compressed.coke_clay> * 3, [
    [<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>],
    [<ore:sand>, <metaitem:wooden_form.brick>, <ore:sand>],
    [<ore:sand>, <ore:sand>, <ore:sand>]]);

// Деревянная форма
recipes.addShaped("tfg/gregtech/wooden_form", <metaitem:wooden_form.empty>, [
    [null, <ore:lumber>, null],
    [null, <ore:lumber>, null],
    [<ore:gtce.tool.saws>, <ore:lumber>, null]]);

// Бронзовый малый бойлер
recipes.addShaped("tfg/gregtech/small_steam_coal_boiler", <metaitem:steam_boiler_coal_bronze>, [
    [<metaitem:plateBronze>, <metaitem:plateBronze>, <metaitem:plateBronze>],
    [<metaitem:plateBronze>, <ore:gtce.tool.wrenches>, <metaitem:plateBronze>],
    [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// Стальной малый бойлер
recipes.addShaped("tfg/gregtech/high_pressure_coal_boiler", <metaitem:steam_boiler_coal_steel>, [
    [<metaitem:plateSteel>, <metaitem:plateSteel>, <metaitem:plateSteel>],
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>],
    [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// Бронзовая паровая печь
recipes.addShaped("tfg/gregtech/steam_furnace", <metaitem:steam_furnace_bronze>, [
    [<metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>],
    [<metaitem:pipeSmallFluidBronze>, <gregtech:steam_casing:1>,<metaitem:pipeSmallFluidBronze>],
    [<metaitem:pipeSmallFluidBronze>, <tfc:blast_furnace>, <metaitem:pipeSmallFluidBronze>]]);

// Бронзовый паровой сплавщик
recipes.addShaped("tfg/gregtech/steam_alloy_smelter", <metaitem:steam_alloy_smelter_bronze>, [
    [<metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>],
    [<tfc:blast_furnace>, <gregtech:steam_casing:1>, <tfc:blast_furnace>],
    [<metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>, <metaitem:pipeSmallFluidBronze>]]);

// Доменная печь
recipes.addShaped("tfg/gregtech/ebf", <metaitem:electric_blast_furnace>, [
    [<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
    [<ore:circuitLv>, <gregtech:metal_casing:2>, <ore:circuitLv>],
    [<metaitem:cableGtSingleTin>, <ore:circuitLv>, <metaitem:cableGtSingleTin>]]);

// Мульти-печь
recipes.addShaped("tfg/gregtech/multi_smelter", <metaitem:multi_furnace>, [
    [<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
    [<ore:circuitHv>, <gregtech:metal_casing:2>, <ore:circuitHv>],
    [<metaitem:cableGtSingleAnnealedCopper>, <ore:circuitHv>, <metaitem:cableGtSingleAnnealedCopper>]]);

// // Стацния создания
// recipes.addShaped("tfg/gregtech/crafting_station", <metaitem:workbench>, [
//     [<ore:chestWood>, <ore:slabWood>, <ore:chestWood>],
//     [<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>],
//     [<ore:plankWood>, <ore:gtce.tool.saws>, <ore:plankWood>]]);

// Обработанные доски
recipes.addShaped("tfg/gregtech/treated_wood_planks", <gregtech:planks:1>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <tfc:metal/bucket/red_steel>.withTag({Fluid: {FluidName: "creosote", Amount: 1000}}), <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Primitive water pump deck
recipes.addShaped("tfg/gregtech/primitive_water_pump_deck", <gregtech:steam_casing:4> * 2, [
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>],
    [<ore:gtce.tool.screwdrivers>, <ore:slabCobblestone>, <ore:gtce.tool.hard.hammers>]]);

// Primitive water pump hatch
recipes.addShaped("tfg/gregtech/primitive_water_pump_hatch", <metaitem:pump_hatch>, [
    [<ore:screwIronAny>, <ore:ringIronAny>, <ore:gtce.tool.screwdrivers>],
    [<ore:plankTreatedWood>, <metaitem:pipeLargeFluidWood>, <ore:plankTreatedWood>],
    [<ore:slabCobblestone>, <ore:ringIronAny>, <ore:slabCobblestone>]]);

// Primitive water pump
recipes.addShaped("tfg/gregtech/primitive_water_pump", <metaitem:primitive_water_pump>, [
    [<ore:ringIronAny>, <metaitem:pipeNormalFluidWood>, <ore:screwIronAny>],
    [<ore:rotorIronAny>, <ore:plankTreatedWood>, <ore:gtce.tool.screwdrivers>],
    [<ore:slabCobblestone>, <metaitem:pipeLargeFluidWood>, <ore:slabCobblestone>]]);

// Coke Oven
recipes.addShaped("tfg/gregtech/coke_oven", <metaitem:coke_oven>, [
    [<gregtech:metal_casing:8>, <ore:plateIronAny>, <gregtech:metal_casing:8>],
    [<ore:plateIronAny>, <ore:gtce.tool.wrenches>, <ore:plateIronAny>],
    [<gregtech:metal_casing:8>, <ore:plateIronAny>, <gregtech:metal_casing:8>]]);

// Steam Miner
recipes.addShaped("tfg/gregtech/steam_miner", <metaitem:steam_miner>, [
    [Diamonds, <metaitem:pipeSmallFluidBronze>, Diamonds],
    [<metaitem:pipeSmallFluidBronze>, <gregtech:steam_casing>, <metaitem:pipeSmallFluidBronze>],
    [<ore:craftingPiston>, <metaitem:pipeSmallFluidBronze>, <ore:craftingPiston>]]);

// Steam Macerator
recipes.addShaped("tfg/gregtech/steam_macerator", <metaitem:steam_macerator_bronze>, [
    [Diamonds, <metaitem:pipeNormalFluidBronze>, Diamonds],
    [<metaitem:pipeNormalFluidBronze>, <gregtech:steam_casing>, <metaitem:pipeNormalFluidBronze>],
    [<metaitem:gearSmallBronze>, <metaitem:pipeNormalFluidBronze>, <metaitem:gearSmallBronze>]]);

// Steam Rock Breaker
recipes.addShaped("tfg/gregtech/steam_rick_breaker", <metaitem:steam_rock_breaker_bronze>, [
    [<ore:craftingPiston>, <metaitem:pipeSmallFluidBronze>, <ore:craftingPiston>],
    [<metaitem:pipeSmallFluidBronze>, <gregtech:steam_casing>, <metaitem:pipeSmallFluidBronze>],
    [Diamonds, <metaitem:pipeSmallFluidBronze>, Diamonds]]);

// Firebrick GT
recipes.addShaped("tfg/gregtech/fire_bricks", <gregtech:metal_casing:1>, [
    [null, <metaitem:plateCopper>, null],
    [<metaitem:plateCopper>, <tfc:fire_bricks>, <metaitem:plateCopper>],
    [null, <metaitem:plateCopper>, null]]);

// Quartz Sand - 1
recipes.addShaped("tfg/gregtech/quartz_sand", <metaitem:dustQuartzSand>, [
    [null, <ore:sand>, null],
    [null, <ore:gtce.tool.mortars>, null],
    [null, null, null]]);

// Steam Import Bus
recipes.addShaped("tfg/gregtech/steam_import_bus", <metaitem:steam_import_bus>, [
    [null, <ore:chest>, null],
    [null, <gregtech:steam_casing>, null],
    [null, null, null]]);

// Steam Export Bus
recipes.addShaped("tfg/gregtech/steam_export_bus", <metaitem:steam_export_bus>, [
    [null, <gregtech:steam_casing>, null],
    [null, <ore:chest>, null],
    [null, null, null]]);

// Wooden Crate
recipes.addShaped("tfg/gregtech/wooden_crate", <metaitem:crate.wood>, [
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>],
    [<ore:plankWood>, <ore:gtce.tool.saws>, <ore:plankWood>],
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>]]);

// Блокнот
recipes.addShaped("tfg/gregtech/clipboard", <metaitem:clipboard>, [
    [null, <ore:screwIronAny>, <ore:gtce.tool.screwdrivers>],
    [<ore:boltIronAny>, <metaitem:plateWood>, <ore:boltIronAny>],
    [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Лук
recipes.addShaped(<minecraft:bow>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:stickLongWood>, <ore:string>],
    [<metaitem:stickLongWood>, <ore:ringIronAny>, <ore:string>],
    [<ore:gtce.tool.files>, <metaitem:stickLongWood>, <ore:string>]]);

// Чаровалка
macerator.recipeBuilder()
    .inputs(<minecraft:enchanting_table>)
    .outputs(<metaitem:dustPaper> * 9, <metaitem:dustObsidian> * 3)
    .duration(135).EUt(2).buildAndRegister();

// Crafting Table Cover
assembler.recipeBuilder()
    .inputs(<ore:plateIronAny>, <ore:workbench>)
    .outputs(<metaitem:cover.crafting>)
    .duration(400).EUt(16).buildAndRegister();

// Extruder Shape (Sense Head)
recipes.addShaped(<metaitem:shape.extruder.sense>, [
    [null, null, null],
    [<ore:gtce.tool.hard.hammers>, <metaitem:shape.extruder.plate>, null],
    [null, null, null]]);
forming_press.recipeBuilder()
    .inputs(<metaitem:shape.empty>)
    .notConsumable(<metaitem:shape.extruder.sense>)
    .outputs(<metaitem:shape.extruder.sense>)
    .duration(120).EUt(22).buildAndRegister();

// Mold (Knife Head)
recipes.addShaped(<metaitem:shape.extruder.knife>, [
    [null, <ore:gtce.tool.hard.hammers>, <metaitem:shape.empty>],
    [null, null, null],
    [null, null, null]]);
forming_press.recipeBuilder()
    .inputs(<metaitem:shape.empty>)
    .notConsumable(<metaitem:shape.extruder.knife>)
    .outputs(<metaitem:shape.extruder.knife>)
    .duration(120).EUt(22).buildAndRegister();

// Растительное масло
extractor.recipeBuilder()
    .inputs(<ore:listAllSeeds>)
    .fluidOutputs(<liquid:seed_oil> * 10).EUt(2).duration(32).buildAndRegister();

// Контроллер звездной кузни

assembly_line.recipeBuilder()
    .inputs([
      <ore:batteryIv> * 4,  
      <ore:circuitIv> * 9, 
      <metaitem:robot.arm.iv> * 14, 
      <metaitem:tool.dataorb> * 4, 
      <gcym:unique_casing:4> * 5, 
      <metaitem:conveyor.module.ev> * 3, 
      <metaitem:conveyor.module.ev> * 3, 
      <metaitem:plateDoubleNaquadah> * 3, 
      <metaitem:plateDoubleNaquadah> * 3])
    .fluidInputs(<liquid:molten.titanium_carbide> * 6864, <liquid:molten.hssg> * 4432)
    .outputs(<metaitem:multiblocktweaker:star_forge>)
    .duration(1300).EUt(8100).buildAndRegister();

// Solar Panel (ULV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel> * 8,
        <minecraft:daylight_detector> * 8,
        <ore:circuitUlv> * 4,
        <metaitem:plate.ultra_low_power_integrated_circuit> * 4,
        <minecraft:glass>,
        <metaitem:transformer.ulv>])
    .fluidInputs(<liquid:silicon> * 2304)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<metaitem:cover.solar.panel.ulv>])
    .duration(20).EUt(30720).buildAndRegister();

// Solar Panel (LV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.ulv> * 4,
        <metaitem:sensor.lv> * 8,
        <ore:circuitLv> * 4,
        <metaitem:plate.ultra_low_power_integrated_circuit> * 16,
        <appliedenergistics2:quartz_glass>,
        <metaitem:transformer.lv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs([<metaitem:cover.solar.panel.lv>])
    .duration(40).EUt(30720).buildAndRegister();

// Solar Panel (MV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.lv> * 4,
        <metaitem:sensor.mv> * 8,
        <ore:circuitMv> * 4,
        <metaitem:plate.low_power_integrated_circuit> * 4,
        <appliedenergistics2:quartz_vibrant_glass>,
        <metaitem:transformer.mv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs([<metaitem:cover.solar.panel.mv>])
    .duration(80).EUt(30720).buildAndRegister();

// Solar Panel (HV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.mv> * 4,
        <metaitem:sensor.hv> * 8,
        <ore:circuitHv> * 4,
        <metaitem:plate.low_power_integrated_circuit> * 16,
        <appliedenergistics2:quartz_vibrant_glass>,
        <metaitem:transformer.hv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs([<metaitem:cover.solar.panel.hv>])
    .duration(160).EUt(30720).buildAndRegister();

// Solar Panel (EV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.hv> * 4,
        <metaitem:sensor.ev> * 8,
        <ore:circuitEv> * 4,
        <metaitem:plate.power_integrated_circuit> * 4,
        <gregtech:transparent_casing>,
        <metaitem:transformer.ev>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs([<metaitem:cover.solar.panel.ev>])
    .duration(320).EUt(30720).buildAndRegister();

// Solar Panel (IV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.ev> * 4,
        <metaitem:sensor.iv> * 8,
        <ore:circuitIv> * 4,
        <metaitem:plate.power_integrated_circuit> * 16,
        <gregtech:transparent_casing>,
        <metaitem:transformer.iv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 4608)
    .outputs([<metaitem:cover.solar.panel.iv>])
    .duration(640).EUt(30720).buildAndRegister();

// Solar Panel (LuV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.iv> * 4,
        <metaitem:sensor.luv> * 8,
        <ore:circuitLuv> * 4,
        <metaitem:plate.high_power_integrated_circuit> * 8,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.luv>
    ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 9216)
    .outputs([<metaitem:cover.solar.panel.luv>])
    .duration(1280).EUt(30720).buildAndRegister();

// Solar Panel (ZPM)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.luv> * 4,
        <metaitem:sensor.zpm> * 8,
        <ore:circuitZpm> * 4,
        <metaitem:plate.high_power_integrated_circuit> * 32,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.zpm>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<metaitem:cover.solar.panel.zpm>])
    .duration(2560).EUt(122880).buildAndRegister();

// Solar Panel (UV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.zpm> * 4,
        <metaitem:sensor.uv> * 8,
        <ore:circuitUv> * 4,
        <metaitem:plate.ultra_high_power_integrated_circuit> * 64,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.uv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 36864)
    .outputs([<metaitem:cover.solar.panel.uv>])
    .duration(5120).EUt(491520).buildAndRegister();

// Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([<metaitem:dustDiamond>, <metaitem:dustIridium>])
    .fluidInputs([<liquid:mars_air> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200).EUt(7680).buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs([<metaitem:dustDiamond> * 2, <metaitem:dustIridium> * 2])
    .fluidInputs([<liquid:sulfur_dioxide> * 6000, <liquid:carbon_monoxide> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs(<metaitem:dustNetherStar>)
    .duration(700).EUt(2000).buildAndRegister(); 

// Ступка + Гравий -> Кремений
recipes.addShapeless(<minecraft:flint>, [<ore:gtce.tool.mortars>, <ore:gravel>]);

// Бронзовая пыль в TFC стиле
recipes.addShapeless(<metaitem:dustBronze> * 9, [<metaitem:dustTin>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>, <metaitem:dustCopper>]);

// Исправление рецепта на бумагу

// Крафт бумажной пыли
    recipes.addShaped(<metaitem:dustPaper> * 2,
    [[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
    [null, <ore:gtce.tool.mortars>, null]]);

// Крафт бумаги из пыли
recipes.addShaped(<ore:paper>.firstItem * 2,
    [[null, <ore:slabStonePolished>.reuse(), null],
    [<metaitem:dustPaper>, <metaitem:dustPaper>, <metaitem:dustPaper>],
    [null, <ore:slabStonePolished>.reuse(), null]]);

// Plant Ball Recipes

// From Dirt
centrifuge.recipeBuilder()
    .inputs([<ore:dirt>])
    .chancedOutput(<metaitem:plant_ball>, 1200, 700)
    .chancedOutput(<tfc:dirt/basalt>, 5000, 1200)
    .chancedOutput(<metaitem:dustTinyClay>, 4000, 900)
    .duration(275).EUt(30).buildAndRegister();

// From Grass
centrifuge.recipeBuilder()
    .inputs([<ore:grass>])
    .chancedOutput(<metaitem:plant_ball>, 3000, 1200)
    .chancedOutput(<tfc:dirt/basalt>, 5000, 1200)
    .chancedOutput(<metaitem:dustTinyClay>, 5000, 900)
    .duration(275).EUt(30).buildAndRegister();

// From Cactus
compressor.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(300).EUt(2).buildAndRegister();

// From Grains
compressor.recipeBuilder()
    .inputs([<ore:categoryGrain> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// From Vegetables
compressor.recipeBuilder()
    .inputs([<ore:categoryVegetable> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// From Fruit
compressor.recipeBuilder()
    .inputs([<ore:categoryFruit> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// From Red Mushroom
compressor.recipeBuilder()
    .inputs([<ore:mushroomRed> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// From Mushroom
compressor.recipeBuilder()
    .inputs([<ore:mushroombrown> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// Biomass Recipes

// From Cactus
brewery.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus>])
    .fluidInputs([<liquid:water> * 20])
    .fluidOutputs([<liquid:biomass> * 20])
    .duration(300).EUt(2).buildAndRegister();

// From Grains
brewery.recipeBuilder()
    .inputs([<ore:categoryGrain> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// From Vegetables
brewery.recipeBuilder()
    .inputs([<ore:categoryVegetable> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// From Fruit
brewery.recipeBuilder()
    .inputs([<ore:categoryFruit> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// From Red Mushroom
brewery.recipeBuilder()
    .inputs([<ore:mushroomRed> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// From Mushroom
brewery.recipeBuilder()
    .inputs([<ore:mushroombrown> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// Glass
arc_furnace.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<minecraft:glass> * 2)
    .duration(175).EUt(7).buildAndRegister();

// Coke Oven Bricks
alloy_smelter.recipeBuilder()
    .inputs([<ore:sand>, <ore:ingotClay>])
    .outputs(<metaitem:brick.coke> * 2)
    .duration(175).EUt(7).buildAndRegister();

// Hevea -> Rubber
centrifuge.recipeBuilder()
    .inputs(Rubber_Trees)
    .chancedOutput(<metaitem:dustCarbon>, 2500, 600)
    .chancedOutput(<metaitem:dustWood>, 2500, 700)
    .chancedOutput(<metaitem:plant_ball>, 3750, 900)
    .chancedOutput(<metaitem:rubber_drop>, 5000, 1200)
    .fluidOutputs(<fluid:methane> * 65)
    .duration(200).EUt(20).buildAndRegister();

// Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .duration(330).EUt(140).buildAndRegister();
	
// Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .duration(220).EUt(140).buildAndRegister();

// Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder()
    .inputs([<ore:sugarcane> * 3])
    .outputs(<metaitem:dustPaper> * 2)
    .duration(105).EUt(4).buildAndRegister();

// Песок + Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand> * 4, <ore:gravel> * 4)
    .outputs(<tfc:aggregate> * 8)
    .duration(20).EUt(4).buildAndRegister();

// Infinite Water Cover 
assembler.recipeBuilder()
    .inputs(<metaitem:electric.pump.iv> * 2, <minecraft:cauldron:0>, <ore:circuitIv> * 2, <minecraft:ender_pearl> * 2, <metaitem:emitter.iv>)
    .outputs(<metaitem:cover.infinite_water>)
    .duration(200).EUt(3280).buildAndRegister();

// Fertilizer
mixer.recipeBuilder()
	.inputs(<ore:sand> * 4,<metaitem:dustWood> * 2, <ore:dirt>)
    .fluidInputs(<liquid:water> * 1000)
	.outputs(<metaitem:fertilizer>)
	.duration(100).EUt(30).buildAndRegister();

// Деревянный ящик
assembler.recipeBuilder()
    .inputs(<ore:screwIronAny> * 4, <ore:plankWood> * 4)
    .circuit(1)
    .outputs(<metaitem:crate.wood>)
    .duration(100).EUt(16).buildAndRegister();

// Разбор ведра из синей стали
arc_furnace.recipeBuilder()
    .inputs([<minecraft:bucket:0>])
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotBlueSteel> * 3)
    .duration(56).EUt(30).buildAndRegister();
macerator.recipeBuilder()
    .inputs(<minecraft:bucket:0>)
    .outputs(<metaitem:dustBlueSteel> * 3)
    .duration(56).EUt(2).buildAndRegister();

// Разбор ведра из кованого стали
arc_furnace.recipeBuilder()
    .inputs([<tfc:metal/bucket/red_steel>])
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotWroughtIron> * 3)
    .duration(56).EUt(30).buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:metal/bucket/red_steel>)
    .outputs(<metaitem:dustWroughtIron> * 3)
    .duration(56).EUt(2).buildAndRegister();

// Телепорт
TerminalRegistry.registerDevice(<charset:icon>, "disabled");
TerminalRegistry.createAppRegistryBuilder("teleport")
    .isDefaultApp(false)
    .device(0, "disabled")
    .upgrade(<charset:icon>)
    .build();

// Монеты
forming_press.recipeBuilder()
    .inputs(<metaitem:plateCopper>)
    .notConsumable(<metaitem:shape.mold.credit>)
    .outputs(<metaitem:credit.copper>)
    .duration(40).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
    .inputs(<metaitem:plateGold>)
    .notConsumable(<metaitem:shape.mold.credit>)
    .outputs(<metaitem:credit.gold>)
    .duration(40).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
    .inputs(<metaitem:plateSilver>)
    .notConsumable(<metaitem:shape.mold.credit>)
    .outputs(<metaitem:credit.silver>)
    .duration(40).EUt(480).buildAndRegister();

// Резина
electric_furnace.recipeBuilder()
    .inputs(<tfctech:latex/rubber_mix>)
    .outputs(<tfctech:latex/rubber>)
    .duration(40).EUt(7).buildAndRegister();

// Passthrough hatch item
recipes.addShaped("tfg/gregtech/passthrough_hatch_item", <metaitem:passthrough_hatch_item>, [
    [null,<metaitem:conveyor.module.hv>, null],
    [<metaitem:gearSmallSteel>, <metaitem:hull.hv>, <metaitem:gearSmallSteel>],
    [null, <ore:chestWood>, null]]);

// Сжатая пластина углерода
compressor.recipeBuilder()
    .inputs([<metaitem:plateCarbon> * 9])
    .outputs([<metaitem:plateDenseCarbon>])
    .duration(504).EUt(96).buildAndRegister();
