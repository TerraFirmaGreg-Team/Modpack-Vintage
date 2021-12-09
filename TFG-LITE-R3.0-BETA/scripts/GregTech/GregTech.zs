import crafttweaker.item.IItemStack;

val Diamonds = <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond>;

//Удаление + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
    //Primitive Blast Furnace
    <gregtech:machine:1000>,
    //Primitive Bricks
    <gregtech:metal_casing:1>,
    //flour
    <gregtech:meta_dust:1615>,
    <gregtech:meta_dust_small:1615>,
    <gregtech:meta_dust_tiny:1615>
] as IItemStack[];
for item in ItemsToRemoveFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

val ItemsToRemove as IItemStack[] = [
	//Coke Oven
    <gregtech:machine:1016>,
    //LV Casing
    <gregtech:machine_casing:1>,
    //Crafting Station
    <gregtech:machine:1646>,
    //Steam Miner
    <gregtech:machine:21>
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

//Удаление рецептов
recipes.removeByRecipeName("gregtech:sticky_resin_torch");
recipes.removeByRecipeName("gregtech:torch_phosphorus");
recipes.removeByRecipeName("gregtech:torch_coke");
recipes.removeByRecipeName("gregtech:torch_coke_dust");
recipes.removeByRecipeName("gregtech:torch_sulfur");
recipes.removeByRecipeName("gregtech:cauldron");
recipes.removeByRecipeName("gregtech:iron_trapdoor");
recipes.removeByRecipeName("gregtech:iron_door");

//Реплейс всех печек на печь из GT
recipes.replaceAllOccurences(<minecraft:furnace>, <tfc:blast_furnace>);

//Переработка танков в Arc
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1596>).outputs(<ore:ingotBronze>.firstItem * 3).duration(400).EUt(8).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1597>).outputs(<ore:ingotSteel>.firstItem * 3).duration(400).EUt(30).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1598>).outputs(<ore:ingotAluminium>.firstItem *3).duration(400).EUt(120).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1599>).outputs(<ore:ingotStainlessSteel>.firstItem * 3).duration(400).EUt(500).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1600>).outputs(<ore:ingotTitanium>.firstItem * 3).duration(400).EUt(1560).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1601>).outputs(<ore:ingotTungstenSteel>.firstItem * 3).duration(400).EUt(2560).buildAndRegister();

//Сундуки можно переработать
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1487>).outputs(<ore:ingotBronze>.firstItem * 10).EUt(8).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1488>).outputs(<ore:ingotSteel>.firstItem * 10).EUt(30).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1489>).outputs(<ore:ingotAluminium>.firstItem * 10).EUt(120).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1490>).outputs(<ore:ingotStainlessSteel>.firstItem * 10).EUt(500).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1491>).outputs(<ore:ingotTitanium>.firstItem * 10).EUt(1560).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1492>).outputs(<ore:ingotTungstenSteel>.firstItem * 10).EUt(2560).duration(400).buildAndRegister();

