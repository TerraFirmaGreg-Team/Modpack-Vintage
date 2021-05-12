import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var ingotIron = <ore:ingotIron>;
var blockIron = <ore:blockIron>;
var obsidian = <ore:obsidian>;
var diamond = <ore:gemDiamond>;
var book = <minecraft:book>;
var dirt = <ore:dirt>;
var cobble = <ore:cobblestone>;
var gravel = <ore:gravel>;
var sand = <ore:sand>;
var chestwood = <ore:chestWood>;
var blazerod = <minecraft:blaze_rod>;
var dyecyan = <ore:dyeCyan>;
var quartz = <minecraft:quartz>;
var glowstone = <ore:glowstone>;
var prismarine = <ore:blockPrismarine>;
var dyeblack = <ore:dyeBlack>;
var blockquartz = <ore:blockQuartz>;

//Отключение крафтов
recipes.removeByRecipeName("minecraft:stone_pressure_plate");
recipes.removeByRecipeName("minecraft:light_weighted_pressure_plate");

recipes.removeByRecipeName("tfc:vanilla/flint_and_steel");
recipes.removeByRecipeName("gregtech:cauldron");
recipes.removeByRecipeName("gregtech:iron_trapdoor");
recipes.removeByRecipeName("minecraft:bone_meal_from_bone");
recipes.removeByRecipeName("gregtech:iron_door");
recipes.removeByRecipeName("minecraft:iron_door");
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_comparator");
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_daylight_detector");
recipes.removeByRecipeName("tfc:vanilla/pressure_pate/heavy_weighted_pressure_plate");
recipes.removeByRecipeName("tfc:vanilla/rail/steel_minecart");
recipes.removeByRecipeName("tfc:vanilla/redstone/redstone_lamp");
recipes.removeByRecipeName("minecraft:tripwire_hook");
recipes.removeByRecipeName("minecraft:stick");
recipes.remove(<minecraft:bucket>);
recipes.remove(<minecraft:furnace>);
recipes.remove(<minecraft:jukebox>);
recipes.remove(<minecraft:enchanting_table>);
recipes.remove(<minecraft:furnace>);
recipes.remove(<minecraft:piston>);
recipes.remove(<minecraft:wooden_pressure_plate> * 8);
recipes.remove(<minecraft:crafting_table>);
recipes.remove(<minecraft:rail> * 32);
recipes.remove(<minecraft:activator_rail> * 16);
recipes.remove(<minecraft:detector_rail> * 16);
recipes.remove(<minecraft:golden_rail> * 16);
recipes.removeShapeless(<minecraft:concrete_powder>);
recipes.removeShapeless(<minecraft:concrete_powder:1>);
recipes.removeShapeless(<minecraft:concrete_powder:2>);
recipes.removeShapeless(<minecraft:concrete_powder:3>);
recipes.removeShapeless(<minecraft:concrete_powder:4>);
recipes.removeShapeless(<minecraft:concrete_powder:5>);
recipes.removeShapeless(<minecraft:concrete_powder:6>);
recipes.removeShapeless(<minecraft:concrete_powder:7>);
recipes.removeShapeless(<minecraft:concrete_powder:8>);
recipes.removeShapeless(<minecraft:concrete_powder:9>);
recipes.removeShapeless(<minecraft:concrete_powder:10>);
recipes.removeShapeless(<minecraft:concrete_powder:11>);
recipes.removeShapeless(<minecraft:concrete_powder:12>);
recipes.removeShapeless(<minecraft:concrete_powder:13>);
recipes.removeShapeless(<minecraft:concrete_powder:14>);
recipes.removeShapeless(<minecraft:concrete_powder:15>);

//Отключение рельс
recipes.removeByRecipeName("tfc:vanilla/rail/activator_rail");
recipes.removeByRecipeName("tfc:vanilla/rail/steel_activator_rail");
recipes.removeByRecipeName("tfc:vanilla/rail/rail");
recipes.removeByRecipeName("tfc:vanilla/rail/steel_rail");
recipes.removeByRecipeName("tfc:vanilla/rail/detector_rail");
recipes.removeByRecipeName("tfc:vanilla/rail/steel_detector_rail");
recipes.removeByRecipeName("tfc:vanilla/rail/powered_rail");

//Отключение крафта факелов
recipes.removeByRecipeName("gregtech:rubber_drop_torch");
recipes.removeByRecipeName("gregtech:lignite_coal_torch");
recipes.removeByRecipeName("gregtech:torch_sulfur");
recipes.removeByRecipeName("gregtech:torch_phosphor");
recipes.removeByRecipeName("forestry:beeswax_worth");

//Крафт стекла
furnace.addRecipe(<minecraft:glass>, <ore:sand>);

//Крафт быстрого верстака
recipes.addShapeless(<minecraft:crafting_table>,[<ore:craftingTableWood>]);

