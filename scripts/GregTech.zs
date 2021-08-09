import crafttweaker.item.IItemStack;
//import crafttweaker.liquid.ILiquidStack;
//import crafttweaker.item.IIngredient;
//import crafttweaker.oredict.IOreDictEntry;
//import crafttweaker.item.IItemTransformer;

//import mods.gregtech.recipe.PBFRecipeBuilder; //PBF
//import mods.gregtech.recipe.RecipeMaps;       //PBF
//import mods.gregtech.recipe.RecipeMap;

//Удаление + скрытие
mods.jei.JEI.removeAndHide(<gregtech:machine:807>);
mods.jei.JEI.removeAndHide(<gregtech:machine:808>);
mods.jei.JEI.removeAndHide(<gregtech:machine:2553>);
mods.jei.JEI.removeAndHide(<gregtech:machine:510>);
mods.jei.JEI.removeAndHide(<gregtech:metal_casing:1>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:2356>);
mods.jei.JEI.removeAndHide(<gtadditions:ga_meta_item:32037>);
mods.jei.JEI.removeAndHide(<gtadditions:ga_meta_item:32038>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32015>);

//Переработка танков в Arc
arc_furnace.recipeBuilder().inputs(<gregtech:machine:812>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10095>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:813>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10184>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:814>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10183>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:815>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10072>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:816>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10235>*3).duration(750).EUt(34).buildAndRegister();

//Реплейс всех печек на печной блок
recipes.replaceAllOccurences(<minecraft:furnace>, <contenttweaker:furnaceblock>);
recipes.addShapeless (<contenttweaker:furnaceblock>, [<minecraft:furnace>]);

//Сундуки можно переработать
arc_furnace.recipeBuilder().inputs(<gregtech:machine:802>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10095>*10).EUt(8).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:803>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10184>*10).EUt(30).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:804>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10183>*10).EUt(120).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:805>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10072>*10).EUt(500).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:806>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10235>*10).EUt(1560).duration(400).buildAndRegister();

//Исправление рецепта на бумагу
//Крафт бумажной пыли
recipes.addShaped(<gregtech:meta_item_1:2325>*2,
[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null]]);
//Крафт бамаги из пыли
recipes.addShaped(<gregtech:meta_item_1:2325>*2,
[[null, <ore:slabStonePolished>, null],
 [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
 [null, <ore:slabStonePolished>, null]]);

//Фикс кейзингов
recipes.removeByRecipeName("gregtech:casing_invar_heatproof");
recipes.removeByRecipeName("gregtech:casing_aluminium_frostproof");

//Лава из незерака
fluid_extractor.recipeBuilder().inputs(<ore:netherrack>).fluidOutputs(<fluid:lava> * 250).EUt(140).duration(330).buildAndRegister();
	
//Лава из магма блока
fluid_extractor.recipeBuilder().inputs(<minecraft:magma>).fluidOutputs(<fluid:lava> * 750).EUt(140).duration(220).buildAndRegister();
	
//Гравий --> кремень
forge_hammer.recipeBuilder().inputs([<ore:gravel> * 1]).outputs(<minecraft:flint> * 1).duration(45).EUt(5).buildAndRegister();

//Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder().inputs([<ore:sugarcane> * 3]).outputs(<ore:dustPaper>.firstItem * 2).duration(105).EUt(4).buildAndRegister();

//Песок+Гравий --> цемент тфк
mixer.recipeBuilder().inputs(<ore:sand>*4,<ore:gravel>*4).outputs(<tfc:aggregate>*8).duration(20).EUt(4).buildAndRegister();

//Жидкий воздух --> Воздух
fluid_heater.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).fluidInputs(<liquid:liquid_oxygen> * 100).fluidOutputs(<liquid:oxygen> * 1000)  .duration(400).EUt(32).buildAndRegister();

