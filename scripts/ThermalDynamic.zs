import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

val cable512 = <ore:cableGtSingleElectrum>|<ore:cableGtSingleGold>|<ore:cableGtSingleHvSuperconductor>|<ore:cableGtSingleHvSuperconductorBase>|<ore:cableGtSingleKanthal>|<ore:cableGtSingleSilver>;
val cable2048 = <ore:cableGtSingleAluminium>|<ore:cableGtSingleBlackSteel>|<ore:cableGtSingleEvSuperconductor>|<ore:cableGtSingleEvSuperconductorBase>|<ore:cableGtSingleNichrome>|<ore:cableGtSingleSteel>|<ore:cableGtSingleTitanium>;
val cable8192 = <ore:cableGtSingleGraphene>|<ore:cableGtSingleIvSuperconductor>|<ore:cableGtSingleIvSuperconductorBase>|<ore:cableGtSingleOsmium>|<ore:cableGtSinglePalladium>|<ore:cableGtSinglePlatinum>|<ore:cableGtSingleTungsten>|<ore:cableGtSingleTungstenSteel>;

//Удаление рецептов
recipes.removeByRecipeName("thermalfoundation:material_5");
recipes.removeByRecipeName("thermalfoundation:material_6");
recipes.remove(<thermalfoundation:material:97>);
recipes.remove(<thermalfoundation:material:98>);
recipes.remove(<thermalfoundation:material:99>);
recipes.remove(<thermalfoundation:material:100>);
recipes.remove(<thermalfoundation:material:101>);
recipes.remove(<thermalfoundation:material:102>);
recipes.remove(<thermalfoundation:material:103>);
recipes.remove(<thermalfoundation:material:818>);
recipes.remove(<thermalfoundation:security>);
recipes.remove(<thermalfoundation:diagram_redprint>);
recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.remove(<thermalfoundation:fertilizer:2>);
recipes.remove(<thermalfoundation:bait>);
recipes.remove(<thermalfoundation:bait:1>);
recipes.remove(<thermalfoundation:bait:2>);
recipes.remove(<thermalfoundation:material:1024>);
recipes.remove(<thermalfoundation:material:1025>);
recipes.remove(<thermalfoundation:material:1026>);
recipes.remove(<thermalfoundation:material:1027>);
recipes.remove(<thermalfoundation:material:2049>);
recipes.remove(<thermalfoundation:material:2051>);
recipes.remove(<thermalfoundation:material:2053>);

recipes.remove(<thermalfoundation:wrench>);
recipes.addShaped(<thermalfoundation:wrench>,
[[<ore:plateCurvedTin>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:plateCurvedTin>],
 [null, <ore:stickIron>, null],
 [null, <ore:stickIron>, null]]);

recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>,
[[<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>],
 [<ore:wireGtSingleGold>, <ore:circuitBasic>, <ore:wireGtSingleGold>],
 [null, <ore:plateIron>, null]]);

//Удаление рецептов fluxduct's
recipes.remove(<thermaldynamics:duct_0>);
recipes.remove(<thermaldynamics:duct_0:1>);
recipes.remove(<thermaldynamics:duct_0:2>);
recipes.remove(<thermaldynamics:duct_0:3>);
recipes.remove(<thermaldynamics:duct_0:4>);
recipes.remove(<thermaldynamics:duct_0:5>);
recipes.remove(<thermaldynamics:duct_0:6>);
recipes.remove(<thermaldynamics:duct_0:7>);
recipes.remove(<thermaldynamics:duct_0:8>);
recipes.remove(<thermaldynamics:duct_0:9>);
//Не готовые FluxDucts
assembler.recipeBuilder().inputs(<ore:blockGlass>*2, <ore:screwSteel>*2, cable8192, <ore:foilElectrum>*8).fluidInputs([<liquid:redstone>*5184]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 16})).outputs(<thermaldynamics:duct_0:6>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:blockGlass>*2, <ore:screwSteel>*2, cable8192, <ore:foilEglinSteel>*8).fluidInputs([<liquid:redstone>*6912]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 16})).outputs(<thermaldynamics:duct_0:7>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:blockGlass>*2, <ore:screwSteel>*2, cable8192, <ore:foilEnderium>*8).fluidInputs([<liquid:redstone>*8640]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 16})).outputs(<thermaldynamics:duct_0:8>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:blockGlass>*2, <ore:screwSteel>*2, cable8192, <ore:foilHssg>*8).fluidInputs([<liquid:cryotheum>*864]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 16})).outputs(<thermaldynamics:duct_0:9>*8).duration(160).EUt(72).buildAndRegister();
//Готовые FluxDucts
assembler.recipeBuilder().inputs(cable512, <ore:blockGlass>*2, <ore:screwSteel>*2).fluidInputs([<liquid:redstone>*1728]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(cable2048, <ore:blockGlass>*2, <ore:screwSteel>*2).fluidInputs([<liquid:redstone>*3456]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0:1>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_0:6>*8).fluidInputs([<liquid:redstone>*5184]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0:2>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_0:7>*8).fluidInputs([<liquid:redstone>*6912]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0:3>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_0:8>*8).fluidInputs([<liquid:redstone>*8640]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0:4>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_0:9>*8).fluidInputs([<liquid:cryotheum>*864]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 17})).outputs(<thermaldynamics:duct_0:5>*8).duration(160).EUt(72).buildAndRegister();

