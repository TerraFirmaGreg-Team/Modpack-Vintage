import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Массивы

val TFCMushrooms = <tfc:plants/amanita> | <tfc:plants/porcini>;


// --- Добавление рецептов

// Регистрация металла
ItemRegistry.registerItemMetal(<minecraft:iron_bars>, "WROUGHT_IRON", 18, true);
ItemRegistry.registerItemMetal(<minecraft:bucket>, "BLUE_STEEL", 144, true);

// Register Food Stats for TFC
ItemRegistry.registerFood(<minecraft:mushroom_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 0, 0);
ItemRegistry.registerFood(<minecraft:rabbit_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 1.0, 0);
ItemRegistry.registerFood(<minecraft:beetroot_soup>, 4, 22, 2.0, 2.0, 0, 3.0, 0, 0, 0);

// Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);

// Водная хрень
recipes.addShapeless("tfg/vanilla/prismarine/block_raw_0", <minecraft:prismarine>, [<minecraft:prismarine_shard>, <minecraft:prismarine_shard>, <minecraft:prismarine_shard>, <minecraft:prismarine_shard>]);
recipes.addShapeless("tfg/vanilla/prismarine/block_raw_1", <minecraft:prismarine>, [<ore:blockQuartz>, <ore:dyeCyan>]);
recipes.addShapeless("tfg/vanilla/prismarine/bricks", <minecraft:prismarine:1> * 4, [<minecraft:prismarine>, <minecraft:prismarine>, <minecraft:prismarine>, <minecraft:prismarine>]);
recipes.addShapeless("tfg/vanilla/prismarine/sea_lantern", <minecraft:sea_lantern>, [<ore:glowstone>, <ore:dyeCyan>]);
recipes.addShapeless("tfg/vanilla/prismarine/dark", <minecraft:prismarine:2>, [<minecraft:prismarine>, <ore:dyeBlack>]);

// Табличка
recipes.addShaped("tfg/vanilla/sign", <minecraft:sign>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[null, <minecraft:stick>, null]]);

// Раздатчик
recipes.addShaped("tfg/vanilla/dispenser", <minecraft:dispenser>, [
	[<ore:cobblestone>, <ore:ringIronAny>, <ore:cobblestone>],
	[<ore:springIronAny>, <ore:string>, <ore:springIronAny>],
	[<ore:gearSmallIronAny>, <metaitem:stickRedAlloy>, <ore:gearSmallIronAny>]]);

// Выбрасыватель
recipes.addShaped("tfg/vanilla/dropper", <minecraft:dropper>, [
	[<ore:cobblestone>, <ore:ringIronAny>, <ore:cobblestone>],
	[<ore:springSmallIronAny>, <ore:string>, <ore:springSmallIronAny>],
	[<ore:gearSmallIronAny>, <metaitem:stickRedAlloy>, <ore:gearSmallIronAny>]]);

