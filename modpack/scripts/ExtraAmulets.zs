# ExtraAmulets

import crafttweaker.item.IItemStack;

print("Initializing 'ExtraAmulets'...");


// Верстак для амулетов
recipes.remove(<extraamulets:amuletworkbench>);
recipes.addShaped(<extraamulets:amuletworkbench>, 
	[[<ore:plateGold>, <ore:plateRedSteel>, <ore:plateGold>], 
	[<ore:gemExquisiteDiamond>, <minecraft:ender_eye>, <ore:gemExquisiteDiamond>], 
	[<ore:plateGold>, <ore:workbench>, <ore:plateGold>]]);

// Амулет земли
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <ore:gemExquisiteEmerald>, <gregtech:meta_item_1:75>, <gregtech:meta_item_1:67>)
    	.outputs(<extraamulets:amulet_earth>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет огня
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:blaze_rod>, <gregtech:meta_item_1:63>, <gregtech:meta_item_1:66>)
    	.outputs(<extraamulets:amulet_fire>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет воды
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <extrabees:propolis>, <gregtech:meta_item_1:73>, <gregtech:meta_item_1:65>)
    	.outputs(<extraamulets:amulet_water>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет ветра
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:feather>, <gregtech:meta_item_1:71>, <gregtech:meta_item_1:65>)
    	.outputs(<extraamulets:amulet_wind>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет мягкой лапки
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:wool>, <gregtech:meta_item_1:63>, <gregtech:meta_item_1:70>)
    	.outputs(<extraamulets:amulet_cats>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет рабочего
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <ore:gemExquisiteDiamond>, <gregtech:meta_item_1:67>, <gregtech:meta_item_1:65>)
    	.outputs(<extraamulets:amulet_tools>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет дракона
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:end_rod>, <gregtech:meta_item_1:72>, <gregtech:meta_item_1:68>)
    	.outputs(<extraamulets:amulet_dragon>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет бесконечности
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:clock>, <gregtech:meta_item_1:75>, <gregtech:meta_item_1:66>)
    	.outputs(<extraamulets:amulet_infinite>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет щита
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:flint>, <gregtech:meta_item_1:72>, <gregtech:meta_item_1:62>)
    	.outputs(<extraamulets:amulet_shield>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет ведьмы
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <ore:gemExquisiteRuby>, <gregtech:meta_item_1:72>, <gregtech:meta_item_1:67>)
    	.outputs(<extraamulets:amulet_witches>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет инженера
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <ore:gearSmallSteel>, <gregtech:meta_item_1:71>, <gregtech:meta_item_1:69>)
    	.outputs(<extraamulets:amulet_engineer_ic>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет аниме феи
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <appliedenergistics2:material:9>, <gregtech:meta_item_1:71>, <gregtech:meta_item_1:64>)
    	.outputs(<extraamulets:amulet_anime_1>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет алхимика
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <ore:gemExquisiteSapphire>, <gregtech:meta_item_1:76>, <gregtech:meta_item_1:73>)
    	.outputs(<extraamulets:amulet_alchemist>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет книжной змеи
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:book>, <gregtech:meta_item_1:76>, <gregtech:meta_item_1:66>)
    	.outputs(<extraamulets:amulet_books>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет гриба
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:red_mushroom>, <gregtech:meta_item_1:76>, <gregtech:meta_item_1:75>)
    	.outputs(<extraamulets:amulet_mushrooms>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет морского дна
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <minecraft:clay_ball>, <gregtech:meta_item_1:74>, <gregtech:meta_item_1:70>)
    	.outputs(<extraamulets:amulet_seabed>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет шара
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <immersiveengineering:cloth_device:1>, <gregtech:meta_item_1:76>, <gregtech:meta_item_1:75>)
    	.outputs(<extraamulets:amulet_balloons_1>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет pixelmon
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <gregtech:meta_item_1:281>, <gregtech:meta_item_1:76>, <gregtech:meta_item_1:62>)
    	.outputs(<extraamulets:amulet_pixelmon>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();

// Амулет пчелы
assembler.recipeBuilder()
    	.inputs(<ore:string> * 8, <appliedenergistics2:material:45> * 4, <forestry:crafting_material:1> * 2, <extraamulets:crystal_improvements>, <minecraft:nether_star>, <ore:dustEnderEye>, <forestry:bee_combs>, <gregtech:meta_item_1:63>, <gregtech:meta_item_1:66>)
    	.outputs(<extraamulets:amulet_bee>)
    	.duration(60 * 20)
	.EUt(512)
	.buildAndRegister();


print("Initialized 'ExtraAmulets'");