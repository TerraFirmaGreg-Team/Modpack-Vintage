import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;

import mods.gregtech.recipe.PBFRecipeBuilder; //PBF
import mods.gregtech.recipe.RecipeMaps;       //PBF
import mods.gregtech.recipe.RecipeMap;

//GT Machines
val arc_furnace as RecipeMap = RecipeMap.getByName("arc_furnace");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val green_house as RecipeMap = RecipeMap.getByName("green_house");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val fermenter as RecipeMap = RecipeMap.getByName("fermenter");
val extractor as RecipeMap = RecipeMap.getByName("extractor");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val fluid_heater as RecipeMap = RecipeMap.getByName("fluid_heater");
val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
val icompressor as RecipeMap = RecipeMap.getByName("implosion_compressor");
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val packer as RecipeMap = RecipeMap.getByName("packer");
val thermal_centrifuge as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
val extruder as RecipeMap = RecipeMap.getByName("extruder");
val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
val lathe as RecipeMap = RecipeMap.getByName("lathe");
val brewer as RecipeMap = RecipeMap.getByName("brewer");
val chemical_plant as RecipeMap = RecipeMap.getByName("chemical_plant");
val large_chemical_reactor as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
val bio_reactor as RecipeMap = RecipeMap.getByName("bio_reactor");
val large_mixer as RecipeMap = RecipeMap.getByName("large_mixer");
val large_centrifuge as RecipeMap = RecipeMap.getByName("large_centrifuge");
val distillery as RecipeMap = RecipeMap.getByName("distillery");

//TERRAFIRMACRAFT + GREGTECH
//Фикс крафта ступка+кремний=гравий
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.addShapeless (<minecraft:flint>, [<ore:craftingToolMortar>.firstItem.withEmptyTag(), <ore:gravel>]);
//Исправления кованного железа
recipes.removeByRecipeName("gtadditions:ga_wrought");
//Hevea TFC --> Rubber
centrifuge.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:2012>, 2500, 600).chancedOutput(<gregtech:meta_item_1:2196>, 2500, 700).chancedOutput(<gregtech:meta_item_2:32570>, 3750, 900).fluidOutputs(<liquid:methane> * 60).duration(200).EUt(20).buildAndRegister();  
//Первые способы получить резину
extractor.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 2500, 0).duration(200).EUt(2).buildAndRegister(); 
//Чугун --> Сталь
compressor.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<tfc:metal/ingot/steel>).duration(400).EUt(2).buildAndRegister(); 
//Крафт бронзового парового молотка
recipes.remove(<gregtech:machine:13>);
recipes.addShaped(<gregtech:machine:13>,
[[<ore:pipeSmallBronze>, <ore:craftingPiston>, <ore:pipeSmallBronze>],
 [<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],
 [<ore:pipeSmallBronze>, <tfc:metal/anvil/wrought_iron>, <ore:pipeSmallBronze>]]);
//Крафт стального парового молотка
recipes.remove(<gregtech:machine:14>);
recipes.addShaped(<gregtech:machine:14>,
[[<ore:pipeSmallSteel>, <ore:craftingPiston>, <ore:pipeSmallSteel>],
 [<ore:pipeSmallSteel>, <gregtech:machine_casing:12>, <ore:pipeSmallSteel>],
 [<ore:pipeSmallSteel>, <tfc:metal/anvil/steel>, <ore:pipeSmallSteel>]]);
