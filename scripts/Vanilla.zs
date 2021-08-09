import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");

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
global ItemsToRemoveVJEI as IItemStack[] = [
	<tfc:sluice>,
    <minecraft:apple>,
    <minecraft:mushroom_stew>,
    <minecraft:bread>,
    <minecraft:porkchop>,
    <minecraft:cooked_porkchop>,
    <minecraft:fish>,
    <minecraft:fish:1>,
    <minecraft:fish:2>,
    <minecraft:fish:3>,
    <minecraft:cooked_fish>,
    <minecraft:cooked_fish:1>,
    <minecraft:cake>,
    <minecraft:cookie>,
    <minecraft:melon>,
    <minecraft:beef>,
    <minecraft:cooked_beef>,
    <minecraft:chicken>,
    <minecraft:cooked_chicken>,
    <minecraft:carrot>,
    <minecraft:potato>,
    <minecraft:baked_potato>,
    <minecraft:poisonous_potato>,
    <minecraft:pumpkin_pie>,
    <minecraft:rabbit>,
    <minecraft:cooked_rabbit>,
    <minecraft:rabbit_stew>,
    <minecraft:mutton>,
    <minecraft:cooked_mutton>,
    <minecraft:beetroot>,
    <minecraft:beetroot_soup>
] as IItemStack[];
for item in ItemsToRemoveVJEI{
    mods.jei.JEI.removeAndHide(item);
}
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
recipes.removeByRecipeName("tfc:vanilla/cauldron");
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
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
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

//Удаление рецептов + скрытие
//Tools
mods.jei.JEI.removeAndHide(<minecraft:diamond_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:golden_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:iron_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:golden_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:iron_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_sword>);
mods.jei.JEI.removeAndHide(<minecraft:golden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:iron_sword>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_axe>);
mods.jei.JEI.removeAndHide(<minecraft:golden_axe>);
mods.jei.JEI.removeAndHide(<minecraft:iron_axe>);
mods.jei.JEI.removeAndHide(<minecraft:iron_hoe>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_hoe>);
mods.jei.JEI.removeAndHide(<minecraft:golden_hoe>);
//Armor
mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:golden_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:golden_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:golden_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:golden_boots>);
mods.jei.JEI.removeAndHide(<minecraft:iron_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:iron_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:iron_boots>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_boots>);

//Создание крафтов
//Цемент из ваниллы --> бетон разных цветов
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:1>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:1>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:2>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:2>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:3>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:3>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:4>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:4>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:5>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:5>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:6>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:6>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:7>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:7>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:8>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:8>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:9>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:9>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:10>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:10>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:11>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:11>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:12>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:12>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:13>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:13>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:14>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:14>).duration(10).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:concrete_powder:15>).fluidInputs([<liquid:fresh_water> * 1000]).outputs(<minecraft:concrete:15>).duration(10).EUt(8).buildAndRegister();

//Крафт стекла
furnace.addRecipe(<minecraft:glass>, <ore:sand>);

//Крафт быстрого верстака
recipes.addShapeless(<minecraft:crafting_table>,[<ore:craftingTableWood>]);

//Рельсовые приколы
recipes.addShapeless(<minecraft:chest_minecart>,[<minecraft:minecart>,<ore:chestWood>]);
recipes.addShapeless(<minecraft:furnace_minecart>,[<minecraft:minecart>,<minecraft:furnace>]);

//Водная хрень
recipes.addShapeless(<minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless(<minecraft:prismarine>, [blockquartz, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:1> * 4, [prismarine, prismarine, prismarine, prismarine]);
recipes.addShapeless(<minecraft:sea_lantern>, [glowstone, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:2>, [prismarine, dyeblack]);
 
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

//Крусибл
recipes.addShaped(<minecraft:cauldron>,
[[<ore:plateIron>, null, <ore:plateIron>],
 [<ore:plateIron>, null, <ore:plateIron>],
 [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);