// Наблюдатель - истинный кварц
recipes.addShaped("tfg/vanilla/observer/certus_quartz", <minecraft:observer>, [
	[<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
	[<ore:cobblestone>, <metaitem:plateCertusQuartz>, <ore:cobblestone>],
	[<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Наблюдатель - адский кварц
recipes.addShaped("tfg/vanilla/observer/nether_quartz", <minecraft:observer>, [
	[<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
	[<ore:cobblestone>, <metaitem:plateNetherQuartz>, <ore:cobblestone>],
	[<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Наблюдатель - кварцит
recipes.addShaped("tfg/vanilla/observer/quartzite", <minecraft:observer>, [
	[<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
	[<ore:cobblestone>, <metaitem:plateQuartzite>, <ore:cobblestone>],
	[<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Железная нажимная плита
recipes.addShaped("tfg/vanilla/light_weighted_pressure_plate", <minecraft:heavy_weighted_pressure_plate>, [
	[<metaitem:screwSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:screwSteel>],
	[<ore:plateIronAny>, <metaitem:springSteel>, <ore:plateIronAny>],
	[<metaitem:screwSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:screwSteel>]]);

// Котёл
recipes.addShaped("tfg/vanilla/cauldron", <minecraft:cauldron>, [
	[<ore:plateIronAny>, null, <ore:plateIronAny>],
	[<ore:plateIronAny>, <ore:gtce.tool.hard.hammers>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <ore:plateIronAny>, <ore:plateIronAny>]]);

// Воронка
recipes.addShaped("tfg/vanilla/hopper", <minecraft:hopper>, [
	[<ore:plateIronAny>, <ore:chest>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <ore:gearIronAny>, <ore:plateIronAny>],
	[<ore:gtce.tool.wrenches>, <ore:plateIronAny>, <ore:gtce.tool.hard.hammers>]]);

// Наковальня
recipes.addShaped("tfg/vanilla/anvil", <minecraft:anvil>, [
	[<ore:blockIronAny>, <ore:blockIronAny>, <ore:blockIronAny>],
	[<ore:screwIronAny>, <ore:blockIronAny>, <ore:screwIronAny>],
	[<ore:plateIronAny>, <ore:blockIronAny>, <ore:plateIronAny>]]);

// Вагонетка
recipes.addShaped("tfg/vanilla/minecart", <minecraft:minecart>, [
	[<ore:ringIronAny>, <ore:gtce.tool.hard.hammers>, <ore:ringIronAny>],
	[<ore:plateIronAny>, <ore:gtce.tool.wrenches>, <ore:plateIronAny>],
	[<ore:ringIronAny>, <ore:plateIronAny>, <ore:ringIronAny>]]);

// Проигрыватель
recipes.addShaped("tfg/vanilla/jukebox", <minecraft:jukebox>, [
	[<ore:logWood>, <metaitem:screwDiamond>, <ore:logWood>],
	[<minecraft:noteblock>, <ore:ringIronAny>, <minecraft:noteblock>],
	[<ore:logWood>, <ore:gearIronAny>, <ore:logWood>]]);

// Хук
recipes.addShaped("tfg/vanilla/tripwire_hook", <minecraft:tripwire_hook>, [
	[<ore:ringIronAny>, <minecraft:stick>, <ore:ringIronAny>],
	[<ore:string>, <minecraft:stick>, <ore:string>],
	[null, <ore:string>, null]]);

// Картина
recipes.addShaped("tfg/vanilla/painting", <minecraft:painting>, [
	[<ore:string>, <ore:ringIronAny>, <ore:string>],
	[<minecraft:stick>, <ore:carpet>, <minecraft:stick>],
	[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);

// Рамка
recipes.addShaped("tfg/vanilla/item_frame", <minecraft:item_frame>, [
	[<ore:string>, <ore:ringIronAny>, <ore:string>],
	[<minecraft:stick>, <ore:leather>, <minecraft:stick>],
	[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);

// Лампа
recipes.addShaped("tfg/vanilla/redstone_lamp", <minecraft:redstone_lamp>, [
	[<metaitem:plateBrass>, <ore:stickIronAny>, <metaitem:plateBrass>],
	[<ore:stickIronAny>, <metaitem:cableGtSingleRedAlloy>, <ore:stickIronAny>],
	[<metaitem:plateBrass>, <ore:stickIronAny>, <metaitem:plateBrass>]]);

// Удочка
recipes.addShaped("tfg/vanilla/fishing_rod", <minecraft:fishing_rod>, [
	[null, null, <minecraft:stick>],
	[null, <minecraft:stick>, <ore:string>],
	[<minecraft:stick>, null, <ore:string>]]);

// Чар стол
recipes.addShaped("tfg/vanilla/enchanting_table", <minecraft:enchanting_table>, [
	[null, <minecraft:book>, null],
	[<ore:gemFlawless>, <ore:obsidian>, <ore:gemFlawless>],
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

// Поршень
recipes.addShaped("tfg/vanilla/piston", <minecraft:piston>, [
	[<ore:lumber>, <ore:lumber>, <ore:lumber>],
	[<ore:gearIronAny>, <ore:stickLongIronAny>, <ore:gearIronAny>],
	[<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);

// Книга
recipes.addShaped("tfg/vanilla/book", <minecraft:book>, [
	[<ore:string>, <ore:paper>, <ore:leather>],
	[<ore:string>, <ore:paper>, <metaitem:rubber_drop>],
	[<ore:string>, <ore:paper>, <ore:leather>]]);

// Ведро
recipes.addShaped("tfg/vanilla/iron_bucket", <minecraft:bucket>, [
	[null, <ore:gtce.tool.hard.hammers>, null],
	[<metaitem:plateBlueSteel>, <tfc:metal/bucket/red_steel>.noReturn(), <metaitem:plateBlueSteel>],
	[null, <metaitem:plateBlueSteel>, null]]);

// Рычаг
recipes.addShaped("tfg/vanilla/lever", <minecraft:lever>, [
	[null, <ore:buttonStone>, null],
	[null, <minecraft:stick>, null]]);

// Бирка
recipes.addShaped("tfg/vanilla/name_tag", <minecraft:name_tag>, [
	[<ore:string>, <ore:string>, null],
	[<ore:string>, <minecraft:paper>, null],
	[<ore:string>, <ore:string>, null]]);

// Повторитель
recipes.addShaped("tfg/vanilla/repeater", <minecraft:repeater>, [
	[<ore:screwIronAny>, null, <ore:screwIronAny>],
	[<minecraft:redstone_torch>, <ore:gtce.tool.screwdrivers>, <minecraft:redstone_torch>],
	[<ore:pressurePlateStone>, <metaitem:stickRedAlloy>,<ore:pressurePlateStone>]]);

// Компаратор - истинный кварц
recipes.addShaped("tfg/vanilla/comparator/certus_quartz", <minecraft:comparator>, [
	[<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
	[<minecraft:redstone_torch>, <metaitem:plateCertusQuartz>, <minecraft:redstone_torch>],
	[<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - адский кварц
recipes.addShaped("tfg/vanilla/comparator/nether_quartz", <minecraft:comparator>, [
	[<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
	[<minecraft:redstone_torch>, <metaitem:plateNetherQuartz>, <minecraft:redstone_torch>],
	[<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - кварцит
recipes.addShaped("tfg/vanilla/comparator/quartzite", <minecraft:comparator>, [
	[<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
	[<minecraft:redstone_torch>, <metaitem:plateQuartzite>, <minecraft:redstone_torch>],
	[<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Детектор света - истинный кварц
recipes.addShaped("tfg/vanilla/daylight_detector/certus_quartz", <minecraft:daylight_detector>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[<metaitem:plateCertusQuartz>, <metaitem:plateCertusQuartz>, <metaitem:plateCertusQuartz>],
	[<ore:slabWood>, <metaitem:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - адский кварц
recipes.addShaped("tfg/vanilla/daylight_detector/nether_quartz", <minecraft:daylight_detector>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[<metaitem:plateNetherQuartz>, <metaitem:plateNetherQuartz>, <metaitem:plateNetherQuartz>],
	[<ore:slabWood>, <metaitem:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - кварцит
recipes.addShaped("tfg/vanilla/daylight_detector/quartzite", <minecraft:daylight_detector>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[<metaitem:plateQuartzite>, <metaitem:plateQuartzite>, <metaitem:plateQuartzite>],
	[<ore:slabWood>, <metaitem:stickRedAlloy>, <ore:slabWood>]]);

// Конская броня - железо
recipes.addShaped("tfg/vanilla/horse_armor/iron", <minecraft:iron_horse_armor>, [
	[<ore:gtce.tool.hard.hammers>, <ore:gtce.tool.screwdrivers>, <tfc:metal/helmet/wrought_iron>],
	[<ore:plateIronAny>, <tfc:metal/chestplate/wrought_iron>, <ore:plateIronAny>],
	[<tfc:metal/greaves/wrought_iron>, <ore:screwIronAny>, <tfc:metal/boots/wrought_iron>]]);

// Ферментированный паучий глаз
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>, TFCMushrooms, <minecraft:spider_eye>)
	.outputs(<minecraft:fermented_spider_eye>)
	.duration(300).EUt(2).buildAndRegister();

// Тростник -> Сахар
macerator.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.outputs(<minecraft:sugar>)
	.duration(300).EUt(2).buildAndRegister();

// Тростник -> Бумага (Вода)
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();

// Тростник -> Бумага (Дист. Вода)
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();

// Саженцы -> Палки
lathe.recipeBuilder()
	.inputs(<ore:treeSapling>)
	.outputs(<minecraft:stick>, <metaitem:dustTinyWood>)
	.duration(16).EUt(7).buildAndRegister();

// Полублок -> Миска
lathe.recipeBuilder()
	.inputs(<ore:slabWood>)
	.outputs(<minecraft:bowl>, <metaitem:dustTinyWood>)
	.duration(16).EUt(7).buildAndRegister();

// Раздатчик
assembler.recipeBuilder()
	.inputs(<ore:cobblestone> * 2, <ore:ringIronAny>, <ore:springIronAny> * 2, <ore:gearSmallIronAny> * 2, <metaitem:stickRedAlloy>, <ore:string>)
	.outputs(<minecraft:dispenser>)
	.duration(100).EUt(30).buildAndRegister();

// Гравий -> Каменная пыль, Кремний
macerator.recipeBuilder()
	.inputs(<ore:gravel>)
	.outputs(<metaitem:dustStone>)
	.chancedOutput(<minecraft:flint>, 100, 100)
	.duration(105).EUt(2).buildAndRegister();

// Гравий -> Каменная пыль, Кремний
sifter.recipeBuilder()
	.inputs(<ore:gravel>)
	.outputs(<minecraft:flint>)
	.chancedOutput(<minecraft:flint>, 2500, 0)
	.chancedOutput(<minecraft:flint>, 3300, 0)
	.chancedOutput(<minecraft:flint>, 6300, 0)
	.chancedOutput(<minecraft:flint>, 8300, 0)
	.chancedOutput(<minecraft:flint>, 9300, 0)
	.duration(275).EUt(16).buildAndRegister();

// Кусочки мяса
macerator.recipeBuilder()
	.inputs(<ore:categoryMeat>)
	.outputs(<metaitem:dustMeat>, <metaitem:dustTinyBone>)
	.duration(105).EUt(2).buildAndRegister();

// Коричневый гриб -> Метан
centrifuge.recipeBuilder()
	.inputs(<ore:mushroombrown>)
	.fluidOutputs([<liquid:methane> * 18])
	.duration(150).EUt(5).buildAndRegister();

// Красный гриб -> Метан
centrifuge.recipeBuilder()
	.inputs(<ore:mushroomRed>)
	.fluidOutputs([<liquid:methane> * 18])
	.duration(150).EUt(5).buildAndRegister();

// Стойка для брони
assembler.recipeBuilder()
	.inputs(<ore:slabStonePolished>, <minecraft:stick> * 6)
	.outputs(<minecraft:armor_stand>)
	.duration(100).EUt(7).buildAndRegister();

// Воронка
assembler.recipeBuilder()
	.inputs(<ore:chest>, <ore:plateIronAny> * 5, <ore:gearIronAny>)
	.outputs(<minecraft:hopper>)
	.duration(100).EUt(2).buildAndRegister();

// Базальтовый камень
compressor.recipeBuilder()
	.inputs(<metaitem:plateStone> * 9)
	.outputs(<tfc:raw/basalt>)
	.duration(300).EUt(2).buildAndRegister();

// Базальтовая земля
macerator.recipeBuilder()
	.inputs(<metaitem:bio_chaff>)
	.outputs(<tfc:dirt/basalt>)
	.duration(300).EUt(2).buildAndRegister();

// Кварцитовый песок -> Алмазы и тд.
centrifuge.recipeBuilder()
	.inputs(<tfc:sand/quartzite>)
	.chancedOutput(<metaitem:dustTinyDiamond>, 100, 100)
	.chancedOutput(<metaitem:dustIron>, 5000, 500)
	.chancedOutput(<tfc:sand/basalt>, 5000, 5000)
	.duration(275).EUt(30).buildAndRegister();

// Нефтеносные пески -> Базальтовый песок, Нефть 
centrifuge.recipeBuilder()
	.inputs(<ore:oreOilsands>)
	.chancedOutput(<tfc:sand/basalt>, 5000, 5000)
	.fluidOutputs([<liquid:oil> * 500])
	.duration(200).EUt(5).buildAndRegister();

// Песок -> Кварцитовая пыль
macerator.recipeBuilder()
	.inputs(<ore:sand>)
	.outputs(<metaitem:dustQuartzSand>)
	.duration(50).EUt(2).buildAndRegister();

// Крюк
assembler.recipeBuilder()
	.inputs(<minecraft:stick> * 2, <ore:ringIronAny> * 2)
	.outputs(<minecraft:tripwire_hook>)
	.duration(100).EUt(4).buildAndRegister();

// Проигрыватель
assembler.recipeBuilder()
	.inputs(<metaitem:boltDiamond>, <ore:gearIronAny>, <ore:ringIronAny>, <metaitem:plateWood> * 4, <minecraft:noteblock> * 2)
	.outputs(<minecraft:jukebox>)
	.duration(100).EUt(16).buildAndRegister();

// Поршень
assembler.recipeBuilder()
	.inputs(<ore:cobblestone>, <ore:slabWood>, <ore:gearSmallIronAny>, <ore:stickIronAny>)
	.fluidInputs([<liquid:red_alloy> * 144])
	.outputs(<minecraft:piston>)
	.duration(100).EUt(7).buildAndRegister();

// Котёл
assembler.recipeBuilder()
	.inputs(<ore:plateIronAny> * 7)
	.circuit(7)
	.outputs(<minecraft:cauldron>)
	.duration(100).EUt(4).buildAndRegister();

// Компас
assembler.recipeBuilder()
	.inputs(<metaitem:stickIronMagnetic>, <ore:plateIronAny> * 4)
	.outputs(<minecraft:compass>)
	.duration(100).EUt(4).buildAndRegister();

// Нажимная пластина из железа
assembler.recipeBuilder()
	.inputs(<metaitem:springSteel>, <ore:plateIronAny>)
	.outputs(<minecraft:heavy_weighted_pressure_plate>)
	.duration(100).EUt(16).buildAndRegister();

// Вагонетка
assembler.recipeBuilder()
	.inputs(<ore:plateIronAny> * 3, <ore:ringIronAny> * 4)
	.outputs(<minecraft:minecart>)
	.duration(100).EUt(4).buildAndRegister();

// Железные прутья
assembler.recipeBuilder()
	.inputs(<ore:stickIronAny> * 3)
	.circuit(3)
	.outputs(<minecraft:iron_bars> * 4)
	.duration(100).EUt(4).buildAndRegister();

// Железная дверь
assembler.recipeBuilder()
	.inputs(<minecraft:iron_bars>, <ore:plateIronAny> * 4)
	.fluidInputs([<liquid:steel> * 16])
	.outputs(<minecraft:iron_door>)
	.duration(100).EUt(7).buildAndRegister();

// Ведро
bender.recipeBuilder()
	.inputs(<metaitem:plateBlueSteel> * 3)
	.circuit(12)
	.outputs(<minecraft:bucket>)
	.duration(100).EUt(7).buildAndRegister();

// Slimeball
recipes.addShaped("tfg/gc/slime_ball", <minecraft:slime_ball>, [
	[<ore:dyeGreen>, <minecraft:sugar>, <ore:dyeGreen>],
	[<minecraft:sugar>, <firmalife:cheddar_wheel>,<minecraft:sugar>],
	[<ore:dyeGreen>, <minecraft:sugar>, <ore:dyeGreen>]]);

// Палки
recipes.addShapeless("tfg/tfc/sticks_from_bundle", <minecraft:stick> * 18, [<tfc:stick_bundle>, <ore:gtce.tool.saws>]);
recipes.addShapeless("tfg/tfc/sticks_from_rod", <minecraft:stick> * 2, [<metaitem:stickLongWood>, <ore:gtce.tool.saws>]);
recipes.addShapeless("tfg/tfc/sticks_from_bunch", <minecraft:stick> * 9, [<tfc:stick_bunch>]);
recipes.addShapeless("tfg/tfc/sticks_from_twig", <minecraft:stick> * 3, [<tfcflorae:groundcover/twig>]);
recipes.addShapeless("tfg/tfc/sticks_from_driftwood", <minecraft:stick> * 6, [<tfcflorae:groundcover/driftwood>]);

cutter.recipeBuilder()
	.inputs(<tfc:stick_bundle>)
	.fluidInputs([<liquid:lubricant> * 1])
	.outputs([<minecraft:stick> * 18])
	.duration(200).EUt(7).buildAndRegister();

cutter.recipeBuilder()
	.inputs(<ore:lumber>)
	.fluidInputs([<liquid:lubricant> * 1])
	.outputs([<minecraft:stick> * 9])
	.duration(200).EUt(7).buildAndRegister();