//Compressed coke clay
recipes.removeByRecipeName("gtadditions:coke_brick");
recipes.addShaped(<gtadditions:ga_meta_item:32036>*3,
[[<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>],
 [<ore:sand>, <gregtech:meta_item_2:32012>, <ore:sand>],
 [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.removeByRecipeName("gtadditions:ga_casing_lv");
recipes.addShaped(<gregtech:machine_casing:1>,
[[<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>],
 [<ore:plateBlueSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBlueSteel>],
 [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);
//Фикс крафта деревянной панельки
recipes.removeByRecipeName("gregtech:plank_to_wooden_shape");
recipes.addShaped(<gregtech:meta_item_2:32011>,
[[null, <ore:lumber>, null],
 [null, <ore:lumber>, null],
 [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>, null]]);
//Крафт Furnaceblock'a
assembler.recipeBuilder().inputs(<ore:plateSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 22})).outputs(<contenttweaker:furnaceblock>).duration(20).EUt(4).buildAndRegister();	
//Salt(Ocean water) --> Fresh water
centrifuge.recipeBuilder().fluidInputs(<liquid:salt_water>*1000).chancedOutput(<gregtech:meta_item_1:2155>, 2500, 2500).fluidOutputs(<liquid:fresh_water>*750).duration(100).EUt(10).buildAndRegister();
//Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand>*8], null).remove();
electrolyzer.recipeBuilder().inputs(<ore:sand>*8).outputs(<gregtech:meta_item_1:2159>).chancedOutput(<gregtech:meta_item_1:2159>, 2500, 2500).duration(150).EUt(25).buildAndRegister();
//Переработка танков в Arc
arc_furnace.recipeBuilder().inputs(<gregtech:machine:812>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10095>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:813>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10184>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:814>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10183>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:815>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10072>*3).duration(750).EUt(34).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:816>).fluidInputs([<liquid:oxygen> * 150]).outputs(<gregtech:meta_item_1:10235>*3).duration(750).EUt(34).buildAndRegister();
//Фикс блоков из ценных штук
compressor.findRecipe(2, [<tfc:gem/ruby:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/topaz:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/sapphire:2>*9], null).remove();
compressor.findRecipe(2, [<minecraft:diamond>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/opal:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/amethyst:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:ore/lapis_lazuli>*9], null).remove();
compressor.recipeBuilder().inputs(<ore:gemRuby>*9).outputs(<gregtech:compressed_7:8>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemTopaz>*9).outputs(<gregtech:compressed_8:9>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemSapphire>*9).outputs(<gregtech:compressed_7:11>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemOpal>*9).outputs(<gregtech:compressed_9:12>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAmethyst>*9).outputs(<gregtech:compressed_9:13>).duration(40).EUt(2).buildAndRegister();
//Горячая вода из свежей.
fluid_heater.recipeBuilder().fluidInputs(<liquid:fresh_water>*1000).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3})).fluidOutputs(<liquid:hot_water>*950).duration(50).EUt(8).buildAndRegister();
//Дистилированная вода из горячей
distillery.recipeBuilder().fluidInputs(<liquid:hot_water>*576).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9})).fluidOutputs(<liquid:distilled_water>*510).duration(100).EUt(8).buildAndRegister();
//Создание рецептов для теплицы
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>).chancedOutput(<tfc:crop/seeds/barley>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>).chancedOutput(<tfc:crop/seeds/maize>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>).chancedOutput(<tfc:crop/seeds/oat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>).chancedOutput(<tfc:crop/seeds/rice>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>).chancedOutput(<tfc:crop/seeds/rye>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>).chancedOutput(<tfc:crop/seeds/wheat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>).chancedOutput(<tfc:crop/seeds/beet>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>).chancedOutput(<tfc:crop/seeds/cabbage>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>).chancedOutput(<tfc:crop/seeds/carrot>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>).chancedOutput(<tfc:crop/seeds/garlic>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>).chancedOutput(<tfc:crop/seeds/green_bean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>).chancedOutput(<tfc:crop/seeds/onion>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>).chancedOutput(<tfc:crop/seeds/potato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>).chancedOutput(<tfc:crop/seeds/soybean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>).chancedOutput(<tfc:crop/seeds/squash>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>).chancedOutput(<tfc:crop/seeds/sugarcane>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>).chancedOutput(<tfc:crop/seeds/tomato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>).chancedOutput(<tfc:crop/seeds/red_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>).chancedOutput(<tfc:crop/seeds/yellow_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>).chancedOutput(<tfc:crop/seeds/jute>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
//Создание рецептов для теплицы с удобрением
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>, <tfc:crop/seeds/barley>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>, <tfc:crop/seeds/maize>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>, <tfc:crop/seeds/oat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>, <tfc:crop/seeds/rice>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>, <tfc:crop/seeds/rye>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>, <tfc:crop/seeds/wheat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>, <tfc:crop/seeds/beet>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>, <tfc:crop/seeds/cabbage>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>, <tfc:crop/seeds/carrot>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>, <tfc:crop/seeds/garlic>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>, <tfc:crop/seeds/green_bean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>, <tfc:crop/seeds/onion>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>, <tfc:crop/seeds/potato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>, <tfc:crop/seeds/soybean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>, <tfc:crop/seeds/squash>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>, <tfc:crop/seeds/sugarcane>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>, <tfc:crop/seeds/tomato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>, <tfc:crop/seeds/red_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>, <tfc:crop/seeds/yellow_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>, <tfc:crop/seeds/jute>*2).duration(2500).EUt(26).buildAndRegister();
//Отключение ванильных крафтов через теплицу(без удобрения)
green_house.findRecipe(16, [<minecraft:potato>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//Отключение ванильных крафтов через теплицу(с костной мукой)
green_house.findRecipe(16, [<minecraft:potato>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
//Отключение ванильных крафтов через теплицу(с удобрением)
green_house.findRecipe(16, [<minecraft:potato>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
//Отключение крафтов ванильных предметов.
assembler.findRecipe(4, [<minecraft:planks>*6, <minecraft:book>*3], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*3, <gregtech:meta_item_1:32766>.withTag({Configuration: 3})], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
//ПЕРЕРАБОТКА ВСЕХ РАСТЕНИЙ И МЯСА ИЗ TFC ДЛЯ GT + Отключение ванильного.
//
//Отключение яблок
macerator.findRecipe(120, [<minecraft:apple>], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
//Отключение мясо+рыба
//Мясо
macerator.findRecipe(16, [<minecraft:porkchop>], null).remove();
macerator.findRecipe(16, [<minecraft:beef>], null).remove();
macerator.findRecipe(16, [<minecraft:chicken>], null).remove();
macerator.findRecipe(16, [<minecraft:rabbit>], null).remove();
macerator.findRecipe(16, [<minecraft:mutton>], null).remove();
bio_reactor.findRecipe(30720, [<minecraft:beef>, <gtadditions:ga_meta_item:32399>], [<liquid:bacterial_growth_medium>*1000]).remove();
//Рыба не жаренная
fluid_extractor.findRecipe(4, [<minecraft:fish>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:1>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:2>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:3>], null).remove();
//Отключение картошки
compressor.findRecipe(2, [<minecraft:potato>*8], null).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:water>*20]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:water>*250]).remove();
//Отключение арбуза
chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();
macerator.findRecipe(2, [<minecraft:melon_block>], null).remove();
macerator.findRecipe(2, [<minecraft:melon>], null).remove();
//Отключение торта
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");
//Отключение печенек
compressor.findRecipe(2, [<minecraft:cookie>*9], null).remove();
//Отключение свеклы
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:water>*20]).remove();
extractor.findRecipe(2, [<minecraft:beetroot>], null).remove();
compressor.findRecipe(2, [<minecraft:beetroot>*8], null).remove();
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:water>*250]).remove();
//Отключение моркови
recipes.removeByRecipeName("minecraft:golden_carrot");
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:water>*20]).remove();
compressor.findRecipe(2, [<minecraft:carrot>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:water>*250]).remove();
//Отключение кактуса
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:water>*20]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:water>*250]).remove();
compressor.findRecipe(2, [<minecraft:cactus>*8], null).remove();
//Отключение тростника
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:water>*20]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:water>*250]).remove();
compressor.findRecipe(2, [<minecraft:reeds>*8], null).remove();
macerator.findRecipe(2, [<minecraft:reeds>], null).remove();
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:water>*100]).remove();
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:distilled_water>*100]).remove();
//forge_hammer.findRecipe(4, [<minecraft:reeds>*3], null).remove();//Не работает
//Отключение коричневого гриба
compressor.findRecipe(2, [<minecraft:brown_mushroom>*8], null).remove(); 
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:water>*20]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:water>*250]).remove();
centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
large_mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();
//Отключение красного гриба
compressor.findRecipe(2, [<minecraft:red_mushroom>*8], null).remove(); 
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:water>*20]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:water>*250]).remove();
centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();
large_mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();
//Wheat !--> Straw
compressor.findRecipe(2, [<minecraft:wheat>*9], null).remove();
compressor.findRecipe(2, [<tfc:straw>*9], null).remove();
compressor.recipeBuilder().inputs(<tfc:straw>*9).outputs(<tfc:thatch>).duration(20).EUt(2).buildAndRegister();
//Отключение старой гевеи
centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
large_centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
//Отключение старой земли
centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
//Отключение старой травы
centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
//Создание рецептов/////////////////////////////////////////////////////
//Яблоки
macerator.recipeBuilder().inputs(<tfc:food/green_apple>|<tfc:food/red_apple>).chancedOutput(<gtadditions:ga_dust:26>, 500, 250).duration(20).EUt(120).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<tfc:metal/ingot/gold>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple>).duration(15).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<minecraft:gold_block>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple:1>).duration(15).EUt(30).buildAndRegister();
//Мясо
bio_reactor.recipeBuilder().inputs(<ore:categoryMeat>, <gtadditions:ga_meta_item:32399>).fluidInputs([<liquid:bacterial_growth_medium>*1000]).outputs(<gtadditions:ga_meta_item:32477>).duration(500).EUt(30720).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane>*72).duration(20).EUt(5).buildAndRegister();
macerator.recipeBuilder().inputs(<ore:categoryMeat>).outputs(<gregtech:meta_item_1:1996>*6).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane>*34).duration(20).EUt(5).buildAndRegister();
fluid_extractor.recipeBuilder().inputs(<tfc:food/fish>).fluidOutputs(<liquid:fish_oil>*40).duration(20).EUt(20).buildAndRegister();
//Морковь
chemical_reactor.recipeBuilder().inputs(<ore:nuggetGold>*8, <tfc:food/carrot>).outputs(<minecraft:golden_carrot>).duration(15).EUt(30).buildAndRegister();
//Биомасса из овощей и фруктов
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*20).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*5).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryVegetable>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryFruit>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryGrain>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
//Тростник
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:food/sugarcane>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs(<tfc:food/sugarcane>).outputs(<minecraft:sugar>).duration(20).EUt(2).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water>*100]).outputs(<minecraft:paper>).duration(160).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:food/sugarcane>*3).outputs(<gregtech:meta_item_1:2325>*2).duration(40).EUt(9).buildAndRegister();
//Кактус
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/barrel_cactus>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
//Коричневый гриб
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/porcini>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
large_mixer.recipeBuilder().inputs(<tfc:plants/porcini>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})).fluidOutputs(<liquid:chitin>*100).duration(150).EUt(480).buildAndRegister();
//Земля+Трава
centrifuge.recipeBuilder().inputs(<ore:dirt>).chancedOutput(<gregtech:meta_item_2:32570>, 1250, 750).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 4000, 900).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:grass>).chancedOutput(<gregtech:meta_item_2:32570>, 3000, 1200).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 5000, 900).duration(20).EUt(30).buildAndRegister();
//
//Добавление рецептов печи для еды TFC
furnace.addRecipe(<tfc:food/cooked_beef>, <tfc:food/beef>);
furnace.addRecipe(<tfc:food/cooked_pork>, <tfc:food/pork>);
furnace.addRecipe(<tfc:food/cooked_chicken>, <tfc:food/chicken>);
furnace.addRecipe(<tfc:food/cooked_mutton>, <tfc:food/mutton>);
furnace.addRecipe(<tfc:food/cooked_fish>, <tfc:food/fish>);
furnace.addRecipe(<tfc:food/cooked_bear>, <tfc:food/bear>);
furnace.addRecipe(<tfc:food/cooked_calamari>, <tfc:food/calamari>);
furnace.addRecipe(<tfc:food/cooked_horse_meat>, <tfc:food/horse_meat>);
furnace.addRecipe(<tfc:food/cooked_pheasant>, <tfc:food/pheasant>);
furnace.addRecipe(<tfc:food/cooked_mongoose>, <tfc:food/mongoose>);
furnace.addRecipe(<tfc:food/cooked_gran_feline>, <tfc:food/gran_feline>);
furnace.addRecipe(<tfc:food/cooked_camelidae>, <tfc:food/camelidae>);
furnace.addRecipe(<tfc:food/cooked_rabbit>, <tfc:food/rabbit>);
furnace.addRecipe(<tfc:food/cooked_wolf>, <tfc:food/wolf>);
furnace.addRecipe(<tfc:food/cooked_venison>, <tfc:food/venison>);