//Фиксы корпусов
//Удаление
assembler.findRecipe(16, [<gregtech:meta_item_1:12197>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12184>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12001>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12183>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12072>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12235>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12207>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12859>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12311>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
//assembler.findRecipe(16, [<gregtech:meta_item_1:12993>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
//Создание
assembler.recipeBuilder().inputs(<ore:plateWroughtIron>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:1>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateAluminium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:2>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateStainlessSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:3>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTitanium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:4>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTungstenSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:5>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateRhodiumPlatedPalladium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:6>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateOsmiridium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:7>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTritanium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:8>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateNeutronium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:9>).duration(20).EUt(16).buildAndRegister();
	
//Малоэффективный рецепт резиновой пластины
alloy_smelter.recipeBuilder().inputs(<ore:ingotRubber> * 2).notConsumable(<metaitem:shape.mold.plate>).outputs(<ore:plateRubber>.firstItem * 1).duration(140).EUt(8).buildAndRegister();

//Крафт некоторых блоков в компрессоре, которые не были пофикшены Gregicality
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

//Удаление рецепта LV кейзинга
recipes.removeByRecipeName("gregtech:casing_lv");

//Фикс красной и синей стали
recipes.removeByRecipeName("gregtech:dust_blue_steel");
recipes.removeByRecipeName("gregtech:dust_red_steel");
recipes.addShapeless (<gregtech:meta_item_1:2233>*8, [<gregtech:meta_item_1:2227>, <gregtech:meta_item_1:2230>, <gregtech:meta_item_1:2184>, <gregtech:meta_item_1:2184>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>]);
recipes.addShapeless (<gregtech:meta_item_1:2232>*8, [<gregtech:meta_item_1:2228>, <gregtech:meta_item_1:2094>, <gregtech:meta_item_1:2184>, <gregtech:meta_item_1:2184>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>, <gregtech:meta_item_1:2231>]);

//Отключение крафта 2х слиток 1х молот = пластина
recipes.removeShaped(<ore:plateAluminium>);
recipes.removeShaped(<ore:plateAmericium>);
recipes.removeShaped(<ore:plateAntimony>);
recipes.removeShaped(<ore:plateBeryllium>);
recipes.removeShaped(<ore:plateChrome>);
recipes.removeShaped(<ore:plateCobalt>);
recipes.removeShaped(<ore:plateCopper>);
recipes.removeShaped(<ore:plateErbium>);
recipes.removeShaped(<ore:plateEuropium>);
recipes.removeShaped(<ore:plateGallium>);
recipes.removeShaped(<ore:plateGold>);
recipes.removeShaped(<ore:plateIridium>);
recipes.removeShaped(<ore:plateIron>);
recipes.removeShaped(<ore:plateLead>);
recipes.removeShaped(<ore:plateLithium>);
recipes.removeShaped(<ore:plateNeodymium>);
recipes.removeShaped(<ore:plateDarmstadtium>);
recipes.removeShaped(<ore:plateMagnesium>);
recipes.removeShaped(<ore:plateNickel>);
recipes.removeShaped(<ore:plateNiobium>);
recipes.removeShaped(<ore:plateOsmium>);
recipes.removeShaped(<ore:platePalladium>);
recipes.removeShaped(<ore:platePlatinum>);
recipes.removeShaped(<ore:platePlutonium>);
recipes.removeShaped(<ore:platePlutonium241>);
recipes.removeShaped(<ore:platePotassium>);
recipes.removeShaped(<ore:platePraseodymium>);
recipes.removeShaped(<ore:platePromethium>);
recipes.removeShaped(<ore:plateRubidium>);
recipes.removeShaped(<ore:plateSamarium>);
recipes.removeShaped(<ore:plateScandium>);
recipes.removeShaped(<ore:plateSilicon>);
recipes.removeShaped(<ore:plateSilver>);
recipes.removeShaped(<ore:plateSodium>);
recipes.removeShaped(<ore:plateStrontium>);
recipes.removeShaped(<ore:plateTantalum>);
recipes.removeShaped(<ore:plateTellurium>);
recipes.removeShaped(<ore:plateTerbium>);
recipes.removeShaped(<ore:plateThorium>);
recipes.removeShaped(<ore:plateThulium>);
recipes.removeShaped(<ore:plateTin>);
recipes.removeShaped(<ore:plateTitanium>);
recipes.removeShaped(<ore:plateTungsten>);
recipes.removeShaped(<ore:plateUranium>);
recipes.removeShaped(<ore:plateUranium235>);
recipes.removeShaped(<ore:plateVanadium>);
recipes.removeShaped(<ore:plateYttrium>);
recipes.removeShaped(<ore:plateZinc>);
recipes.removeShaped(<ore:plateZinc>);
recipes.removeShaped(<ore:plateAnnealedCopper>);
recipes.removeShaped(<ore:plateBatteryAlloy>);
recipes.removeShaped(<ore:plateBrass>);
recipes.removeShaped(<ore:plateBronze>);
recipes.removeShaped(<ore:plateCupronickel>);
recipes.removeShaped(<ore:plateElectrum>);
recipes.removeShaped(<ore:plateInvar>);
recipes.removeShaped(<ore:plateKanthal>);
recipes.removeShaped(<ore:plateMagnalium>);
recipes.removeShaped(<ore:plateNichrome>);
recipes.removeShaped(<ore:plateNiobiumNitride>);
recipes.removeShaped(<ore:platePigIron>);
recipes.removeShaped(<ore:plateSolderingAlloy>);
recipes.removeShaped(<ore:plateStainlessSteel>);
recipes.removeShaped(<ore:plateSteel>);
recipes.removeShaped(<ore:plateTinAlloy>);
recipes.removeShaped(<ore:plateUltimet>);
recipes.removeShaped(<ore:plateVanadiumGallium>);
recipes.removeShaped(<ore:plateWroughtIron>);
recipes.removeShaped(<ore:plateYttriumBariumCuprate>);
recipes.removeShaped(<ore:plateGraphene>);
recipes.removeShaped(<ore:plateOsmiridium>);
recipes.removeShaped(<ore:plateSterlingSilver>);
recipes.removeShaped(<ore:plateRoseGold>);
recipes.removeShaped(<ore:plateBlackBronze>);
recipes.removeShaped(<ore:plateBismuthBronze>);
recipes.removeShaped(<ore:plateBlackSteel>);
recipes.removeShaped(<ore:plateRedSteel>);
recipes.removeShaped(<ore:plateBlueSteel>);
recipes.removeShaped(<ore:plateDamascusSteel>);
recipes.removeShaped(<ore:plateTungstenSteel>);
recipes.removeShaped(<ore:plateRedAlloy>);
recipes.removeShaped(<ore:plateCobaltBrass>);
recipes.removeShaped(<ore:plateIronMagnetic>);
recipes.removeShaped(<ore:plateSteelMagnetic>);
recipes.removeShaped(<ore:plateNeodymiumMagnetic>);
recipes.removeShaped(<ore:plateTungstenCarbide>);
recipes.removeShaped(<ore:plateVanadiumSteel>);
recipes.removeShaped(<ore:plateHssg>);
recipes.removeShaped(<ore:plateHsse>);
recipes.removeShaped(<ore:plateHsss>);
recipes.removeShaped(<ore:plateNaquadah>);
recipes.removeShaped(<ore:plateNaquadahAlloy>);
recipes.removeShaped(<ore:plateNaquadahEnriched>);
recipes.removeShaped(<ore:plateNaquadria>);
recipes.removeShaped(<ore:plateTritanium>);
recipes.removeShaped(<ore:plateDuranium>);
recipes.removeShaped(<ore:plateYtterbium>);
recipes.removeShaped(<ore:plateSiliconeRubber>);
recipes.removeShaped(<ore:platePolystyrene>);
recipes.removeShaped(<ore:plateStyreneButadieneRubber>);
recipes.removeShaped(<ore:plateGalliumArsenide>);
recipes.removeShaped(<ore:platePolyphenyleneSulfide>);
recipes.removeShaped(<ore:plateIndiumGalliumPhosphide>);
recipes.removeShaped(<ore:plateNickelZincFerrite>);
recipes.removeShaped(<ore:plateEnderium>);
recipes.removeShaped(<ore:plateZirconium>);
recipes.removeShaped(<ore:plateManganese>);
recipes.removeShaped(<ore:platePolycaprolactam>);
recipes.removeShaped(<ore:plateEpoxid>);
recipes.removeShaped(<ore:platePolyvinylChloride>);
recipes.removeShaped(<ore:plateGraphene>);
recipes.removeShaped(<ore:plateGraphite>);
recipes.removeShaped(<ore:platePolytetrafluoroethylene>);
recipes.removeShaped(<ore:plateReinforcedEpoxyResin>);
//grecality
recipes.removeShaped(<ore:platePolybenzimidazole>);
recipes.removeShaped(<ore:plateUvSuperconductorBase>);
recipes.removeShaped(<ore:plateUraniumRadioactive>);
recipes.removeShaped(<ore:plateZpmSuperconductorBase>);
recipes.removeShaped(<ore:plateZirconiumCarbide>);
recipes.removeShaped(<ore:plateMolybdenum>);
recipes.removeShaped(<ore:plateNeutronium>);
recipes.removeShaped(<ore:plateNiobiumTitanium>);
recipes.removeShaped(<ore:plateCerium>);
recipes.removeShaped(<ore:plateStellite>);
recipes.removeShaped(<ore:plateStaballoy>);
recipes.removeShaped(<ore:plateRutherfordium>);
recipes.removeShaped(<ore:plateRuthenium>);
recipes.removeShaped(<ore:plateRhodiumPlatedPalladium>);
recipes.removeShaped(<ore:plateRhodium>);
recipes.removeShaped(<ore:plateReactorSteel>);
recipes.removeShaped(<ore:plateProtactinium>);
recipes.removeShaped(<ore:platePotin>);
recipes.removeShaped(<ore:plateLuvSuperconductorBase>);
recipes.removeShaped(<ore:plateMvSuperconductorBase>);
recipes.removeShaped(<ore:plateMaragingSteelA>);
recipes.removeShaped(<gregtech:meta_item_1:12780>);
recipes.removeShaped(<ore:plateNeptunium>);
recipes.removeShaped(<ore:plateNitinolA>);
recipes.removeShaped(<ore:platePlutoniumRadioactive>);
recipes.removeShaped(<ore:plateTumbaga>);
recipes.removeShaped(<ore:plateTalonite>);
recipes.removeShaped(<ore:plateCalifornium>);
recipes.removeShaped(<ore:plateBerkelium>);
recipes.removeShaped(<ore:plateBabbittAlloy>);
recipes.removeShaped(<ore:plateAbyssalAlloy>);
recipes.removeShaped(<ore:plateHvSuperconductorBase>);
recipes.removeShaped(<ore:plateHastelloyN>);
recipes.removeShaped(<ore:plateIvSuperconductorBase>);
recipes.removeShaped(<ore:plateIncoloyMa>);
recipes.removeShaped(<ore:plateInconelA>);
recipes.removeShaped(<ore:plateHgAlloy>);
recipes.removeShaped(<ore:plateGrisium>);
recipes.removeShaped(<ore:plateFermium>);
recipes.removeShaped(<ore:plateEinsteinium>);
recipes.removeShaped(<ore:plateEglinSteel>);
recipes.removeShaped(<ore:plateEvSuperconductorBase>);
recipes.removeShaped(<ore:plateDubnium>);
recipes.removeShaped(<ore:plateCurium>);