//Крафт стеклянной панели
recipes.addShapeless(<minecraft:glass_pane>,[<minecraft:glass>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);

//Рельсовые приколы
recipes.addShapeless(<minecraft:chest_minecart>,[<minecraft:minecart>,<ore:chestWood>]);
recipes.addShapeless(<minecraft:furnace_minecart>,[<minecraft:minecart>,<minecraft:furnace>]);

//Водная хрень
recipes.addShapeless(<minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless(<minecraft:prismarine>, [blockquartz, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:1> * 4, [prismarine, prismarine, prismarine, prismarine]);
recipes.addShapeless(<minecraft:sea_lantern>, [glowstone, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:2>, [prismarine, dyeblack]);

//Стеклянная бутылочка
recipes.addShaped(<minecraft:glass_bottle>,
[[null, <ore:ButtonWood>, null],
 [<ore:paneGlass>, null, <ore:paneGlass>],
 [null, <ore:paneGlass>, null]]);
 
//Рельсы
//Активатор рельсы
recipes.addShaped(<minecraft:golden_rail>*6,
[[<ore:stickGold>, <minecraft:stick>, <ore:stickGold>],
 [<ore:stickGold>, <ore:dustRedstone>, <ore:stickGold>],
 [<ore:stickGold>, <minecraft:stick>, <ore:stickGold>]]);
//
recipes.addShaped(<minecraft:detector_rail>*8,
[[<ore:stickIron>, null, <ore:stickIron>],
 [<ore:stickIron>, <ore:pressurePlateStone>, <ore:stickIron>],
 [<ore:stickIron>, <ore:dustRedstone>, <ore:stickIron>]]);
//
recipes.addShaped(<minecraft:detector_rail>*16,
[[<ore:stickSteel>, null, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:pressurePlateStone>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:dustRedstone>, <ore:stickSteel>]]); 
//
recipes.addShaped(<minecraft:activator_rail>*8,
[[<ore:stickIron>, <minecraft:stick>, <ore:stickIron>],
 [<ore:stickIron>, <minecraft:lever>, <ore:stickIron>],
 [<ore:stickIron>, <minecraft:stick>, <ore:stickIron>]]); 
//
recipes.addShaped(<minecraft:activator_rail>*16,
[[<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:lever>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>]]); 
//
recipes.addShaped(<minecraft:rail>*8,
[[<ore:stickIron>, <minecraft:stick>, <ore:stickIron>],
 [<ore:stickIron>, <minecraft:stick>, <ore:stickIron>],
 [<ore:stickIron>, <minecraft:stick>, <ore:stickIron>]]); 
//
recipes.addShaped(<minecraft:rail>*16,
[[<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>]]); 
 
//Лампа
recipes.addShaped(<minecraft:redstone_lamp>,
[[<ore:plateBrass>, <ore:stickIron>, <ore:plateBrass>],
 [<ore:stickIron>, <ore:cableGtSingleRedAlloy>, <ore:stickIron>],
 [<ore:plateBrass>, <ore:stickIron>, <ore:plateBrass>]]);

//Крюк
recipes.addShaped(<minecraft:tripwire_hook>,
[[null, <ore:ringIron>, null],
 [null, <ore:screwIron>, null],
 [null, <ore:stickWood>, null]]);

//Проигрыватель
recipes.addShaped(<minecraft:jukebox>,
[[<ore:lumber>, <ore:trapdoorWood>, <ore:lumber>],
 [<ore:lumber>, <ore:circuitBasic>, <ore:lumber>],
 [<ore:lumber>, <ore:lumber>, <ore:lumber>]]);

//Чар стол
recipes.addShaped(<minecraft:enchanting_table>,
[[null, <minecraft:book>, null],
 [<ore:gemFlawless>, <ore:obsidian>, <ore:gemFlawless>],
 [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

//Поршень
recipes.addShaped(<minecraft:piston>,
[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
 [<ore:stone>, <ore:gearIron>, <ore:stone>],
 [<ore:stone>, <ore:dustRedstone>, <ore:stone>]]);

//Варочная стойка
recipes.addShaped(<minecraft:brewing_stand>, [
[null,blazerod,null],
[cobble,cobble,cobble]]);

//Печка блок
recipes.addShaped(<contenttweaker:furnaceblock>,
[[<ore:plateCurvedSteel>, <minecraft:iron_trapdoor>, <ore:plateCurvedSteel>],
 [<ore:plateSteel>, <ore:GenRockII>, <ore:plateSteel>],
 [<ore:plateCurvedSteel>, <minecraft:cauldron>, <ore:plateCurvedSteel>]]);

//Ведро
recipes.addShaped(<minecraft:bucket>,
[[<ore:plateCurvedWroughtIron>, <tfc:metal/bucket/blue_steel>.noReturn(), <ore:plateCurvedWroughtIron>],
 [<ore:plateCurvedWroughtIron>, <tfc:metal/bucket/red_steel>.noReturn(), <ore:plateCurvedWroughtIron>],
 [null, <ore:plateWroughtIron>, null]]);