//RFTOOLS + GREGTECH
//Базовая карточка из RFTools
assembler.recipeBuilder().inputs(<ore:circuitBasic> * 2, <gregtech:meta_item_2:32443> * 1, <gregtech:meta_item_2:32455>*6, <gregtech:meta_item_2:32451>*2, <gregtech:meta_item_2:32452>*4).fluidInputs([<liquid:soldering_alloy> * 288]).outputs(<rftoolscontrol:card_base>).duration(1250).EUt(56).buildAndRegister(); 
//Шард из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<minecraft:prismarine_crystals>, <minecraft:chorus_fruit_popped> * 2])
	.fluidInputs([<liquid:enderium> * 50])
	.outputs(<rftools:dimensional_shard> * 4)
	.duration(80)
	.EUt(30)
	.buildAndRegister();
//Крутой алмаз из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<rftools:dimensional_shard> * 8, <ore:gemDiamond>])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(<rftools:infused_diamond>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();
//Крутой эндерперл из RFTC
chemical_reactor.recipeBuilder()
	.inputs([<rftools:dimensional_shard> * 8, <ore:gemEnderPearl>])
	.fluidInputs([<liquid:radon> * 50])
	.outputs(<rftools:infused_enderpearl>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();
//Краснокаменный провод из RFTC
assembler.recipeBuilder()
	.inputs(<minecraft:redstone> * 3, <minecraft:stone_slab> * 3)
	.outputs(<rftools:wire_block> * 4)
	.duration(600)
	.EUt(4)
	.buildAndRegister();
//Процессор 1 лвл
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32443>, <ore:circuitBasic>*2, <ore:wireGtSingleRedAlloy>*4, <gregtech:meta_item_1:32499>*2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<rftoolscontrol:cpu_core_500>)
	.duration(500)
	.EUt(32)
	.buildAndRegister();
