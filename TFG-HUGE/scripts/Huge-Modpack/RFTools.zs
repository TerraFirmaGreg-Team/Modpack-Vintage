import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Облегчаем жизнь прописыванием коротких имен
var quarry_shape_card = <rftools:shape_card:2>;
//Модули хранения
var tier1StorageModule = <rftools:storage_module>;
var tier2StorageModule = <rftools:storage_module:1>;
var tier3StorageModule = <rftools:storage_module:2>;
//Щиты
var shieldProjector1 = <rftools:shield_block1>;
var shieldProjector2 = <rftools:shield_block2>;
var shieldProjector3 = <rftools:shield_block3>;
var shieldProjector4 = <rftools:shield_block4>;
//Все предметы RFTools'a
var matterTransmitter = <rftools:matter_transmitter>;
var matterReceiver = <rftools:matter_receiver>;
var dialingDevice = <rftools:dialing_device>;
var simpleDialingDevice = <rftools:simple_dialer>;
var destinationAnalyzer = <rftools:destination_analyzer>;
var matterBooster = <rftools:matter_booster>;
var chargedPorter = <rftools:charged_porter>;
var advChargedPorter = <rftools:advanced_charged_porter>;
var simpleCell = <rftools:powercell_simple>;
var mediumCell = <rftools:powercell>;
var advCell = <rftools:powercell_advanced>;
var cellCard = <rftools:powercell_card>;
var smartWrench = <rftools:smartwrench>;
var dimensionalShard = <rftools:dimensional_shard>;
var infusedDiamond = <rftools:infused_diamond>;
var syringe = <rftools:syringe>;
var machineFrame = <rftools:machine_frame>;
var machineBase = <rftools:machine_base>;
var crafter1 = <rftools:crafter1>;
var crafter2 = <rftools:crafter2>;
var crafter3 = <rftools:crafter3>;
var elevator = <rftools:elevator>;
var booster = <rftools:booster>;
var environmentalController = <rftools:environmental_controller>;
var ecRegeneration = <rftools:regeneration_module>;
var ecRegeneration3 = <rftools:regenerationplus_module>;
var ecSpeed = <rftools:speed_module>;
var ecSpeed3 = <rftools:speedplus_module>;
var ecHaste = <rftools:haste_module>;
var ecHaste3 = <rftools:hasteplus_module>;
var ecSaturation = <rftools:saturation_module>;
var ecSaturation3 = <rftools:saturationplus_module>;
var ecFeatherFalling = <rftools:featherfalling_module>;
var ecFeatherFallingPlus = <rftools:featherfallingplus_module>;
var ecFlight = <rftools:flight_module>;
var ecPeaceful = <rftools:peaceful_module>;
var ecWaterBreathing = <rftools:waterbreathing_module>;
var ecNightVision = <rftools:nightvision_module>;
var ecBlindness = <rftools:blindness_module>;
var ecWeakness = <rftools:weakness_module>;
var ecPoison = <rftools:poison_module>;
var ecSlowness = <rftools:slowness_module>;
var ecGlowing = <rftools:glowing_module>;
var ecLuck = <rftools:luck_module>;
var ecNoTeleport = <rftools:noteleport_module>;
var peaceEssence = <rftools:peace_essence>;
var networkMonitor = <rftools:network_monitor>;
var rfMonitor = <rftools:rf_monitor>;
var liquidMonitor = <rftools:liquid_monitor>;
var powerRelay = <rftools:relay>;
var itemFilter = <rftools:item_filter>;
var redstoneSequencer = <rftools:sequencer_block>;
var redstoneTimer = <rftools:timer_block>;
var redstoneCounter = <rftools:counter_block>;
var redstoneTransmitter = <rftools:redstone_transmitter_block>;
var redstoneReceiver = <rftools:redstone_receiver_block>;
var redstoneLogic = <rftools:logic_block>;
var redstoneInvChecker = <rftools:invchecker_block>;
var redstoneSensor = <rftools:sensor_block>;
var redstoneWire = <rftools:wire_block>;
var infusedEnderpearl = <rftools:infused_enderpearl>;
var modularStorage = <rftools:modular_storage>;
var screen = <rftools:screen>;
var levelEmitter = <rftools:level_emitter>;
var remoteStorage = <rftools:remote_storage>;
//Шприцы
var n_syringeOcelot = <rftools:syringe>.withTag({mobName: "Ocelot", level: 10, mobId: "minecraft:ocelot"});
var n_syringeGuardian = <rftools:syringe>.withTag({mobName: "Guardian", level: 10, mobId: "minecraft:guardian"});
var n_syringeDonkey = <rftools:syringe>.withTag({mobName: "Donkey", level: 10, mobId: "minecraft:donkey"});
var n_syringeWolf = <rftools:syringe>.withTag({mobName: "Wolf", level: 10, mobId: "minecraft:wolf"});
var n_syringeBlaze = <rftools:syringe>.withTag({mobName: "Blaze", level: 10, mobId: "minecraft:blaze"});
var n_syringeEnderman = <rftools:syringe>.withTag({mobName: "Enderman", level: 10, mobId: "minecraft:enderman"});
var n_syringeShulker = <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"});
var n_syringeEndermite = <rftools:syringe>.withTag({mobName: "Endermite", level: 10, mobId: "minecraft:endermite"});
var n_syringeCaveSpider = <rftools:syringe>.withTag({mobName: "Cave Spider", level: 10, mobId: "minecraft:cave_spider"});
var n_syringeSquid = <rftools:syringe>.withTag({mobName: "Squid", level: 10, mobId: "minecraft:squid"});
var n_syringeWitch = <rftools:syringe>.withTag({mobName: "Witch", level: 10, mobId: "minecraft:witch"});
var n_syringeSlime = <rftools:syringe>.withTag({mobName: "Slime", level: 10, mobId: "minecraft:slime"});
var n_syringeIronGolem = syringe.withTag({mobName: "Iron Golem", level: 10, mobId: "minecraft:villager_golem"});
var n_syringePolarBear = syringe.withTag({mobName: "Polar Bear", level: 10, mobId: "minecraft:polar_bear"});
var n_syringeHorse = syringe.withTag({mobName: "Horse", level: 10, mobId: "minecraft:horse"});
var n_syringeZombieHorse = syringe.withTag({mobName: "Zombie Horse", level: 10, mobId: "minecraft:zombie_horse"});
var n_syringeRabbit = syringe.withTag({mobName: "Rabbit", level: 10, mobId: "minecraft:rabbit"});
var n_syringeZombie = syringe.withTag({mobName: "Zombie", level: 10, mobId: "minecraft:zombie"});
var n_syringeAngryZombie = syringe.withTag({mobName: "Angry Zombie", level: 10, mobId: "thaumcraft:brainyzombie"});
var n_syringeChicken = <rftools:syringe>.withTag({mobName: "Chicken", level: 10, mobId: "minecraft:chicken"});
var n_syringeBat = <rftools:syringe>.withTag({mobName: "Bat", level: 10, mobId: "minecraft:bat"});
var n_syringeWasp = <rftools:syringe>.withTag({mobName: "Wasp", level: 10, mobId: "biomesoplenty:wasp"});
var n_syringeParrot = <rftools:syringe>.withTag({mobName: "Parrot", level: 10, mobId: "minecraft:parrot"});
var n_syringeGhast = <rftools:syringe>.withTag({mobName: "Ghast", level: 10, mobId: "minecraft:ghast"});
var n_syringeButterfly = <rftools:syringe>.withTag({mobName: "Butterfly", level: 10, mobId: "biomesoplenty:butterfly"});
var n_syringeSnowman = <rftools:syringe>.withTag({mobName: "Snow Golem", level: 10, mobId: "minecraft:snowman"});
var n_syringeMooshroom = <rftools:syringe>.withTag({mobName: "Mooshroom", level: 10, mobId: "minecraft:mooshroom"});
//Из обычного майна
var n_goldPickaxeEff3 = <minecraft:golden_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]});
var n_goldPickaxeEff5 = <minecraft:golden_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 32 as short}]});
var o_goldBlock = <ore:blockGold>;
var o_goldNugget = <ore:nuggetGold>;
var o_diamondBlock = <ore:blockDiamond>;
var dragonBreath = <minecraft:dragon_breath>;
var spectralArrow = <minecraft:spectral_arrow>;
var cobweb = <minecraft:web>;
var bucket = <minecraft:bucket>;
var o_enderPearl = <ore:gemEnderPearl>;
var o_prismarine = <ore:gemPrismarine>;
var o_netherQuartz = <ore:gemNetherQuartz>;
var o_lapis = <ore:gemLapis>;
var prismarineCrystals = <minecraft:prismarine_crystals>;
var emerald = <minecraft:emerald>;
var diamond = <minecraft:diamond>;
var glass_bottle = <minecraft:glass_bottle>;
var slabStone = <minecraft:stone_slab>;
var o_furnace = <ore:craftingFurnace>;
var o_coalBlock = <ore:blockCoal>;
var o_polishedAndesite = <ore:stoneAndesitePolished>;
var craftingTable = <minecraft:crafting_table>;
var o_redstoneTorch = <ore:craftingRedstoneTorch>;
var comparator = <minecraft:comparator>;
var chorusFruitPopped = <minecraft:chorus_fruit_popped>;
var o_redstone = <ore:dustRedstone>;
var redstoneDust = <minecraft:redstone>;
var o_redstoneBlock = <ore:blockRedstone>;
var chest = <ore:chest>;
var netherQuartz = <ore:gemNetherQuartz>;
var enderPearl = <minecraft:ender_pearl>;
var enderChest = <minecraft:ender_chest>;
//Книги с чарами
var n_enchantedBookEff1 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]});
var n_enchantedBookEff3 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]});
var n_enchantedBookFF1 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]});
var n_enchantedBookFF4 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]});
var n_enchantedBookLotS2 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 61 as short}]});
//Зельки
var n_splashRegen = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_regeneration"});
var n_splashRegen2 = <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"});
var n_splashSpeed = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_swiftness"});
var n_splashSpeed2 = <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"});
var n_splashWaterBreathing = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"});
var n_splashNightVision = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"});
var n_splashSlowness = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"});
var n_splashPoison = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_poison"});
var n_splashWeakness = <minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness"});
var n_splashNausea = <minecraft:splash_potion>.withTag({Potion: "minecraft:confusionLong"});
//Предметы из гречки
var o_tinySteelPipe = <ore:pipeTinySteel>;
var lvMachineCasing = <gregtech:machine_casing:1>;
var o_plateSteel = <ore:plateSteel>;
var o_plateStainlessSteel = <ore:plateStainlessSteel>;
var o_plateLapis = <ore:plateLapis>;
var o_plateNaquadahAlloy = <ore:plateNaquadahAlloy>;
var o_plateTitanium = <ore:plateTitanium>;
var o_plateWroughtIron = <ore:plateWroughtIron>;
var o_rodBrass = <ore:stickBrass>;
var o_basicCircuit = <ore:circuitBasic>;
var o_goodCircuit = <ore:circuitGood>;
var o_eliteCircuit = <ore:circuitElite>;
var o_masterCircuit = <ore:circuitUltimate>;
var mvRobotArm = <metaitem:robot.arm.mv>;
var hvRobotArm = <metaitem:robot.arm.hv>;
var lvEmitter = <metaitem:emitter.lv>;
var mvEmitter = <metaitem:emitter.mv>;
var hvEmitter = <metaitem:emitter.hv>;
var evEmitter = <metaitem:emitter.ev>;
var ivEmitter = <metaitem:emitter.iv>;
var luvEmitter = <metaitem:emitter.luv>;
var lvSensor = <metaitem:sensor.lv>;
var mvSensor = <metaitem:sensor.mv>;
var hvSensor = <metaitem:sensor.hv>;
var evSensor = <metaitem:sensor.ev>;
var ivSensor = <metaitem:sensor.iv>;
var evFieldGenerator = <metaitem:field.generator.ev>;
var ivFieldGenerator = <metaitem:field.generator.iv>;
var lvMotor = <metaitem:electric.motor.lv>;
var mvMotor = <metaitem:electric.motor.mv>;
var hvMotor = <metaitem:electric.motor.hv>;
var lvConveyor = <metaitem:conveyor.module.lv>;
var mvConveyor = <metaitem:conveyor.module.mv>;
var hvConveyor = <metaitem:conveyor.module.hv>;
var quantumEye = <metaitem:quantumeye>;
var o_lapotron = <ore:batteryMaster>;
var lapotronOrb = <metaitem:energy.lapotronicorb>;
var lapotronCluster = <metaitem:energy.lapotronicorb2>;
var o_steelGear = <ore:gearSteel>;
var o_ironGear = <ore:gearIron>;
var o_quartzite = <ore:gemQuartzite>;
var o_anyQuartz = <ore:craftingQuartz>;
var batterySodiumLV = <metaitem:battery.re.lv.sodium>;
var batterySodiumMV = <metaitem:battery.re.mv.sodium>;
var batterySodiumHV = <metaitem:battery.re.hv.sodium>;
var emeraldLens = <ore:lensEmerald>;
var o_smallSteelPipe = <ore:pipeSmallSteel>;
var plateGlass = <ore:plateGlass>;
var plateIron = <ore:plateIron>;
var circuitBasic = <ore:circuitBasic>;
var plateAluminium = <ore:plateAluminium>;
var circuitAdvanced = <ore:circuitAdvanced>;
var circuitData = <ore:circuitExtreme>;
var plateEnderium = <ore:plateEnderium>;
var plateNetherQuartz = <ore:plateNetherQuartz>;
var blockNetherQuartz = <minecraft:quartz_block>;
var certusQuartz =  <ore:gemCertusQuartz>;
var fluixCrystal = <ore:crystalFluix>;