//Удаление рецептов fluidduct's
recipes.remove(<thermaldynamics:duct_16>);
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.remove(<thermaldynamics:duct_16:4>);
recipes.remove(<thermaldynamics:duct_16:6>);
recipes.remove(<thermaldynamics:duct_16:1>);
recipes.remove(<thermaldynamics:duct_16:3>);
recipes.remove(<thermaldynamics:duct_16:5>);
recipes.remove(<thermaldynamics:duct_16:7>);
//Закрытые fluidDucts
assembler.recipeBuilder().inputs(<ore:plateCurvedLead>*2, <ore:screwSteel>*4, <ore:pipeLargeBronze>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:1>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateCurvedLead>*2, <ore:screwSteel>*4, <ore:pipeLargePlastic>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:3>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateCurvedLead>*2, <ore:screwSteel>*4, <ore:pipeLargeTungstenSteel>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:5>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateCurvedLead>*2, <ore:screwSteel>*4, <ore:pipeLargeEnderium>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:7>*8).duration(160).EUt(72).buildAndRegister();
//Открытые fluidDucts
assembler.recipeBuilder().inputs(<ore:paneGlass>*4, <ore:screwSteel>*4, <ore:pipeLargeBronze>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:1>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:paneGlass>*4, <ore:screwSteel>*4, <ore:pipeLargePlastic>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:3>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:paneGlass>*4, <ore:screwSteel>*4, <ore:pipeLargeTungstenSteel>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:5>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:paneGlass>*4, <ore:screwSteel>*4, <ore:pipeLargeEnderium>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15})).outputs(<thermaldynamics:duct_16:7>*8).duration(160).EUt(72).buildAndRegister();

//Удаление рецептов viaduct's
recipes.remove(<thermaldynamics:duct_64:3>);
recipes.remove(<thermaldynamics:duct_64>);
recipes.remove(<thermaldynamics:duct_64:1>);
recipes.remove(<thermaldynamics:duct_64:2>);
//Виадуки 1лвл
assembler.recipeBuilder().inputs(<ore:stickBronze>*8, <ore:screwBronze>*32).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 14})).outputs(<thermaldynamics:duct_64:3>*4).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_64:3>).fluidInputs([<liquid:enderium>*288]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 14})).outputs(<thermaldynamics:duct_64>).duration(160).EUt(72).buildAndRegister();
//Виадуки 2лвл
assembler.recipeBuilder().inputs(<ore:stickSteel>*8, <ore:screwSteel>*32).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 14})).outputs(<thermaldynamics:duct_64:1>*4).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<thermaldynamics:duct_64:1>).fluidInputs([<liquid:polyetheretherketone>*288]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 14})).outputs(<thermaldynamics:duct_64:2>).duration(160).EUt(72).buildAndRegister();