//Процессор 2 лвл
assembler.recipeBuilder()
	.inputs(<rftoolscontrol:cpu_core_500>, <ore:circuitGood>*2, <ore:wireGtSingleAnnealedCopper>*8, <gregtech:meta_item_1:32681>)
   	.fluidInputs([<liquid:soldering_alloy> * 486])
	.outputs(<rftoolscontrol:cpu_core_1000>)
	.duration(400)
	.EUt(128)
	.buildAndRegister();
//Процессор 3 лвл
assembler.recipeBuilder()
	.inputs(<rftoolscontrol:cpu_core_1000>, <ore:circuitAdvanced>*2, <ore:wireGtSingleElectrum>*4, <gregtech:meta_item_1:32682>*2)
   	.fluidInputs([<liquid:soldering_alloy> * 624])
	.outputs(<rftoolscontrol:cpu_core_2000>)
	.duration(300)
	.EUt(256)
	.buildAndRegister();
	
//PORTALITY + GREGTECH
//Контроллер
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <ore:boltDiamond> * 12, <ore:blockQuartzite> * 1, <ore:circuitElite> * 1)
	.outputs(<portality:controller>)
	.duration(960)
	.EUt(512)
	.buildAndRegister();
//Структурный блок
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 8, <ore:plateNeodymiumMagnetic> *4)
	.outputs(<portality:frame>)
	.duration(490)
	.EUt(250)
	.buildAndRegister();
