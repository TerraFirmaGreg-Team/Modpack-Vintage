import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

//Отключение крафтов
val RemoveItemsFromJEI as IItemStack[] = [
    //Fence Gates
    <minecraft:fence_gate>,
    <minecraft:spruce_fence_gate>,
    <minecraft:birch_fence_gate>,
    <minecraft:jungle_fence_gate>,
    <minecraft:dark_oak_fence_gate>,
    <minecraft:acacia_fence_gate>,
    //Gates
    <minecraft:fence>,
    <minecraft:spruce_fence>,
    <minecraft:birch_fence>,
    <minecraft:jungle_fence>,
    <minecraft:dark_oak_fence>,
    <minecraft:acacia_fence>,
    //Ores
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:coal_ore>,
    <minecraft:lapis_ore>,
    <minecraft:diamond_ore>,
    <minecraft:redstone_ore>,
    <minecraft:emerald_ore>,
    <minecraft:quartz_ore>,
    //Food
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
    <minecraft:wooden_sword>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_hoe>,
    <minecraft:stone_sword>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_axe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_hoe>,
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
    //Other
    <minecraft:crafting_table>,
    <minecraft:furnace>,
    <minecraft:chest>,
    <minecraft:trapped_chest>,
    <minecraft:stone_pressure_plate>,
    <minecraft:wooden_pressure_plate>,
    <minecraft:wooden_button>,
    <minecraft:stone_button>,
    <minecraft:trapdoor>,
    <minecraft:wooden_door>,
    <minecraft:spruce_door>,
    <minecraft:birch_door>,
    <minecraft:jungle_door>,
    <minecraft:acacia_door>,
    <minecraft:dark_oak_door>,
    <minecraft:reeds>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

val ItemsToRemove as IItemStack[] = [
    //Leather Armor
    <minecraft:leather_helmet>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_leggings>,
    <minecraft:leather_boots>,
    <minecraft:bucket>,
    <minecraft:enchanting_table>,
    <minecraft:name_tag>
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

//Remove Workbench
assembler.findRecipe(6, [<ore:logWood>.firstItem, <minecraft:flint>], null).remove();

//Remove Furnace
assembler.findRecipe(7, [<ore:stoneCobble>.firstItem * 8, <minecraft:flint>, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();

//Remove Wooden Pressure Plate
assembler.findRecipe(7, [<ore:plankWood>.firstItem * 2, <ore:springIron>.firstItem], null).remove();

//Remove Stone Pressure Plate
assembler.findRecipe(7, [<minecraft:stone_slab> * 2, <ore:springIron>.firstItem], null).remove();

//Remove Wooden Trapdoor
assembler.findRecipe(4, [<ore:plankWood>.firstItem * 3, <gregtech:meta_item_1:461>.withTag({Configuration: 3})], null).remove();

//Remove Wooden Trapdoor
assembler.findRecipe(16, [<ore:plateIron>.firstItem * 4, <minecraft:trapdoor>], null).remove();

//Другое
recipes.removeByRecipeName("minecraft:stone_pressure_plate");
recipes.removeByRecipeName("minecraft:light_weighted_pressure_plate");
recipes.removeByRecipeName("minecraft:bone_meal_from_bone");
recipes.removeByRecipeName("minecraft:iron_door");
recipes.removeByRecipeName("minecraft:tripwire_hook");
recipes.removeByRecipeName("minecraft:stick");
recipes.removeByRecipeName("minecraft:diamond_block");

//Обычное золотое яблоко
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_ingot> * 8], null).remove();
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_ingot> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple>)
    .duration(20).EUt(30).buildAndRegister();

//Зачарованное золотое яблоко
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block> * 8], null).remove();
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_block> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple:1>)
    .duration(20).EUt(30).buildAndRegister();

//Создание крафтов
//Iron Trapdoor
assembler.recipeBuilder()
    .inputs(<ore:plateIron>.firstItem * 4, <ore:trapdoorWood>)
    .outputs(<minecraft:iron_trapdoor>)
    .duration(100).EUt(16).buildAndRegister();

//Лампа
recipes.addShaped(<minecraft:redstone_lamp>,
[[<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>],
 [<ore:stickWroughtIron>, <ore:cableGtSingleRedAlloy>, <ore:stickWroughtIron>],
 [<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>]]);

//Удочка
recipes.addShaped(<minecraft:fishing_rod>,
[[null, null, <minecraft:stick>],
 [null, <minecraft:stick>, <ore:string>],
 [<minecraft:stick>, null, <ore:string>]]);

//Чар стол
recipes.addShaped(<minecraft:enchanting_table>,
[[null, <minecraft:book>, null],
 [<ore:gemFlawless>, <ore:obsidian>, <ore:gemFlawless>],
 [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

//Поршень
recipes.addShaped(<minecraft:piston>,
[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
 [<ore:gearWroughtIron>, <ore:fenceWood>, <ore:gearWroughtIron>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

//Ведро
recipes.addShaped(<minecraft:bucket>,
[[<ore:plateWroughtIron>, <tfc:metal/bucket/blue_steel>.noReturn(), <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, <tfc:metal/bucket/red_steel>.noReturn(), <ore:plateWroughtIron>],
 [null, <ore:plateWroughtIron>, null]]);

//Водная хрень
recipes.addShapeless(<minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless(<minecraft:prismarine>, [<ore:blockQuartz>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:1> * 4, [<ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>]);
recipes.addShapeless(<minecraft:sea_lantern>, [<ore:glowstone>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:2>, [<ore:blockPrismarine>, <ore:dyeBlack>]);

//Рычаг
recipes.addShaped(<minecraft:lever>,
[[null, <ore:buttonStone>, null],
 [null, <ore:stickWood>, null]]);

//Бирка
recipes.addShaped(<minecraft:name_tag>,
[[<ore:string>, <ore:string>, null],
 [<ore:string>, <minecraft:paper>, null],
 [<ore:string>, <ore:string>, null]]);

//Повторитель
recipes.addShaped(<minecraft:repeater>,
[[<ore:screwIron>, null, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:stickRedAlloy>,<ore:pressurePlateStone>]]);

//Компаратор - обычный
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateCertusQuartz>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:pressurePlateStone>]]);

//Компаратор - кварц
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateNetherQuartz>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:pressurePlateStone>]]);

//Компаратор - кварцит
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateQuartzite>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:pressurePlateStone>]]);

//Детектор света - обычный
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, <ore:plateCertusQuartz>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

//Детектор света - кварц
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

//Детектор света - кварцит
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateQuartzite>, <ore:plateQuartzite>, <ore:plateQuartzite>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);