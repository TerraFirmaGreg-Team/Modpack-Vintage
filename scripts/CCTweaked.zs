import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

//Удаление рецептов
recipes.remove(<computercraft:computer>);
recipes.remove(<computercraft:computer:16384>);
recipes.remove(<computercraft:command_computer>);
recipes.removeByRecipeName("computercraft:normal_pocket_computer");
recipes.removeByRecipeName("computercraft:advanced_pocket_computer_upgrade");
recipes.removeByRecipeName("computercraft:advanced_pocket_computer");
recipes.removeByRecipeName("computercraft:advanced_turtle_upgrade");
recipes.remove(<computercraft:turtle_expanded>.withTag({}));
recipes.remove(<computercraft:turtle_advanced>.withTag({}));
recipes.remove(<computercraft:peripheral:3>);
recipes.remove(<computercraft:peripheral:4>);
recipes.remove(<computercraft:peripheral:5>);
recipes.remove(<computercraft:cable>);
recipes.remove(<computercraft:cable:1>);
recipes.remove(<computercraft:peripheral>);
recipes.remove(<computercraft:wired_modem_full>);
recipes.remove(<computercraft:peripheral:2>);
recipes.remove(<computercraft:peripheral:1>);
recipes.remove(<computercraft:advanced_modem>);
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_hoe"}));
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_axe"}));
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:crafting_table"}));
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_shovel"}));
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_pickaxe"}));
recipes.remove(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_sword"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_hoe"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_axe"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:crafting_table"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_shovel"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_pickaxe"}));
recipes.remove(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_sword"}));

//Добавление рецептов
//Computer
assembler.recipeBuilder().inputs(<gregtech:machine_casing:1>, <ore:circuitAdvanced>*4, <ore:rotorPlastic>*2, <ore:wireFineAnnealedCopper>*32, <appliedenergistics2:storage_cell_16k>.withTag({})).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10})).outputs(<computercraft:computer>).duration(500).EUt(412).buildAndRegister();

//Advanced computer
assembler.recipeBuilder().inputs(<gregtech:machine_casing:2>, <ore:circuitElite>*4, <ore:rotorPlastic>*2, <ore:wireFineAnnealedCopper>*32, <appliedenergistics2:storage_cell_64k>.withTag({})).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9})).outputs(<computercraft:computer:16384>).duration(500).EUt(412).buildAndRegister();

//Pocket computer
assembler.recipeBuilder().inputs(<ore:plateIron>*4, <appliedenergistics2:material:41>, <ore:circuitAdvanced>*4, <ore:rotorPlastic>*2, <ore:wireFineAnnealedCopper>*32, <appliedenergistics2:storage_cell_16k>.withTag({})).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<computercraft:pocket_computer>.withTag({})).duration(500).EUt(412).buildAndRegister();

//Advanced pocket computer
assembler.recipeBuilder().inputs(<ore:plateGold>*4, <appliedenergistics2:material:41>, <ore:circuitElite>*4, <ore:rotorPlastic>*2, <ore:wireFineAnnealedCopper>*32, <appliedenergistics2:storage_cell_64k>.withTag({})).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7})).outputs(<computercraft:pocket_computer:1>.withTag({})).duration(500).EUt(412).buildAndRegister();

//Modem
assembler.recipeBuilder().inputs(<appliedenergistics2:material:41>, <ore:plateSteel>, <ore:plateIron>*5, <ore:wireFineRedAlloy>*4, <appliedenergistics2:material:42>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6})).outputs(<computercraft:peripheral:1>).duration(500).EUt(412).buildAndRegister();

//Advanced modem
assembler.recipeBuilder().inputs(<appliedenergistics2:material:41>*2, <ore:plateSteel>, <ore:plateGold>*5, <ore:wireFineRedAlloy>*4, <appliedenergistics2:material:42>*4).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5})).outputs(<computercraft:advanced_modem>).duration(500).EUt(412).buildAndRegister();

