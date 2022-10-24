#priority 1
# Genetics

import mods.forestry.Carpenter;

print("Initializing 'Genetics'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Базы данных    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// База данных пчеловода
Carpenter.removeRecipe(<extrabees:dictionary>);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper> * 4, <ore:plateGold> * 2, <ore:circuitMv>, <ore:plateEmerald>, <ore:paneGlass>)
    .outputs(<extrabees:dictionary>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База генов
Carpenter.removeRecipe(<genetics:geneticdatabase>);
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond> * 6, <ore:plateEmerald>, <ore:circuitHv>, <ore:paneGlass>)
    .outputs(<genetics:geneticdatabase>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Разное  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Аналитик
recipes.remove(<genetics:analyst>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 6, <genetics:misc:8> * 2, <forestry:portable_alyzer>)
    .outputs(<genetics:analyst>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();
    
// Усиленный корпус
recipes.remove(<genetics:misc>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 8, <forestry:hardened_machine>)
    .outputs(<genetics:misc>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Краситель ДНК
recipes.remove(<genetics:misc:1>);
recipes.addShaped("genetics_dna_dye", <genetics:misc:1> * 8,
 [[<minecraft:dye:9>, <ore:dustAmethyst>, <minecraft:dye:9>],
  [<minecraft:dye:13>, <minecraft:blaze_powder>, <minecraft:dye:13>],
  [<minecraft:dye:9>, <minecraft:glowstone_dust>, <minecraft:dye:9>]]);

// Флуоресцентный краситель
recipes.remove(<genetics:misc:2>);
recipes.addShaped("genetics_fluorescent_dye", <genetics:misc:2> * 8,
 [[<minecraft:dye:11>, <ore:dustGold>, <minecraft:dye:11>],
  [<minecraft:dye:14>, <minecraft:blaze_powder>, <minecraft:dye:14>],
  [<minecraft:dye:11>, <minecraft:glowstone_dust>, <minecraft:dye:11>]]);

// Пустая последовательность
recipes.remove(<genetics:misc:5>);
assembler.recipeBuilder()
    .inputs(<minecraft:paper> * 6, <ore:plateGlowstone> * 2, <gregtech:meta_lens:2000>)
    .outputs(<genetics:misc:5>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Пустая последовательность большая
recipes.remove(<genetics:misc:6>);
assembler.recipeBuilder()
    .inputs(<genetics:misc:5> * 2, <ore:plateGlowstone> * 2, <ore:paneGlass>)
    .outputs(<genetics:misc:6>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Интегральная плата
recipes.remove(<genetics:misc:8>);
assembler.recipeBuilder()
    .inputs(<forestry:chipsets:1> * 2, <ore:circuitHv> * 2, <ore:stickLapis> * 2, <ore:stickGold> * 2, <forestry:chipsets:3>)
    .outputs(<genetics:misc:8>)
    .duration(10 * 20)
    .EUt(1024)
    .buildAndRegister();

// Интегральное ЦПУ
recipes.remove(<genetics:misc:9>);
assembler.recipeBuilder()
    .inputs(<ore:platePlatinum> * 4, <genetics:misc:8> * 4, <forestry:crafting_material:1>)
    .outputs(<genetics:misc:9>)
    .duration(25 * 20)
    .EUt(2048)
    .buildAndRegister();

// Интегральеный корпус
recipes.remove(<genetics:misc:10>);
assembler.recipeBuilder()
    .inputs(<genetics:misc:9> * 4, <ore:platePlatinum> * 4, <genetics:misc>)
    .outputs(<genetics:misc:10>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Машины  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Изолятор
recipes.remove(<genetics:machine>);
recipes.addShaped("genetics_insulator", <genetics:machine>,
 [[<ore:platePlatinum>, <ore:lensDiamond>, <ore:platePlatinum>],
  [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
  [<ore:platePlatinum>, <gregtech:meta_item_1:144>, <ore:platePlatinum>]]);

// Секвенсор
recipes.remove(<genetics:machine:1>);
recipes.addShaped("genetics_sequencer", <genetics:machine:1>,
 [[<gregtech:meta_item_1:234>, <forestry:crafting_material:1>, <gregtech:meta_item_1:234>],
  [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
  [<genetics:misc:2>, <ore:plateEmerald>, <genetics:misc:2>]]);

// Полимеризатор
recipes.remove(<genetics:machine:2>);
recipes.addShaped("genetics_polymerizer", <genetics:machine:2>,
 [[<ore:platePlatinum>, <genetics:misc:8>, <ore:platePlatinum>],
  [<gregtech:meta_item_1:144>, <genetics:misc>, <gregtech:meta_item_1:234>],
  [<ore:platePlatinum>, <genetics:misc:8>, <ore:platePlatinum>]]);

// Инокулятор
recipes.remove(<genetics:machine:3>);
recipes.addShaped("genetics_inoculator", <genetics:machine:3>,
 [[<ore:platePlatinum>, <ore:plateDiamond>, <ore:platePlatinum>],
  [<gregtech:meta_item_1:144>, <genetics:misc>, <genetics:misc:8>],
  [<ore:plateEmerald>, <genetics:misc:8>, <ore:plateEmerald>]]);

// Лабораторный стенд
recipes.remove(<genetics:lab_machine>);
recipes.addShaped("genetics_laboratory_stand", <genetics:lab_machine>,
 [[<ore:plateDiamond>, <ore:paneGlass>, <ore:plateDiamond>],
  [<ore:paneGlass>, <genetics:misc>, <ore:paneGlass>],
  [<ore:plateDiamond>, <ore:paneGlass>, <ore:plateDiamond>]]);

// Анализатор
recipes.remove(<genetics:lab_machine:1>);
recipes.addShaped("genetics_analyzer", <genetics:lab_machine:1>,
 [[<ore:paneGlass>, <genetics:analyst>, <ore:paneGlass>],
  [<ore:circuitHv>, <genetics:misc>, <ore:circuitHv>],
  [<genetics:misc:1>, <gregtech:meta_item_1:234>, <genetics:misc:1>]]);

// Инкубатор
recipes.remove(<genetics:lab_machine:2>);
recipes.addShaped("genetics_incubator", <genetics:lab_machine:2>,
 [[<ore:paneGlass>, <gregtech:wire_coil>, <ore:paneGlass>],
  [<ore:circuitHv>, <genetics:misc>, <ore:circuitHv>],
  [<gregtech:meta_item_1:144>, <ore:plateDiamond>, <gregtech:meta_item_1:144>]]);

// Генофонд
recipes.remove(<genetics:lab_machine:3>);
recipes.addShaped("genetics_gene_pool", <genetics:lab_machine:3>,
 [[<ore:paneGlass>, <gregtech:meta_item_1:234>, <ore:paneGlass>],
  [<ore:circuitHv>, <genetics:misc>, <ore:circuitHv>],
  [<gregtech:meta_item_1:144>, <ore:plateStainlessSteel>, <gregtech:meta_item_1:144>]]);

// Акклиматизатор
recipes.remove(<genetics:lab_machine:4>);
recipes.addShaped("genetics_acclimatizer", <genetics:lab_machine:4>,
 [[<ore:paneGlass>, <gregtech:wire_coil>, <ore:paneGlass>],
  [<ore:circuitHv>, <genetics:misc>, <ore:circuitHv>],
  [<forge:bucketfilled>.withTag({FluidName: "ice", Amount: 1000}), <minecraft:water_bucket>, <forge:bucketfilled>.withTag({FluidName: "ice", Amount: 1000})]]);

// Cплайсер
recipes.remove(<genetics:adv_machine>);
recipes.addShaped("genetics_splicer", <genetics:adv_machine>,
 [[<ore:platePlatinum>, <gregtech:meta_item_1:235>, <ore:platePlatinum>],
  [<genetics:misc:9>, <genetics:misc:10>, <genetics:misc:9>],
  [<ore:platePlatinum>, <ore:plateStainlessSteel>, <ore:platePlatinum>]]);


print("Initialized 'Genetics'");