//Меж-мировой модуль
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <gregtech:meta_item_1:32724> * 4, <appliedenergistics2:material:47>, <ore:blockQuartzite> * 1)
	.outputs(<portality:module_interdimensional>)
	.duration(1620)
	.EUt(1900)
	.buildAndRegister();

//FLUXNETWORK + GREGTECH
//Флаксовый блок
assembler.recipeBuilder()
   .inputs(<fluxnetworks:flux> * 9, <fluxnetworks:fluxcore> * 8)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxblock>)
   .duration(1000)
   .EUt(540)
   .buildAndRegister(); 
//Флаксовый контроллер
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxblock> * 5, <gregtech:machine:504>, <fluxnetworks:fluxcore>*16, <gtadditions:ga_meta_item:32211>*2, <gtadditions:ga_field_gen_casing:3>, <ore:cableGtQuadrupleAluminium>*4)
   .fluidInputs([<liquid:soldering_alloy> * 1296])
   .outputs(<fluxnetworks:fluxcontroller>)
   .duration(2500)
   .EUt(612)
   .buildAndRegister();
//Флаксовое ядро
assembler.recipeBuilder()
   .inputs(<fluxnetworks:flux>*16, <gregtech:meta_item_1:2138>*4, <gtadditions:ga_meta_item:32032>, <ore:plateSteel>*4, <gregtech:meta_item_2:32461>*5, <gregtech:meta_item_2:32459>*3)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<fluxnetworks:fluxcore>*4)
   .duration(2500)
   .EUt(572)
   .buildAndRegister(); 