//Удаление рецептов tubemodule's
recipes.remove(<thermaldynamics:servo>);
recipes.remove(<thermaldynamics:servo:1>);
recipes.remove(<thermaldynamics:servo:2>);
recipes.remove(<thermaldynamics:servo:3>);
recipes.remove(<thermaldynamics:servo:4>);
recipes.remove(<thermaldynamics:filter>);
recipes.remove(<thermaldynamics:filter:1>);
recipes.remove(<thermaldynamics:filter:2>);
recipes.remove(<thermaldynamics:filter:3>);
recipes.remove(<thermaldynamics:filter:4>);
recipes.remove(<thermaldynamics:retriever>);
recipes.remove(<thermaldynamics:retriever:1>);
recipes.remove(<thermaldynamics:retriever:2>);
recipes.remove(<thermaldynamics:retriever:3>);
recipes.remove(<thermaldynamics:retriever:4>);
recipes.remove(<thermaldynamics:relay>);
//Серво
recipes.addShaped(<thermaldynamics:servo>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32630>, <ore:circuitBasic>, <gregtech:meta_item_1:32630>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:servo:1>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32631>, <ore:circuitGood>, <gregtech:meta_item_1:32631>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:servo:2>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32632>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32632>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:servo:3>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32633>, <ore:circuitExtreme>, <gregtech:meta_item_1:32633>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:servo:4>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32634>, <ore:circuitElite>, <gregtech:meta_item_1:32634>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
//Фильтры
recipes.addShaped(<thermaldynamics:filter>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32610>, <ore:circuitBasic>, <gregtech:meta_item_1:32610>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:filter:1>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32611>, <ore:circuitGood>, <gregtech:meta_item_1:32611>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:filter:2>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32612>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32612>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:filter:3>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32613>, <ore:circuitExtreme>, <gregtech:meta_item_1:32613>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:filter:4>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32614>, <ore:circuitElite>, <gregtech:meta_item_1:32614>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
//Ретриверы
recipes.addShaped(<thermaldynamics:retriever>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32690>, <ore:circuitBasic>, <gregtech:meta_item_1:32690>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:retriever:1>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32691>, <ore:circuitGood>, <gregtech:meta_item_1:32691>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:retriever:2>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32692>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32692>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:retriever:3>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32693>, <ore:circuitExtreme>, <gregtech:meta_item_1:32693>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
recipes.addShaped(<thermaldynamics:retriever:4>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<gregtech:meta_item_1:32694>, <ore:circuitElite>, <gregtech:meta_item_1:32694>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
//Реле
recipes.addShaped(<thermaldynamics:relay>,
[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
 [<ore:wireGtSingleRedAlloy>, <ore:foilRedAlloy>, <ore:wireGtSingleRedAlloy>],
 [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);

//Удаление StructuralDuct
recipes.remove(<thermaldynamics:duct_48>);
//Рецепт SrtructuralDuct
assembler.recipeBuilder().inputs(<gtadditions:ga_meta_item:32130>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 12})).outputs(<thermaldynamics:duct_48>*8).duration(160).EUt(72).buildAndRegister();


//Удаление рецептов itemduct's
recipes.remove(<thermaldynamics:duct_32>);
recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.remove(<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:2>);
recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:3>);
recipes.remove(<thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:4>);
recipes.remove(<thermaldynamics:duct_32:4>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:4>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:5>);
recipes.remove(<thermaldynamics:duct_32:5>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:5>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:6>);
recipes.remove(<thermaldynamics:duct_32:6>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:6>.withTag({DenseType: 2 as byte}));
recipes.remove(<thermaldynamics:duct_32:7>);
recipes.remove(<thermaldynamics:duct_32:7>.withTag({DenseType: 1 as byte}));
recipes.remove(<thermaldynamics:duct_32:7>.withTag({DenseType: 2 as byte}));
//Крафты
assembler.recipeBuilder().inputs(<ore:pipeLargeWood>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeBronze>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:1>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargePolytetrafluoroethylene>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:2>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeTungstenSteel>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:3>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeNiobiumTitanium>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:4>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeEnderium>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:5>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeUltimet>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:6>*8).duration(160).EUt(72).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:pipeLargeNeutronium>, <ore:plateCurvedLead>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13})).outputs(<thermaldynamics:duct_32:7>*8).duration(160).EUt(72).buildAndRegister();

