//Удаление + скрытие
mods.jei.JEI.removeAndHide(<rftools:coalgenerator>);
mods.jei.JEI.removeAndHide(<rftoolscontrol:graphics_card>);
mods.jei.JEI.removeAndHide(<rftoolscontrol:network_card>);
mods.jei.JEI.removeAndHide(<rftoolscontrol:ram_chip>);
mods.jei.JEI.removeAndHide(<rftoolscontrol:advanced_network_card>);

//Удаление рецептов
recipes.removeByRecipeName("rftoolsdim:known_dimlet_9");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4_alt");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4_alt_alt");
recipes.removeByRecipeName("rftoolsdim:biome_absorber");
recipes.removeByRecipeName("rftoolsdim:material_absorber");
recipes.removeByRecipeName("rftoolsdim:feature_absorber");
recipes.removeByRecipeName("rftools:storage_control_module");
recipes.removeByRecipeName("rftools:button_module");
recipes.removeByRecipeName("rftools:storage_module_tablet");
recipes.removeByRecipeName("rftools:shape_card_pump_dirt");
recipes.removeByRecipeName("rftools:shape_card_quarry_dirt");
recipes.removeByRecipeName("rftools:shape_card_quarry_fortune_dirt");
recipes.removeByRecipeName("rftools:shape_card_quarry_silk_dirt");