//Monitor
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:paneGlass>, <ore:circuitBasic>*2, <ore:wireFineCopper>*32, <ore:itemIlluminatedPanel>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4})).outputs(<computercraft:peripheral:2>).duration(500).EUt(412).buildAndRegister();

//Monitor advanced
assembler.recipeBuilder().inputs(<ore:plateGold>*5, <ore:paneGlass>, <ore:circuitGood>*2, <ore:wireFineCopper>*32, <ore:itemIlluminatedPanel>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3})).outputs(<computercraft:peripheral:4>).duration(500).EUt(412).buildAndRegister();

//Printer
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:circuitGood>*3, <gregtech:machine_casing:1>, <ore:dye>*32, <ore:paper>*16).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).outputs(<computercraft:peripheral:3>).duration(500).EUt(412).buildAndRegister();

//Speaker
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:circuitGood>*3, <gregtech:machine_casing:1>, <minecraft:noteblock>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).outputs(<computercraft:peripheral:5>).duration(500).EUt(412).buildAndRegister();

//Disk Drive
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:circuitGood>*3, <appliedenergistics2:drive>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 30})).outputs(<computercraft:peripheral>).duration(500).EUt(412).buildAndRegister();

//Wired modem block
assembler.recipeBuilder().inputs(<gregtech:metal_casing:4>, <ore:circuitGood>*3, <ore:foilRubber>*4, <ore:cableGtSingleIron>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 29})).outputs(<computercraft:wired_modem_full>).duration(500).EUt(412).buildAndRegister();

//Wired modem cover
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:circuitGood>*3, <ore:foilRubber>*4, <ore:cableGtSingleIron>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 28})).outputs(<computercraft:cable:1>).duration(500).EUt(412).buildAndRegister();

//Networking cable
assembler.recipeBuilder().inputs(<ore:foilRubber>*4, <ore:cableGtSingleIron>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 27})).outputs(<computercraft:cable>*8).duration(500).EUt(412).buildAndRegister();

//Turtle
assembler.recipeBuilder().inputs(<ore:plateIron>*5, <ore:circuitGood>*3, <gregtech:meta_item_1:32652>*2, <gregtech:meta_item_1:32631>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 26})).outputs(<computercraft:turtle_expanded>.withTag({})).duration(500).EUt(412).buildAndRegister();

//Advanced Turtle
assembler.recipeBuilder().inputs(<ore:plateGold>*5, <ore:circuitAdvanced>*3, <gregtech:meta_item_1:32653>*2, <gregtech:meta_item_1:32633>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 25})).outputs(<computercraft:turtle_advanced>.withTag({})).duration(500).EUt(412).buildAndRegister();

//1 лвл
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_hoe"}), [<computercraft:turtle_expanded>.withTag({}), <gregtech:meta_tool:4>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_axe"}), [<computercraft:turtle_expanded>.withTag({}), <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_shovel"}), [<computercraft:turtle_expanded>.withTag({}), <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_pickaxe"}), [<computercraft:turtle_expanded>.withTag({}), <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:diamond_sword"}), [<computercraft:turtle_expanded>.withTag({}), <gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({rightUpgrade: "minecraft:crafting_table"}), [<computercraft:turtle_expanded>.withTag({}), <ore:craftingTableWood>]);

//2 лвл
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_hoe"}), [<computercraft:turtle_advanced>.withTag({}), <gregtech:meta_tool:4>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_axe"}), [<computercraft:turtle_advanced>.withTag({}), <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_shovel"}), [<computercraft:turtle_advanced>.withTag({}), <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_pickaxe"}), [<computercraft:turtle_advanced>.withTag({}), <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:diamond_sword"}), [<computercraft:turtle_advanced>.withTag({}), <gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "diamond"}})]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({rightUpgrade: "minecraft:crafting_table"}), [<computercraft:turtle_advanced>.withTag({}), <ore:craftingTableWood>]);