//LV Machine Casing
recipes.addShaped(<gregtech:machine_casing:1>,
[[<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>],
 [<ore:plateBlueSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBlueSteel>],
 [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);

//Coke Oven
recipes.addShaped(<gregtech:machine:1016>,
[[<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>],
 [<ore:plateWroughtIron>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateWroughtIron>],
 [<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>]]);

//Crafting Station
recipes.addShaped(<gregtech:machine:1646>,
[[<ore:chestWood>, <ore:slabWood>, <ore:chestWood>],
 [<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>],
 [<ore:plankWood>, <ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:plankWood>]]);

//Steam Miner
recipes.addShaped(<gregtech:machine:21>,
[[Diamonds, <ore:pipeNormalFluidBronze>, Diamonds],
 [<ore:pipeNormalFluidBronze>, <gregtech:steam_casing>, <ore:pipeNormalFluidBronze>],
 [<ore:gearSmallBronze>, <ore:pipeNormalFluidBronze>, <ore:gearSmallBronze>]]);

//Исправление рецепта на бумагу
recipes.removeByRecipeName("paper");
//Крафт бумажной пыли
recipes.addShaped( <ore:dustPaper>.firstItem * 2,
[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null]]);
//Крафт бамаги из пыли
recipes.addShaped(<ore:paper>.firstItem * 2,
[[null, <ore:slabStonePolished>, null],
 [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
 [null, <ore:slabStonePolished>, null]]);

//Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .EUt(140).duration(330).buildAndRegister();
	
//Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .EUt(140).duration(220).buildAndRegister();
	
//Гравий --> кремень
forge_hammer.recipeBuilder()
    .inputs([<ore:gravel> * 1])
    .outputs(<minecraft:flint> * 1)
    .duration(45).EUt(5).buildAndRegister();

//Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder()
    .inputs([<ore:sugarcane> * 3])
    .outputs(<ore:dustPaper>.firstItem * 2)
    .duration(105).EUt(4).buildAndRegister();

//Песок+Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand>*4, <ore:gravel>*4)
    .outputs(<tfc:aggregate>*8)
    .duration(20).EUt(4).buildAndRegister();

//Фикс снопа сена
packer.findRecipe(2, [<minecraft:wheat>*9, <gregtech:meta_item_1:461>.withTag({Configuration: 9})], null).remove();

//Фикс сундуков
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();

//Фиксы корпусов
//Удаление
assembler.findRecipe(16, [<ore:plateWroughtIron>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateSteel>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateAluminium>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateStainlessSteel>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateTitanium>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateTungstenSteel>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateRhodiumPlatedPalladium>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateNaquadahAlloy>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateLivermorium>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<ore:plateNeutronium>.firstItem * 8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();
//Создание
assembler.recipeBuilder().inputs(<ore:plateWroughtIron> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateSteel> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:1>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateAluminium> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:2>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateStainlessSteel> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:3>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTitanium> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:4>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTungstenSteel> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:5>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateRhodiumPlatedPalladium> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:6>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateNaquadahAlloy> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:7>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateLivermorium> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:8>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateNeutronium> * 6).notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:14>).duration(20).EUt(16).buildAndRegister();

//Крафт некоторых блоков в компрессоре
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

//Фикс блоков из ценных штук
/*
compressor.findRecipe(2, [<tfc:gem/ruby:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/topaz:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/sapphire:2>*9], null).remove();
compressor.findRecipe(2, [<minecraft:diamond>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/opal:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/amethyst:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:ore/lapis_lazuli>*9], null).remove();
compressor.recipeBuilder().inputs(<ore:gemRuby>*9).outputs(<gregtech:meta_block_compressed_9:10>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemTopaz>*9).outputs(<gregtech:meta_block_compressed_11:14>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemSapphire>*9).outputs(<gregtech:meta_block_compressed_9:13>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemOpal>*9).outputs(<gregtech:meta_block_compressed_13:5>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAmethyst>*9).outputs(<gregtech:meta_block_compressed_13:6>).duration(40).EUt(2).buildAndRegister();
*/

//Исправление рецепта синей стали
recipes.removeByRecipeName("gregtech:dust_blue_steel");
mixer.findRecipe(7, [<ore:dustSterlingSilver>.firstItem, <ore:dustBismuthBronze>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2, <gregtech:meta_item_1:461>.withTag({Configuration: 1})], null).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustRoseGold>.firstItem, <ore:dustBrass>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_dust:2511> * 8)
    .duration(800).EUt(8).buildAndRegister();

//Исправление рецепта красной стали
recipes.removeByRecipeName("gregtech:dust_red_steel");
mixer.findRecipe(7, [<ore:dustRoseGold>.firstItem, <ore:dustBrass>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2, <gregtech:meta_item_1:461>.withTag({Configuration: 1})], null).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustSterlingSilver>.firstItem, <ore:dustBismuthBronze>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_dust:2510> * 8)
    .duration(800).EUt(8).buildAndRegister();

//Отключение крафта одинарных пластин в верстаке
val GTPlates = [
    "gregtech:plate_livermorium",
    "gregtech:plate_rubber",
    "gregtech:plate_rhodium_plated_palladium",
    "gregtech:plate_aluminium",
	"gregtech:plate_iron_magnetic",
    "gregtech:plate_naquadah",
    "gregtech:plate_steel_magnetic",
    "gregtech:plate_invar",
    "gregtech:plate_cupronickel",
    "gregtech:plate_californium",
    "gregtech:plate_soldering_alloy",
    "gregtech:plate_naquadah_alloy",
    "gregtech:plate_fermium",
    "gregtech:plate_beryllium",
    "gregtech:plate_potassium",
    "gregtech:plate_thorium",
    "gregtech:plate_samarium",
    "gregtech:plate_stainless_steel",
    "gregtech:plate_lithium",
    "gregtech:plate_bronze",
    "gregtech:plate_flerovium",
    "gregtech:plate_polyphenylene_sulfide",
    "gregtech:plate_europium",
    "gregtech:plate_tungsten",
    "gregtech:plate_gallium_arsenide",
    "gregtech:plate_curium",
    "gregtech:plate_erbium",
    "gregtech:plate_terbium",
    "gregtech:plate_niobium_titanium",
    "gregtech:plate_titanium",
    "gregtech:plate_damascus_steel",
    "gregtech:plate_iridium",
    "gregtech:wrench_tungsten_steel",
    "gregtech:plate_tungsten_steel",
    "gregtech:plate_hsss",
    "gregtech:plate_plutonium241",
    "gregtech:plate_gallium",
    "gregtech:plate_cobalt",
    "gregtech:plate_einsteinium",
    "gregtech:plate_scandium",
    "gregtech:plate_tellurium",
    "gregtech:plate_ruthenium",
    "gregtech:plate_ruridit",
    "gregtech:plate_indium_gallium_phosphide",
    "gregtech:plate_blue_steel",
    "gregtech:plate_annealed_copper",
    "gregtech:plate_bismuth_bronze",
    "gregtech:plate_tantalum",
    "gregtech:plate_osmiridium",
    "gregtech:plate_potin",
    "gregtech:plate_strontium",
    "gregtech:plate_silver",
    "gregtech:plate_yttrium_barium_cuprate",
    "gregtech:plate_yttrium",
    "gregtech:plate_trinium",
    "gregtech:plate_platinum",
    "gregtech:plate_rutherfordium",
    "gregtech:plate_neptunium",
    "gregtech:plate_vanadium",
    "gregtech:plate_niobium",
    "gregtech:plate_tin_alloy",
    "gregtech:plate_rhenium",
    "gregtech:plate_fluxed_electrum",
    "gregtech:plate_palladium",
    "gregtech:plate_tritanium",
    "gregtech:plate_battery_alloy",
    "gregtech:plate_manganese",
    "gregtech:plate_tin",
    "gregtech:plate_barium",
    "gregtech:plate_americium",
    "gregtech:plate_calcium",
    "gregtech:plate_electrum",
    "gregtech:plate_indium_tin_barium_titanium_cuprate",
    "gregtech:plate_red_alloy",
    "gregtech:plate_rhodium",
    "gregtech:plate_black_bronze",
    "gregtech:plate_nickel",
    "gregtech:plate_hsse",
    "gregtech:plate_brass",
    "gregtech:plate_molybdenum",
    "gregtech:plate_ytterbium",
    "gregtech:plate_red_steel",
    "gregtech:plate_naquadah_enriched",
    "gregtech:plate_mendelevium",
    "gregtech:plate_osmium",
    "gregtech:plate_nichrome",
    "gregtech:plate_magnesium",
    "gregtech:plate_vanadium_gallium",
    "gregtech:plate_cobalt_brass",
    "gregtech:plate_copper",
    "gregtech:plate_plutonium",
    "gregtech:plate_uranium_rhodium_dinaquadide",
    "gregtech:plate_protactinium",
    "gregtech:plate_graphite",
    "gregtech:plate_cerium",
    "gregtech:plate_oganesson",
    "gregtech:plate_steel",
    "gregtech:plate_neutronium",
    "gregtech:plate_zinc",
    "gregtech:plate_antimony",
    "gregtech:plate_niobium_nitride",
    "gregtech:plate_neodymium_magnetic",
    "gregtech:plate_ultimet",
    "gregtech:plate_lead",
    "gregtech:plate_iron",
    "gregtech:plate_praseodymium",
    "gregtech:plate_dubnium",
    "gregtech:plate_uranium235",
    "gregtech:plate_sodium",
    "gregtech:plate_duranium",
    "gregtech:plate_thulium",
    "gregtech:plate_neodymium",
    "gregtech:wrench_vanadium_steel",
    "gregtech:plate_vanadium_steel",
    "gregtech:plate_hssg",
    "gregtech:plate_berkelium",
    "gregtech:plate_graphene",
    "gregtech:plate_nickel_zinc_ferrite",
    "gregtech:plate_uranium",
    "gregtech:plate_chrome",
    "gregtech:plate_rubidium",
    "gregtech:plate_hassium",
    "gregtech:plate_silicon",
    "gregtech:plate_tungsten_carbide",
    "gregtech:plate_black_steel",
    "gregtech:plate_rose_gold",
    "gregtech:plate_gold",
    "gregtech:plate_naquadria",
    "gregtech:plate_promethium",
    "gregtech:plate_magnalium",
    "gregtech:plate_kanthal",
    "gregtech:plate_wrought_iron",
    "gregtech:plate_enriched_naquadah_trinium_europium_duranide",
    "gregtech:plate_bismuth",
    "gregtech:plate_sterling_silver",
    "gregtech:plate_zirconium"
] as string[];
for item in GTPlates{
    recipes.removeByRecipeName(item);
}

//Отключение крафта двойных пластин в верстаке
val GTDoublePlates = [
    "gregtech:plate_double_livermorium",
	"gregtech:plate_double_blue_steel",
    "gregtech:plate_rhodium_plated_palladium",
    "gregtech:plate_double_cobalt_brass",
    "gregtech:plate_double_copper",
    "gregtech:plate_double_naquadah_enriched",
    "gregtech:plate_double_black_bronze",
    "gregtech:plate_double_trinium",
    "gregtech:plate_double_chrome",
    "gregtech:plate_double_neodymium",
    "gregtech:plate_double_damascus_steel",
    "gregtech:plate_double_oganesson",
    "gregtech:plate_double_black_steel",
    "gregtech:plate_double_uranium",
    "gregtech:plate_double_erbium",
    "gregtech:plate_double_duranium",
    "gregtech:plate_double_red_steel",
    "gregtech:plate_double_niobium",
    "gregtech:plate_double_kanthal",
    "gregtech:plate_double_steel",
    "gregtech:plate_double_brass",
    "gregtech:plate_double_tin",
    "gregtech:plate_double_naquadah_alloy",
    "gregtech:plate_double_calcium",
    "gregtech:plate_double_thorium",
    "gregtech:plate_double_battery_alloy",
    "gregtech:plate_double_iron",
    "gregtech:plate_double_tantalum",
    "gregtech:plate_double_plutonium241",
    "gregtech:plate_double_thulium",
    "gregtech:plate_double_invar",
    "gregtech:plate_double_hssg",
    "gregtech:plate_double_soldering_alloy",
    "gregtech:plate_double_nickel",
    "gregtech:plate_double_flerovium",
    "gregtech:plate_double_platinum",
    "gregtech:plate_double_hassium",
    "gregtech:plate_double_enriched_naquadah_trinium_europium_duranide",
    "gregtech:plate_double_potin",
    "gregtech:plate_double_steel_magnetic",
    "gregtech:plate_double_molybdenum",
    "gregtech:plate_double_indium_tin_barium_titanium_cuprate",
    "gregtech:plate_double_gallium",
    "gregtech:plate_double_uranium_rhodium_dinaquadide",
    "gregtech:plate_double_tin_alloy",
    "gregtech:plate_double_sodium",
    "gregtech:plate_double_yttrium_barium_cuprate",
    "gregtech:plate_double_red_alloy",
    "gregtech:plate_double_einsteinium",
    "gregtech:plate_double_scandium",
    "gregtech:plate_double_strontium",
    "gregtech:plate_double_bismuth_bronze",
    "gregtech:plate_double_gold",
    "gregtech:plate_double_protactinium",
    "gregtech:plate_double_rhodium",
    "gregtech:plate_double_graphite",
    "gregtech:plate_double_ultimet",
    "gregtech:plate_double_yttrium",
    "gregtech:plate_double_potassium",
    "gregtech:plate_double_naquadah",
    "gregtech:plate_double_iron_magnetic",
    "gregtech:plate_double_fluxed_electrum",
    "gregtech:plate_double_stainless_steel",
    "gregtech:plate_double_magnalium",
    "gregtech:plate_double_plutonium",
    "gregtech:plate_double_annealed_copper",
    "gregtech:plate_double_magnesium",
    "gregtech:plate_double_cobalt",
    "gregtech:plate_double_nichrome",
    "gregtech:plate_double_neutronium",
    "gregtech:plate_double_palladium",
    "gregtech:plate_double_vanadium_gallium",
    "gregtech:plate_double_dubnium",
    "gregtech:plate_double_lead",
    "gregtech:plate_double_silver",
    "gregtech:plate_double_zinc",
    "gregtech:plate_double_cupronickel",
    "gregtech:plate_double_europium",
    "gregtech:plate_double_naquadria",
    "gregtech:plate_double_tellurium",
    "gregtech:plate_double_neptunium",
    "gregtech:plate_double_antimony",
    "gregtech:plate_double_bronze",
    "gregtech:plate_double_indium_gallium_phosphide",
    "gregtech:plate_double_aluminium",
    "gregtech:plate_double_ruthenium",
    "gregtech:plate_double_mendelevium",
    "gregtech:plate_double_osmium",
    "gregtech:plate_double_titanium",
    "gregtech:plate_double_americium",
    "gregtech:plate_double_hsss",
    "gregtech:plate_double_fermium",
    "gregtech:plate_double_tritanium",
    "gregtech:plate_double_beryllium",
    "gregtech:plate_double_rhenium",
    "gregtech:plate_double_rubidium",
    "gregtech:plate_double_rose_gold",
    "gregtech:plate_double_promethium",
    "gregtech:plate_double_californium",
    "gregtech:plate_double_barium",
    "gregtech:plate_double_sterling_silver",
    "gregtech:plate_double_rutherfordium",
    "gregtech:plate_double_lithium",
    "gregtech:plate_double_niobium_nitride",
    "gregtech:plate_double_ruridit",
    "gregtech:plate_double_praseodymium",
    "gregtech:plate_double_vanadium",
    "gregtech:plate_double_bismuth",
    "gregtech:plate_double_osmiridium",
    "gregtech:plate_double_iridium",
    "gregtech:plate_double_berkelium",
    "gregtech:plate_double_neodymium_magnetic",
    "gregtech:plate_double_tungsten",
    "gregtech:plate_double_ytterbium",
    "gregtech:plate_double_zirconium",
    "gregtech:plate_double_gallium_arsenide",
    "gregtech:plate_double_uranium235",
    "gregtech:plate_double_hsse",
    "gregtech:plate_double_samarium",
    "gregtech:plate_double_tungsten_steel",
    "gregtech:plate_double_tungsten_carbide",
    "gregtech:plate_double_cerium",
    "gregtech:plate_double_graphene",
    "gregtech:plate_double_nickel_zinc_ferrite",
    "gregtech:plate_double_curium",
    "gregtech:plate_double_electrum",
    "gregtech:plate_double_wrought_iron",
    "gregtech:plate_double_terbium",
    "gregtech:plate_double_niobium_titanium",
    "gregtech:plate_double_manganese",
    "gregtech:plate_double_silicon",
    "gregtech:plate_double_polyphenylene_sulfide",
    "gregtech:plate_double_vanadium_steel"
] as string[];
for item in GTDoublePlates{
    recipes.removeByRecipeName(item);
}