//Удаление рецептов 2
val ItemsToRemove as IItemStack[] = [
	<rftools:builder>,
	<rftools:spawner>,
	<rftools:matter_beamer>,
	<rftools:block_protector>,
	<rftools:item_filter>,
	<rftools:endergenic>,
	<rftools:storage_scanner>,
	<rftoolsdim:rftoolsdim_manual>,
	<rftools:rftools_shape_manual>,
	<rftools:rftools_manual>,
	<rftoolscontrol:card_base>,
  <rftools:space_chamber_card>,
  <rftoolscontrol:interaction_module>,
  <rftoolscontrol:vectorart_module>,
  <rftoolscontrol:console_module>,
  <rftoolsdim:mediocre_efficiency_essence>,
  <rftools:shape_card:10>,
  <rftools:shape_card>,
  <rftools:fluidplus_module>,
  <rftools:inventoryplus_module>,
  <rftools:energyplus_module>,
  <rftoolscontrol:variable_module>,
  <rftools:generic_module>,
  <rftools:filter_module>,
  <rftools:oredict_module>,
  <rftools:orphaning_card>,
  <rftools:storage_module:6>,
  <rftoolsdim:phased_field_generator>,
  <rftools:redstone_module>,
  <rftools:clock_module>,
  <rftoolsdim:dimension_module>,
  <rftools:counterplus_module>,
  <rftools:counter_module>,
  <rftools:dump_module>,
  <rftools:elevator_button_module>,
  <rftools:computer_module>,
  <rftools:fluid_module>,
  <rftools:text_module>,
  <rftools:machineinformation_module>,
  <rftools:energy_module>,
  <rftools:inventory_module>,
  <rftools:security_card>,
  <rftools:relay>,
  <rftoolscontrol:processor>,
  <rftoolscontrol:tank>,
  <rftoolscontrol:programmer>,
  <rftoolscontrol:node>,
  <rftoolscontrol:workbench>,
  <rftoolscontrol:craftingstation>,
  <rftoolsdim:energy_extractor>,
  <rftoolsdim:dimension_builder>,
  <rftoolsdim:dimension_editor>,
  <rftoolsdim:dimension_enscriber>,
  <rftoolsdim:dimlet_workbench>,
  <rftoolsdim:dimensional_blank_block>,
  tier1StorageModule,
  tier2StorageModule,
  tier3StorageModule,
  dimensionalShard,
  infusedDiamond,
  infusedEnderpearl,
  smartWrench,
  syringe,
  machineFrame,
  machineBase,
  crafter1,
  crafter2,
  crafter3,
  matterReceiver,
  matterTransmitter,
  chargedPorter,
  advChargedPorter,
  dialingDevice,
  simpleDialingDevice,
  destinationAnalyzer,
  matterBooster,
  simpleCell,
  mediumCell,
  advCell,
  cellCard,
  environmentalController,
  booster,
  elevator,
  ecRegeneration,
  ecRegeneration3,
  ecSpeed,
  ecSpeed3,
  ecHaste,
  ecHaste3,
  ecSaturation,
  ecSaturation3,
  ecFeatherFalling,
  ecFeatherFallingPlus,
  ecFlight,
  peaceEssence,
  ecPeaceful,
  ecWaterBreathing,
  ecNightVision,
  ecBlindness,
  ecWeakness,
  ecPoison,
  ecSlowness,
  ecGlowing,
  ecLuck,
  ecNoTeleport,
  networkMonitor,
  rfMonitor,
  redstoneWire,
  liquidMonitor,
  redstoneReceiver,
  redstoneTransmitter,
  redstoneCounter,
  redstoneTimer,
  redstoneLogic,
  redstoneSequencer,
  redstoneSensor,
  redstoneInvChecker,
  modularStorage,
  remoteStorage,
  levelEmitter,
  screen,
  shieldProjector1,
  shieldProjector2,
  shieldProjector3,
  shieldProjector4,
  <rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}),
  <rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}),
  <rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}),
  <rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}),
  <rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}),
  <rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}),
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

//Удаление по названию рецепта
recipes.removeByRecipeName("rftools:shape_card_quarry");

//Базовая карточка из RFTools
assembler.recipeBuilder()
  .inputs(<ore:circuitBasic> * 2, <gregtech:meta_item_1:382> * 1)
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<rftoolscontrol:card_base>)
  .duration(1250).EUt(56).buildAndRegister(); 

//Шард из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<minecraft:prismarine_crystals>, <minecraft:chorus_fruit_popped> * 2])
	.fluidInputs([<liquid:neodymium> * 750])
	.outputs(<rftools:dimensional_shard> * 4)
	.duration(80).EUt(30).buildAndRegister();

//Крутой алмаз из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<rftools:dimensional_shard> * 8, <ore:gemDiamond>])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(<rftools:infused_diamond>)
	.duration(100).EUt(30).buildAndRegister();

//Крутой эндерперл из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<rftools:dimensional_shard> * 8, <ore:gemEnderPearl>])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(<rftools:infused_enderpearl>)
	.duration(100).EUt(30).buildAndRegister();

//Краснокаменный провод из RFTC
assembler.recipeBuilder()
	.inputs(<minecraft:redstone> * 3, <minecraft:stone_slab> * 3)
	.outputs(<rftools:wire_block> * 4)
	.duration(600).EUt(4).buildAndRegister();

//Процессор 1 лвл
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:382>, <ore:circuitBasic> * 2, <ore:wireGtSingleRedAlloy> * 4, <ore:componentResistor> * 16)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<rftoolscontrol:cpu_core_500>)
	.duration(500).EUt(32).buildAndRegister();

//Процессор 2 лвл
assembler.recipeBuilder()
	.inputs(<rftoolscontrol:cpu_core_500>, <ore:circuitGood> * 2, <ore:wireGtSingleAnnealedCopper> * 8, <ore:componentResistor> * 32)
   	.fluidInputs([<liquid:soldering_alloy> * 486])
	.outputs(<rftoolscontrol:cpu_core_1000>)
	.duration(400).EUt(128).buildAndRegister();