//Разьем
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxcore>*4, <gregtech:machine:503>, <gtadditions:ga_multiblock_casing:6>, <gregtech:meta_item_1:32673>)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxplug>)
   .duration(2500)
   .EUt(512)
   .buildAndRegister();
//Точка
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxcore>*4, <gregtech:machine:503>, <gtadditions:ga_multiblock_casing:6>, <gregtech:meta_item_1:32693>)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxpoint>)
   .duration(2500)
   .EUt(512)
   .buildAndRegister(); 

//FORESTRY + GREGTECH
//Создание блоков меда Forestry через компрессор
compressor.recipeBuilder().inputs(<forestry:bee_combs> * 9).outputs(<forestry:bee_combs_0>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:4> * 9).outputs(<forestry:bee_combs_0:4>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:5> * 9).outputs(<forestry:bee_combs_0:5>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:15> * 9).outputs(<forestry:bee_combs_0:15>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:7> * 9).outputs(<forestry:bee_combs_0:7>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:6> * 9).outputs(<forestry:bee_combs_0:6>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:2> * 9).outputs(<forestry:bee_combs_0:2>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:3> * 9).outputs(<forestry:bee_combs_0:3>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:16> * 9).outputs(<forestry:bee_combs_1>).duration(4).EUt(2).buildAndRegister();
//Гибкий корпус из форестри
assembler.recipeBuilder().inputs(<ore:plateBronze>*4, <ore:plateEmerald>*2, <ore:slimeball>*2, <ore:glue>*2).fluidInputs([<liquid:glass> * 400]).outputs(<forestry:flexible_casing>).duration(20).EUt(16).buildAndRegister();	

//PROSPECTORS + GREGTECH
//Прут 5 лвл
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32692> * 2, <gregtech:meta_item_1:32518>.withTag({Charge: 100000 as long}), <prospectors:prospector_high>, <ore:circuitBasic>*2, <gregtech:meta_item_2:32485>, <minecraft:stick>)
	.outputs(<prospectors:prospector_best:*>)
	.duration(150)
	.EUt(64)
	.buildAndRegister();

//Реплейс всех печек на печной блок
recipes.replaceAllOccurences(<minecraft:furnace>, <contenttweaker:furnaceblock>);

