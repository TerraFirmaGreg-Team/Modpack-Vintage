import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Отключение крафтов
val RemoveItemsFromJEI as IItemStack[] = [
	<minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:coal_ore>,
    <minecraft:lapis_ore>,
    <minecraft:diamond_ore>,
    <minecraft:redstone_ore>,
    <minecraft:emerald_ore>,
    <minecraft:quartz_ore>,
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
    <minecraft:beetroot_soup>,
    <minecraft:furnace>,
    <minecraft:double_plant:2>,
    //Tools
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:diamond_shovel>,
    <minecraft:golden_shovel>,
    <minecraft:iron_shovel>,
    <minecraft:diamond_sword>,
    <minecraft:golden_sword>,
    <minecraft:iron_sword>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <minecraft:iron_axe>,
    <minecraft:iron_hoe>,
    <minecraft:diamond_hoe>,
    <minecraft:golden_hoe>,
    //Armor
    <minecraft:diamond_leggings>,
    <minecraft:diamond_boots>,
    <minecraft:diamond_chestplate>,
    <minecraft:diamond_helmet>,
    <minecraft:golden_helmet>,
    <minecraft:golden_chestplate>,
    <minecraft:golden_leggings>,
    <minecraft:golden_boots>,
    <minecraft:iron_helmet>,
    <minecraft:iron_chestplate>,
    <minecraft:iron_leggings>,
    <minecraft:iron_boots>,
    <minecraft:chainmail_helmet>,
    <minecraft:chainmail_chestplate>,
    <minecraft:chainmail_leggings>,
    <minecraft:chainmail_boots>,
    <minecraft:diamond>,
    <minecraft:emerald>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}
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
//Другое
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
recipes.removeByRecipeName("minecraft:diamond_block");

//Создание крафтов

//Крафт стекла
furnace.addRecipe(<minecraft:glass>, <ore:sand>);

//Крафт быстрого верстака
recipes.addShapeless(<minecraft:crafting_table>,[<ore:craftingTableWood>]);

//Рельсовые приколы
recipes.addShapeless(<minecraft:chest_minecart>,[<minecraft:minecart>,<ore:chestWood>]);
recipes.addShapeless(<minecraft:furnace_minecart>,[<minecraft:minecart>,<minecraft:furnace>]);

//Лампа
recipes.addShaped(<minecraft:redstone_lamp>,
[[<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>],
 [<ore:stickWroughtIron>, <ore:cableGtSingleRedAlloy>, <ore:stickWroughtIron>],
 [<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>]]);

//Крюк
recipes.addShaped(<minecraft:tripwire_hook>,
[[null, <ore:ringWroughtIron>, null],
 [null, <ore:screwWroughtIron>, null],
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
 [<ore:stone>, <ore:gearWroughtIron>, <ore:stone>],
 [<ore:stone>, <ore:dustRedstone>, <ore:stone>]]);

//Варочная стойка
recipes.addShaped(<minecraft:brewing_stand>, [
[null, <ore:stickBlaze>, null],
[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

//Ведро
recipes.addShaped(<minecraft:bucket>,
[[<ore:plateCurvedWroughtIron>, <tfc:metal/bucket/blue_steel>.noReturn(), <ore:plateCurvedWroughtIron>],
 [<ore:plateCurvedWroughtIron>, <tfc:metal/bucket/red_steel>.noReturn(), <ore:plateCurvedWroughtIron>],
 [null, <ore:plateWroughtIron>, null]]);

//Крусибл
recipes.addShaped(<minecraft:cauldron>,
[[<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

//Водная хрень
recipes.addShapeless(<minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless(<minecraft:prismarine>, [<ore:blockQuartz>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:1> * 4, [<ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>]);
recipes.addShapeless(<minecraft:sea_lantern>, [<ore:glowstone>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:2>, [<ore:blockPrismarine>, <ore:dyeBlack>]);
 
//Рельсы
//Активатор рельсы
recipes.addShaped(<minecraft:golden_rail>*6,
[[<ore:stickGold>, <minecraft:stick>, <ore:stickGold>],
 [<ore:stickGold>, <ore:dustRedstone>, <ore:stickGold>],
 [<ore:stickGold>, <minecraft:stick>, <ore:stickGold>]]);
//
recipes.addShaped(<minecraft:detector_rail>*8,
[[<ore:stickWroughtIron>, null, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <ore:pressurePlateStone>, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <ore:dustRedstone>, <ore:stickWroughtIron>]]);
//
recipes.addShaped(<minecraft:detector_rail>*16,
[[<ore:stickSteel>, null, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:pressurePlateStone>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:dustRedstone>, <ore:stickSteel>]]); 
//
recipes.addShaped(<minecraft:activator_rail>*8,
[[<ore:stickWroughtIron>, <minecraft:stick>, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <minecraft:lever>, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <minecraft:stick>, <ore:stickWroughtIron>]]); 
//
recipes.addShaped(<minecraft:activator_rail>*16,
[[<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:lever>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>]]); 
//
recipes.addShaped(<minecraft:rail>*8,
[[<ore:stickWroughtIron>, <minecraft:stick>, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <minecraft:stick>, <ore:stickWroughtIron>],
 [<ore:stickWroughtIron>, <minecraft:stick>, <ore:stickWroughtIron>]]); 
//
recipes.addShaped(<minecraft:rail>*16,
[[<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>],
 [<ore:stickSteel>, <minecraft:stick>, <ore:stickSteel>]]); 

 //Фикс снопа сена
//packer.findRecipe(2, [<minecraft:wheat> * 9, <gregtech:meta_item_1:193>.withTag({Configuration: 7})], null).remove();