//Процессор 3 лвл
assembler.recipeBuilder()
	.inputs(<rftoolscontrol:cpu_core_1000>, <ore:circuitAdvanced> * 2, <ore:wireGtSingleElectrum> * 4, <ore:componentResistor> * 48)
  .fluidInputs([<liquid:soldering_alloy> * 624])
	.outputs(<rftoolscontrol:cpu_core_2000>)
	.duration(300).EUt(256).buildAndRegister();

//Рецепты
//2x2 крафты
//Ключ
recipes.addShaped(smartWrench, [[null, <ore:craftingToolWrench>], [o_lapis, null]]);
recipes.addShapeless(redstoneReceiver, [redstoneReceiver]);

//3х3
//Хранилище 1 уровня модуль
recipes.addShaped(tier1StorageModule, [
  [null, <ore:chest>, null], 
  [o_plateSteel, o_plateWroughtIron, o_plateSteel], 
  [netherQuartz, o_basicCircuit, netherQuartz]]);

//Хранилище 2 уровня модуль
recipes.addShaped(tier2StorageModule, [
  [null, <ore:chest>, null], 
  [plateAluminium, tier1StorageModule.marked("module"), plateAluminium], 
  [certusQuartz, o_goodCircuit, certusQuartz]]);

//Хранилище 3 уровня модуль
recipes.addShaped(tier3StorageModule, [
[null, <ore:chest>, null], 
[o_plateStainlessSteel, tier2StorageModule.marked("module"), o_plateStainlessSteel], 
[fluixCrystal, <ore:circuitAdvanced>, fluixCrystal]]);

//Шприц
recipes.addShaped(syringe, [
	[o_smallSteelPipe, null, null],
	[null, o_smallSteelPipe, null],
	[null, null, glass_bottle]]);

//Основной блок
recipes.addShaped(machineFrame, [
	[o_plateWroughtIron, <ore:plateGold>, o_plateWroughtIron],
	[<ore:wireGtSingleCopper>, lvMachineCasing, <ore:wireGtSingleCopper>]]);

//Основная база
recipes.addShaped(machineBase, [
	[o_plateWroughtIron, <ore:craftingToolHardHammer>, o_plateWroughtIron],
	[slabStone, slabStone, slabStone]]);

//Создатель 1
recipes.addShaped(crafter1, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, machineFrame, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);

//Создатель 2
recipes.addShaped(crafter2, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, crafter1, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);

//Создатель 3
recipes.addShaped(crafter3, [
	[mvRobotArm, craftingTable, mvMotor],
	[o_goodCircuit, crafter2, o_goodCircuit],
	[<ore:plateAluminium>, craftingTable, <ore:plateAluminium>]]);
  
//Ресивер материи
recipes.addShaped(matterReceiver, [
	[o_plateNaquadahAlloy, evFieldGenerator, o_plateNaquadahAlloy],
	[evSensor, machineFrame, evSensor],
	[o_eliteCircuit, evEmitter, o_eliteCircuit]]);

//Трансмитер материи	
recipes.addShaped(matterTransmitter, [
	[o_plateNaquadahAlloy, evFieldGenerator, o_plateNaquadahAlloy],
	[evEmitter, machineFrame, evEmitter],
	[o_eliteCircuit, evSensor, o_eliteCircuit]]);

//Заряженный портер
recipes.addShaped(chargedPorter, [
	[o_plateNaquadahAlloy, o_lapotron, o_plateNaquadahAlloy],
	[evFieldGenerator, infusedDiamond, evFieldGenerator],
	[ivSensor, o_lapotron, ivEmitter]]);
  
//Улучшенный заряженный портер	
recipes.addShaped(advChargedPorter, [
	[o_masterCircuit, lapotronOrb, o_masterCircuit],
	[ivFieldGenerator, chargedPorter, ivFieldGenerator],
	[o_masterCircuit, lapotronOrb, o_masterCircuit]]);

//Устройство набора номера
recipes.addShaped(dialingDevice, [
	[o_plateTitanium, evEmitter, o_plateTitanium],
	[evSensor, machineFrame, evSensor],
	[o_plateTitanium, o_masterCircuit, o_plateTitanium]]);

//Простое устройство набора номера	
recipes.addShaped(simpleDialingDevice, [
	[o_plateTitanium, evEmitter, o_plateTitanium],
	[comparator, machineBase, o_eliteCircuit]]);

//Анализатор места назначения	
recipes.addShaped(destinationAnalyzer, [
	[o_plateTitanium, o_eliteCircuit, o_plateTitanium],
	[o_eliteCircuit, machineFrame, o_eliteCircuit],
	[o_plateTitanium, evSensor, o_plateTitanium]]);

//Ускоритель материи	
recipes.addShaped(matterBooster, [
	[o_plateTitanium, ivFieldGenerator, o_plateTitanium],
	[ivEmitter, machineFrame, ivEmitter],
	[o_plateTitanium, lapotronOrb, o_plateTitanium]]);

//Простая ячейка
recipes.addShaped(simpleCell, [
	[o_redstoneBlock, batterySodiumLV, o_redstoneBlock],
	[o_netherQuartz, machineFrame, o_netherQuartz],
	[o_redstoneBlock, diamond, o_redstoneBlock]]);

//Средняя ячейка	
recipes.addShaped(mediumCell, [
	[o_redstone, batterySodiumMV, o_redstone],
	[o_prismarine, simpleCell, o_prismarine],
	[o_redstone, emerald, o_redstone]]);

//Средняя ячейка 2	
recipes.addShaped(mediumCell, [
	[o_redstoneBlock, batterySodiumMV, o_redstoneBlock],
	[o_prismarine, machineFrame, o_prismarine],
	[o_redstoneBlock, emerald, o_redstoneBlock]]);

//Улучшенная ячейка	
recipes.addShaped(advCell, [
	[o_redstoneBlock, batterySodiumHV, o_redstoneBlock],
	[infusedDiamond, mediumCell, infusedDiamond],
	[o_redstoneBlock, infusedDiamond, o_redstoneBlock]]);

//Ячеечная карта	
recipes.addShaped(cellCard, [
	[o_quartzite, o_rodBrass, o_quartzite],
	[o_rodBrass, o_basicCircuit, o_rodBrass],
	[o_quartzite, o_rodBrass, o_quartzite]]);

//Лифт
recipes.addShaped(elevator, [
	[o_ironGear, o_basicCircuit, o_ironGear],
	[lvMotor, machineFrame, lvMotor],
	[o_ironGear, o_basicCircuit, o_ironGear]]);

//Мировой контроллер
recipes.addShaped(environmentalController, [
	[evEmitter, evFieldGenerator, evEmitter],
	[infusedDiamond, machineFrame, infusedDiamond],
	[o_plateTitanium, o_plateTitanium, o_plateTitanium]]);

//Ускоритель
recipes.addShaped(booster, [
	[lvEmitter, emeraldLens, lvEmitter],
	[dimensionalShard, machineFrame, dimensionalShard],
	[o_plateStainlessSteel, o_plateStainlessSteel, o_plateStainlessSteel]]);

//Модуль регенерации 1
recipes.addShaped(ecRegeneration, [
	[null, n_syringeIronGolem.giveBack(syringe), null],
	[n_splashRegen.giveBack(<minecraft:glass_bottle>), <ore:plateGold>, n_splashRegen.giveBack(<minecraft:glass_bottle>)],
	[null, o_goodCircuit, null]]);