//Сундуки можно переработать
arc_furnace.recipeBuilder().inputs(<gregtech:machine:802>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10095>*10).EUt(8).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:803>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10184>*10).EUt(30).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:804>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10183>*10).EUt(120).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:805>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10072>*10).EUt(500).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:806>).fluidInputs([<liquid:oxygen> * 500]).outputs(<gregtech:meta_item_1:10235>*10).EUt(1560).duration(400).buildAndRegister();

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
assembler.findRecipe(16, [<tfc:metal/sheet/wrought_iron>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12184>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12001>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12183>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12072>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12235>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12207>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12859>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12311>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12993>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
//Создание
assembler.recipeBuilder().inputs(<ore:plateIron>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:1>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateAluminium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:2>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateStainlessSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:3>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTitanium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:4>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTungstenSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:5>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateRhodiumPlatedPalladium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:6>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateOsmiridium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:7>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTritanium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:8>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateNeutronium>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:9>).duration(20).EUt(16).buildAndRegister();

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

//Цемент из тфк --> бетон разных цветов
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:white_dye> * 125]).outputs(<minecraft:concrete>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:orange_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:magenta_dye> * 125]).outputs(<minecraft:concrete:2>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_blue_dye> * 125]).outputs(<minecraft:concrete:3>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:yellow_dye> * 125]).outputs(<minecraft:concrete:4>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:lime_dye> * 125]).outputs(<minecraft:concrete:5>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:pink_dye> * 125]).outputs(<minecraft:concrete:6>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:gray_dye> * 125]).outputs(<minecraft:concrete:7>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_gray_dye> * 125]).outputs(<minecraft:concrete:8>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:cyan_dye> * 125]).outputs(<minecraft:concrete:9>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:purple_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:blue_dye> * 125]).outputs(<minecraft:concrete:11>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:brown_dye> * 125]).outputs(<minecraft:concrete:12>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:green_dye> * 125]).outputs(<minecraft:concrete:13>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:red_dye> * 125]).outputs(<minecraft:concrete:14>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:black_dye> * 125]).outputs(<minecraft:concrete:15>).duration(15).EUt(8).buildAndRegister();	
	
//Малоэффективный рецепт резины
alloy_smelter.recipeBuilder().inputs(<ore:dustRawRubber> * 8, <ore:dustSulfur> * 4).outputs(<ore:ingotRubber>.firstItem * 1).duration(300).EUt(8).buildAndRegister();
	
//Малоэффективный рецепт резиновой пластины
alloy_smelter.recipeBuilder().inputs(<ore:ingotRubber> * 2).notConsumable(<metaitem:shape.mold.plate>).outputs(<ore:plateRubber>.firstItem * 1).duration(140).EUt(8).buildAndRegister();

//Крафт некоторых блоков в компрессоре, которые не были пофикшены Gregicality
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

//Мрамор из AstralSorcery
chemical_bath.recipeBuilder().inputs(<tfc:raw/marble>).fluidInputs([<liquid:hot_water> * 1000]).outputs(<astralsorcery:blockmarble>).duration(20).EUt(2).buildAndRegister();

//Пластина простая
icompressor.recipeBuilder().inputs(<ore:ingotSteel> * 2, <ore:ingotCarbon> * 1).property("explosives", 1).outputs(<contenttweaker:part_plate_basic> * 1).duration(50).EUt(32).buildAndRegister();
//Пластина улучшенная
icompressor.recipeBuilder().inputs(<ore:plateLead> * 2, <ore:ingotCarbon> * 1).property("explosives", 1).outputs(<contenttweaker:part_plate_advanced> * 1).duration(50).EUt(64).buildAndRegister();
//Пластина ДУ
icompressor.recipeBuilder().inputs(<ore:plateZinc> * 2, <ore:ingotCarbon> * 1).property("explosives", 1).outputs(<contenttweaker:part_plate_du> * 1).duration(50).EUt(128).buildAndRegister();
//Пластина Совершенная
icompressor.recipeBuilder().inputs(<ore:plateUranium235> * 2, <ore:ingotLead> * 3).property("explosives", 1).outputs(<contenttweaker:part_plate_elite> * 2).duration(50).EUt(256).buildAndRegister();

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