//Модуль регенерации 3
recipes.addShaped(ecRegeneration3, [
	[n_syringePolarBear.giveBack(syringe), n_syringeIronGolem.giveBack(syringe), n_syringePolarBear.giveBack(syringe)],
	[n_splashRegen2.giveBack(<minecraft:glass_bottle>), ecRegeneration, n_splashRegen2.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль скорости 1	
recipes.addShaped(ecSpeed, [
	[null, n_syringeHorse.giveBack(syringe), null],
	[n_splashSpeed.giveBack(<minecraft:glass_bottle>), <ore:plateGold>, n_splashSpeed.giveBack(<minecraft:glass_bottle>)],
	[null, o_goodCircuit, null]]);

//Модуль скорости 3		
recipes.addShaped(ecSpeed3, [
	[n_syringeZombieHorse.giveBack(syringe), n_syringeHorse.giveBack(syringe), n_syringeZombieHorse.giveBack(syringe)],
	[n_splashSpeed2.giveBack(<minecraft:glass_bottle>), ecSpeed, n_splashSpeed2.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль скорость копания 1	
recipes.addShaped(ecHaste, [
	[null, n_goldPickaxeEff3, null],
	[n_enchantedBookEff1, <ore:plateGold>, n_enchantedBookEff1],
	[null, o_goodCircuit, null]]);

//Модуль скорость копания 3	
recipes.addShaped(ecHaste3, [
	[n_syringeRabbit.giveBack(syringe), n_goldPickaxeEff5, n_syringeRabbit.giveBack(syringe)],
	[n_enchantedBookEff3, ecHaste, n_enchantedBookEff3],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль сопротивление 1	
recipes.addShaped(ecSaturation, [
	[null, n_syringeZombie.giveBack(syringe), null],
	[<ore:foodPizza>, <ore:plateGold>, <ore:foodPizza>],
	[null, o_goodCircuit, null]]);

//Модуль сопротивление 2	
recipes.addShaped(ecSaturation3, [
	[n_syringeAngryZombie.giveBack(syringe), n_syringeZombie.giveBack(syringe), n_syringeAngryZombie.giveBack(syringe)],
	[<ore:foodMeatfeastpizza>, ecSaturation, <ore:foodMeatfeastpizza>],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль легкого подения 1	
recipes.addShaped(ecFeatherFalling, [
	[null, n_syringeChicken.giveBack(syringe), null],
	[n_enchantedBookFF1, <ore:plateGold>, n_enchantedBookFF1],
	[null, o_goodCircuit, null]]);

//Модуль легкого подения 3		
recipes.addShaped(ecFeatherFallingPlus, [
	[n_syringeBat.giveBack(syringe), n_syringeChicken.giveBack(syringe), n_syringeBat.giveBack(syringe)],
	[n_enchantedBookFF4, ecFeatherFalling, n_enchantedBookFF4],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль полет	
recipes.addShaped(ecFlight, [
	[n_syringeBat.giveBack(syringe), n_syringeGhast.giveBack(syringe), n_syringeParrot.giveBack(syringe)],
	[dragonBreath, <ore:plateGold>, dragonBreath],
	[n_syringeWasp.giveBack(syringe), o_eliteCircuit, n_syringeButterfly.giveBack(syringe)]]);

//Модуль полета 3	
recipes.addShaped(peaceEssence, [
	[n_syringeIronGolem.giveBack(syringe), n_syringeSnowman.giveBack(syringe), n_syringeMooshroom.giveBack(syringe)],
	[n_syringeWolf.giveBack(syringe), infusedDiamond, n_syringeOcelot.giveBack(syringe)],
	[n_syringeDonkey.giveBack(syringe), n_syringeGuardian.giveBack(syringe), n_syringeBat.giveBack(syringe)]]);

//Модуль мирности
recipes.addShaped(ecPeaceful, [
	[null, peaceEssence, null],
	[<ore:itemSkull>, <ore:plateGold>, <ore:itemSkull>],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль свячения
recipes.addShaped(ecGlowing, [
	[spectralArrow, n_syringeBlaze, spectralArrow],
	[spectralArrow, <ore:plateGold>, spectralArrow],
	[spectralArrow, o_goodCircuit, spectralArrow]]);

//Модуль везения	
recipes.addShaped(ecLuck, [
	[null, n_syringeShulker, null],
	[n_enchantedBookLotS2, <ore:plateGold>, n_enchantedBookLotS2],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль отмены телепортации	
recipes.addShaped(ecNoTeleport, [
	[n_syringeEnderman, n_syringeEndermite, n_syringeEnderman],
	[cobweb, <minecraft:obsidian>, cobweb],
	[null, <ore:circuitAdvanced>, null]]);

//Монитор сети
recipes.addShaped(networkMonitor, [
	[<ore:plateIron>, lvSensor, <ore:plateIron>],
	[<ore:plateIron>, o_redstone, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

//Монитор энергии
recipes.addShaped(rfMonitor, [
	[null, lvSensor, null],
	[o_redstone, machineFrame, o_redstone],
	[null, o_basicCircuit, null]]);

//Жидкостный монитор
recipes.addShaped(liquidMonitor, [
	[null, lvSensor, null],
	[bucket, machineFrame, bucket],
	[null, o_basicCircuit, null]]);

//Редстоуновые провода
recipes.addShaped(redstoneWire * 4, [
	[null, <ore:craftingToolHardHammer>, null],
	[o_redstone, o_redstone, o_redstone],
	[slabStone, slabStone, slabStone]]);

//Редстоуновый ресивер
recipes.addShaped(redstoneReceiver, [
	[null, mvSensor, null],
	[null, redstoneWire, null],
	[null, o_enderPearl, null]]);

//Редстоуновый трансмиттер
recipes.addShaped(redstoneTransmitter, [
	[null, mvEmitter, null],
	[null, redstoneWire, null],
	[null, o_enderPearl, null]]);

//Редстоуновый указатель
recipes.addShaped(redstoneCounter, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_redstone, null]]);

//Редстоуновый таймер
recipes.addShaped(redstoneTimer, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_goldNugget, null]]);

//Красная логика
recipes.addShaped(redstoneLogic, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_anyQuartz, null]]);

//Еще сенсор красного камня
recipes.addShaped(redstoneSequencer, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, o_redstoneTorch, null]]);

//Сенсор красного камня
recipes.addShaped(redstoneSensor, [
	[null, lvSensor, null],
	[null, redstoneWire, null],
	[null, o_basicCircuit, null]]);

//Проверка красного камня
recipes.addShaped(redstoneInvChecker, [
	[null, <ore:circuitPrimitive>, null],
	[null, redstoneWire, null],
	[null, comparator, null]]);

//Модульное хранилище
recipes.addShaped(modularStorage, [
	[plateAluminium, chest, plateAluminium], 
	[netherQuartz, machineFrame, netherQuartz], 
	[plateAluminium, circuitAdvanced, plateAluminium]]);

//Удаленное хранилище
recipes.addShaped(remoteStorage, [
	[plateEnderium, enderChest, plateEnderium], 
	[netherQuartz, machineFrame, netherQuartz], 
	[plateEnderium, circuitData, plateEnderium]]);

//Переключатель уровня
recipes.addShaped(levelEmitter, [
	[null, enderPearl, null],
	[null, redstoneWire, null],
	[null, comparator, null]]);

//Экран
recipes.addShaped(screen, [
	[plateGlass, plateGlass, plateGlass],
	[plateIron, machineBase, plateIron],
	[circuitBasic, plateIron, circuitBasic]]);

//Строитель
recipes.addShaped(<rftools:builder>, [
  [hvRobotArm, <minecraft:ender_pearl>, hvRobotArm], 
  [hvSensor, <rftools:machine_frame>, hvSensor], 
  [hvConveyor, <ore:craftingToolWrench>, hvConveyor]]);

//Генератор щита 1
recipes.addShaped(shieldProjector1, [
  [<minecraft:gold_ingot>, hvEmitter, <minecraft:gold_ingot>], 
  [<minecraft:redstone>, <rftools:machine_frame>, <minecraft:redstone>], 
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//Генератор щита 2
recipes.addShaped(shieldProjector2, [
  [<minecraft:redstone_block>, evEmitter, <minecraft:redstone_block>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<minecraft:redstone_block>, <minecraft:obsidian>, <minecraft:redstone_block>]]);

//Генератор щита 3
recipes.addShaped(shieldProjector3, [
  [<rftools:dimensional_shard>, ivEmitter, <rftools:dimensional_shard>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<rftools:dimensional_shard>, <minecraft:obsidian>, <rftools:dimensional_shard>]]);

//Генератор щита 4
recipes.addShaped(shieldProjector4, [
  [<minecraft:nether_star>, luvEmitter, <rftools:dimensional_shard>], 
  [<minecraft:obsidian>, <rftools:machine_frame>, <minecraft:obsidian>], 
  [<rftools:dimensional_shard>, <minecraft:obsidian>, <minecraft:nether_star>]]);

//Спавнер
recipes.addShaped(<rftools:spawner>, [
  [<minecraft:redstone>, mvEmitter, <minecraft:redstone>], 
  [<minecraft:ender_pearl>, <rftools:machine_frame>, emeraldLens], 
  [<minecraft:redstone>, mvEmitter, <minecraft:redstone>]]);

//Метка материи
recipes.addShaped(<rftools:matter_beamer>, [
  [<minecraft:redstone_block>, lvEmitter, <minecraft:redstone_block>], 
  [<minecraft:glowstone>, <rftools:machine_frame>, <minecraft:glowstone>], 
  [<minecraft:redstone_block>, <minecraft:glowstone>, <minecraft:redstone_block>]]);

//Защита блоков  
recipes.addShaped(<rftools:block_protector>, [
  [hvEmitter, <rftools:shield_template_block>, hvEmitter], 
  [<rftools:shield_template_block>, <rftools:machine_frame>, <rftools:shield_template_block>], 
  [hvSensor, <rftools:shield_template_block>, hvSensor]]);

//Фильтр предметов
recipes.addShaped(<rftools:item_filter>, [
  [<minecraft:paper>, <ore:chest>, <minecraft:paper>], 
  [lvConveyor, <rftools:machine_base>, lvMotor], 
  [<minecraft:paper>, <minecraft:redstone_torch>, <minecraft:paper>]]);


//Энерго-фигня
recipes.addShaped(<rftools:endergenic>, [
  [<minecraft:diamond>, <minecraft:ender_pearl>, <minecraft:diamond>], 
  [<minecraft:ender_pearl>, <rftools:machine_frame>, <minecraft:ender_pearl>], 
  [<minecraft:diamond>, lvEmitter, <minecraft:diamond>]]);

//Сканер хранения
recipes.addShaped(<rftools:storage_scanner>, [
  [<ore:cableGtDoubleRedAlloy>, mvSensor, <ore:cableGtSingleGold>], 
  [<ore:plateGold>, <rftools:machine_frame>, <ore:plateGold>], 
  [<ore:cableGtSingleGold>, <minecraft:ender_pearl>, <ore:cableGtDoubleRedAlloy>]]);

//Карьерный шаблон карты
recipes.addShaped(quarry_shape_card, [
  [<minecraft:redstone>, <ore:toolHeadPickaxeDiamond>, <minecraft:redstone>], 
  [<ore:plateIron>, <rftools:shape_card>, <ore:plateIron>], 
  [<minecraft:redstone>, <ore:toolHeadShovelDiamond>, <minecraft:redstone>]]);

//Модуль подводного дыхания	
recipes.addShaped(ecWaterBreathing, [
	[null, n_syringeGuardian.giveBack(syringe), null],
	[n_splashWaterBreathing.giveBack(<minecraft:glass_bottle>), <ore:plateGold>, n_splashWaterBreathing.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль ночного зрения	
recipes.addShaped(ecNightVision, [
	[null, n_syringeWitch.giveBack(syringe), null],
	[n_splashNightVision.giveBack(<minecraft:glass_bottle>), <ore:plateGold>, n_splashNightVision.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль слепоты	
recipes.addShaped(ecBlindness, [
	[null, n_syringeSquid.giveBack(syringe), null],
	[n_splashNausea.giveBack(<minecraft:glass_bottle>), <minecraft:obsidian>, n_splashNausea.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль слабости	
recipes.addShaped(ecWeakness, [
	[null, n_syringeBat.giveBack(syringe), null],
	[n_splashWeakness.giveBack(<minecraft:glass_bottle>), <minecraft:obsidian>, n_splashWeakness.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль отправления	
recipes.addShaped(ecPoison, [
	[null, n_syringeCaveSpider.giveBack(syringe), null],
	[n_splashPoison.giveBack(<minecraft:glass_bottle>), <minecraft:obsidian>, n_splashPoison.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Модуль медлительности	
recipes.addShaped(ecSlowness, [
	[null, n_syringeSlime.giveBack(syringe), null],
	[n_splashSlowness.giveBack(<minecraft:glass_bottle>), <minecraft:obsidian>, n_splashNightVision.giveBack(<minecraft:glass_bottle>)],
	[null, <ore:circuitAdvanced>, null]]);

//Димлеты
//Default
recipes.addShaped(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:comparator>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Single
recipes.addShaped(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:repeater>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

//Digit 0-9
recipes.addShaped(<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:craftingRedstoneTorch>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Effect
recipes.addShaped(<rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:apple>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Feature
recipes.addShaped(<rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:string>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Water
recipes.addShaped(<rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:bucket>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Mob
recipes.addShaped(<rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:rotten_flesh>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

//Time
recipes.addShaped(<rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:clock>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

//Material
recipes.addShaped(<rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dirt>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Bone
recipes.addShaped(<rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:bone>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Snow
recipes.addShaped(<rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dustSnow>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Void
recipes.addShaped(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:blockBrick>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Flat
recipes.addShaped(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:blockBrick>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

//Sky dimlet 1
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.day"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dustGlowstone>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Sky dimlet 2
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.night"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:gemCoal>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Sky dimlet 3
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:feather>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

//Рэле
recipes.addShaped(<rftools:relay>, [
  [<ore:plateGold>, <ore:cableGtSingleGold>, <ore:plateGold>], 
  [<ore:plateGold>, <rftools:machine_frame>, <ore:plateGold>], 
  [<ore:plateGold>, <ore:cableGtSingleGold>, <ore:plateGold>]]);

//Процессор
recipes.addShaped(<rftoolscontrol:processor>, [
  [<ore:plateTitanium>, <ore:cableGtDoubleRedAlloy>, <ore:plateTitanium>], 
  [<rftoolscontrol:card_base>, <rftools:machine_frame>, <rftoolscontrol:card_base>], 
  [<ore:plateTitanium>, <ore:cableGtDoubleRedAlloy>, <ore:plateTitanium>]]);

//Бак
recipes.addShaped(<rftoolscontrol:tank>, [
  [<rftools:machine_frame>, <ore:plateSteel>, <ore:plateSteel>], 
  [<ore:plateSteel>, <gregtech:machine:814>, <gregtech:machine:814>], 
  [<ore:plateSteel>, <gregtech:machine:814>, <ore:plateSteel>]]);

//Программист
recipes.addShaped(<rftoolscontrol:programmer>, [
  [<ore:plateSteel>, <rftools:screen>, <ore:plateSteel>], 
  [<ore:cableGtSingleGold>, <rftools:machine_frame>, <ore:cableGtSingleGold>], 
  [<ore:circuitAdvanced>, <rftoolscontrol:cpu_core_2000>, <ore:circuitAdvanced>]]);

//Нода
recipes.addShaped(<rftoolscontrol:node>, [
  [<appliedenergistics2:wireless_access_point>, <ore:cableGtSingleGold>, <gregtech:meta_item_1:32691>], 
  [<ore:cableGtDoubleRedAlloy>, <rftools:machine_frame>, <ore:cableGtDoubleRedAlloy>], 
  [<ore:plateGold>, <rftoolscontrol:card_base>, <ore:plateGold>]]);

//Верстак
recipes.addShaped(<rftoolscontrol:workbench>, [
  [<ore:plateVanadiumSteel>, <ore:craftingTableWood>, <ore:plateVanadiumSteel>], 
  [<ore:plateVanadiumSteel>, <rftools:machine_frame>, <ore:plateVanadiumSteel>], 
  [<ore:plateVanadiumSteel>, <ore:chestWood>, <ore:plateVanadiumSteel>]]);

//Верстак
recipes.addShaped(<rftoolscontrol:craftingstation>, [
  [<ore:cableGtSingleGold>, <rftoolscontrol:card_base>, <ore:cableGtSingleGold>], 
  [<rftoolscontrol:workbench>, <rftools:machine_frame>, <rftoolscontrol:workbench>], 
  [<ore:cableGtSingleGold>, <rftoolscontrol:card_base>, <ore:cableGtSingleGold>]]);

//Извлекатель энергии
recipes.addShaped(<rftoolsdim:energy_extractor>, [
  [<ore:plateEnderium>, <rftools:dimensional_shard>, <ore:cableGtSingleGold>], 
  [<appliedenergistics2:energy_acceptor>, <rftools:machine_frame>, <appliedenergistics2:energy_cell>], 
  [<ore:cableGtSingleGold>, <rftools:dimensional_shard>, <ore:plateEnderium>]]);

//Строитель измерений
recipes.addShaped(<rftoolsdim:dimension_builder>, [
  [<ore:cableGtOctalTungsten>, <galacticraftplanets:basic_item_venus>, <ore:cableGtOctalTungsten>], 
  [<gregtech:meta_item_1:209>, <rftools:machine_frame>,<gregtech:meta_item_1:209>], 
  [<gregtech:meta_item_1:209>, <gregtech:machine:1021>, <gregtech:meta_item_1:209>]]);

//Изменитель измерений
recipes.addShaped(<rftoolsdim:dimension_editor>, [
  [<gregtech:meta_item_1:224>, <ore:gemExquisiteEmerald>, <gregtech:meta_item_1:224>], 
  [<ore:circuitUltimate>, <rftools:machine_frame>, <ore:circuitUltimate>], 
  [<ore:cableGtQuadrupleOsmium>, <gregtech:meta_item_1:239>, <ore:cableGtQuadrupleOsmium>]]);

//Высекатель измерений
recipes.addShaped(<rftoolsdim:dimension_enscriber>, [
  [<ore:cableGtSingleGold>, <minecraft:writable_book>, <ore:cableGtSingleGold>], 
  [<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}), <gregtech:machine:563>, <rftoolsdim:known_dimlet:9>.withTag({dkey: "0"})], 
  [<ore:plateIronMagnetic>, <ore:plateIronMagnetic>, <ore:plateIronMagnetic>]]);

//Верстак димлетов
recipes.addShaped(<rftoolsdim:dimlet_workbench>, [
  [<ore:plateGold>, <rftoolsdim:dimlet_base>, <ore:plateGold>], 
  [<ore:craftingTableWood>, <rftools:machine_frame>, <ore:craftingTableWood>], 
  [<ore:plateGold>, <ore:cableGtDoubleRedAlloy>, <ore:plateGold>]]);

//Пустой блок измерения
recipes.addShaped(<rftoolsdim:dimensional_blank_block>, [
  [<ore:stone>, <ore:stone>, <ore:stone>], 
  [<ore:stone>, <rftools:dimensional_shard>, <ore:stone>], 
  [<ore:stone>, <ore:stone>, <ore:stone>]]);

//Абсорбер биомов
recipes.addShaped(<rftoolsdim:biome_absorber>, [
  [<ore:dirt>, <ore:wool>, <ore:treeSapling>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:treeSapling>, <ore:wool>, <ore:dirt>]]);

//Абсорбер материалов
recipes.addShaped(<rftoolsdim:material_absorber>, [
  [<ore:dirt>, <ore:wool>, <ore:cobblestone>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:sand>, <ore:wool>, <ore:cobblestone>]]);

//Абсорбер вещей
recipes.addShaped(<rftoolsdim:feature_absorber>, [
  [<ore:plateDiamond>, <ore:wool>, <ore:plateEmerald>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:plateEmerald>, <ore:wool>, <ore:plateDiamond>]]);

//Фазовый генератор поля
recipes.addShaped(<rftoolsdim:phased_field_generator>, [
  [<gregtech:meta_item_1:208>, <ore:cableGtDoubleBlackSteel>, <gregtech:meta_item_1:208>], 
  [<rftools:dimensional_shard>, <rftools:machine_frame>, <rftools:dimensional_shard>], 
  [<gregtech:meta_item_1:208>, <ore:cableGtDoubleBlackSteel>, <gregtech:meta_item_1:208>]]);

//Редстоун модуль
recipes.addShaped(<rftools:redstone_module>, [
  [null, <minecraft:repeater>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Часовой модуль
recipes.addShaped(<rftools:clock_module>, [
  [null, <minecraft:clock>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль измерений
recipes.addShaped(<rftoolsdim:dimension_module>, [
  [null, <minecraft:ender_pearl>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Указатель плюса модуль
recipes.addShaped(<rftools:counterplus_module>, [
  [null, <appliedenergistics2:material:9>, null], 
  [<ore:plateGold>, <rftools:counter_module>, <ore:plateGold>], 
  [null, <appliedenergistics2:material:9>, null]]);

//Указательный модуль
recipes.addShaped(<rftools:counter_module>, [
  [null, <minecraft:comparator>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль дампа
recipes.addShaped(<rftools:dump_module>, [
  [null, <ore:ButtonWood>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль лифта
recipes.addShaped(<rftools:elevator_button_module>, [
  [<ore:ButtonStone>, <ore:ButtonStone>, <ore:ButtonStone>], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Компьютерный модуль
recipes.addShaped(<rftools:computer_module>, [
  [null, <ore:plateCertusQuartz>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Жидкостный модуль
recipes.addShaped(<rftools:fluid_module>, [
  [null, <minecraft:bucket>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Текстовый модуль
recipes.addShaped(<rftools:text_module>, [
  [null, <ore:paper>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Информация о машине модуль
recipes.addShaped(<rftools:machineinformation_module>, [
  [null, <gregtech:machine:2>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Энерго модуль
recipes.addShaped(<rftools:energy_module>, [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль инвентаря
recipes.addShaped(<rftools:inventory_module>, [
  [null, <ore:chestWood>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль безопасности
recipes.addShaped(<rftools:security_card>, [
  [null, <ore:plateSilicon>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:paper>, null]]);

//Модуль контроля пространства
recipes.addShaped(<rftools:storage_control_module>, [
  [null, <ore:craftingTableWood>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль кнопки
recipes.addShaped(<rftools:button_module>, [
  [null, <ore:ButtonStone>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль жикости+
recipes.addShaped(<rftools:fluidplus_module>, [
  [null, <appliedenergistics2:material:9>, null], 
  [<ore:plateGold>, <rftools:fluid_module>, <ore:plateGold>], 
  [null, <appliedenergistics2:material:9>, null]]);

//Модуль инвернтарь+
recipes.addShaped(<rftools:inventoryplus_module>, [
  [null, <appliedenergistics2:material:9>, null], 
  [<ore:plateGold>, <rftools:inventory_module>, <ore:plateGold>], 
  [null, <appliedenergistics2:material:9>, null]]);

//Модуль энергия+
recipes.addShaped(<rftools:energyplus_module>, [
  [null, <appliedenergistics2:material:9>, null], 
  [<ore:plateGold>, <rftools:energy_module>, <ore:plateGold>], 
  [null, <appliedenergistics2:material:9>, null]]);

//Модуль вариативность
recipes.addShaped(<rftoolscontrol:variable_module>, [
  [null, <rftoolscontrol:card_base>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль генерик
recipes.addShaped(<rftools:generic_module>, [
  [null, <ore:paper>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:paper>, null]]);

//Модуль фильтра
recipes.addShaped(<rftools:filter_module>, [
  [null, <ore:hopper>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:paper>, null]]);

//Модуль ордикта
recipes.addShaped(<rftools:oredict_module>, [
  [null, <ore:oreIron>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:paper>, null]]);

//Модуль ?
recipes.addShaped(<rftools:orphaning_card>, [
  [null, <minecraft:book>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:paper>, null]]);

//Модуль хранения
recipes.addShaped(<rftools:storage_module:6>, [
  [<minecraft:ender_pearl>, <ore:chestWood>, <minecraft:ender_pearl>], 
  [<ore:plateGold>, <ore:plateIron>, <ore:plateGold>], 
  [<ore:plateCertusQuartz>, <ore:cableGtSingleRedAlloy>, <ore:plateCertusQuartz>]]);

//Модуль хранения таблет
recipes.addShaped(<rftools:storage_module_tablet>, [
  [<ore:plateGold>, <ore:plateEmerald>, <ore:plateGold>], 
  [<ore:cableGtQuadrupleRedAlloy>, <ore:gemExquisiteCertusQuartz>, <ore:cableGtQuadrupleRedAlloy>], 
  [<ore:plateGold>, <ore:cableGtQuadrupleRedAlloy>, <ore:plateGold>]]);

//Модуль космической комнаты карта
recipes.addShaped(<rftools:space_chamber_card>, [
  [null, <ore:ingotBrick>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:ingotBrick>, null]]);

//Модуль взаимодействия
recipes.addShaped(<rftoolscontrol:interaction_module>, [
  [<minecraft:stone_pressure_plate>, <rftoolscontrol:card_base>, <minecraft:stone_pressure_plate>], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

//Модуль вектора
recipes.addShaped(<rftoolscontrol:vectorart_module>, [
  [<ore:paneGlass>, <rftoolscontrol:card_base>, <ore:paneGlass>], 
  [<ore:plateGlowstone>, <ore:plateGold>, <ore:plateGlowstone>], 
  [<ore:paneGlass>, <ore:dyeBlack>, <ore:paneGlass>]]);

//Модуль контроля
recipes.addShaped(<rftoolscontrol:console_module>, [
  [<ore:paneGlass>, <rftoolscontrol:card_base>, <ore:paneGlass>], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paneGlass>, <ore:dyeBlack>, <ore:paneGlass>]]);

//Модуль эффективной эссенции
recipes.addShaped(<rftoolsdim:mediocre_efficiency_essence>, [
  [null, <tfc:metal/pick/steel>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]}), null], 
  [<ore:gemEnderEye>, <minecraft:ghast_tear>, <ore:gemEnderEye>], 
  [null, <ore:gemEnderEye>, null]]);

//Модуль какой-то карты-10
recipes.addShaped(<rftools:shape_card:10>, [
  [<ore:cableGtSingleRedAlloy>, <minecraft:water_bucket>, <ore:cableGtSingleRedAlloy>], 
  [<ore:plateIron>, <rftools:shape_card>, <ore:plateIron>], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:lava_bucket>, <ore:cableGtSingleRedAlloy>]]);

//Модуль какой-то карты
recipes.addShaped(<rftools:shape_card>, [
  [<ore:paper>, <ore:ingotBrick>, <ore:paper>], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:ingotBrick>, <ore:paper>]]);

//Модуль какой-то карты-8
recipes.addShaped(<rftools:shape_card:8>, [
  [<ore:dirt>, <ore:dirt>, <ore:dirt>], 
  [<ore:dirt>, <rftools:shape_card:9>, <ore:dirt>], 
  [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

//Модуль какой-то карты-2
recipes.addShaped(<rftools:shape_card:2>, [
  [<ore:dirt>, <ore:dirt>, <ore:dirt>], 
  [<ore:dirt>, <rftools:shape_card:5>, <ore:dirt>], 
  [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

//Модуль какой-то карты-4
recipes.addShaped(<rftools:shape_card:4>, [
  [<ore:dirt>, <ore:dirt>, <ore:dirt>], 
  [<ore:dirt>, <rftools:shape_card:7>, <ore:dirt>], 
  [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

//Модуль какой-то карты-3
recipes.addShaped(<rftools:shape_card:3>, [
  [<ore:dirt>, <ore:dirt>, <ore:dirt>], 
  [<ore:dirt>, <rftools:shape_card:3>, <ore:dirt>], 
  [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);