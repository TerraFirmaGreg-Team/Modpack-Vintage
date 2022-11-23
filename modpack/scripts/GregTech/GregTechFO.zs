import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Массивы

val TFC_Flour as IItemStack[] = [
	<tfcflorae:food/fonio_flour>,
	<tfcflorae:food/buckwheat_flour>,
	<tfcflorae:food/amaranth_flour>,
	<tfc:food/wheat_flour>,
	<tfc:food/rye_flour>,
	<tfc:food/rice_flour>,
	<tfc:food/oat_flour>,
	<tfc:food/cornmeal_flour>,
	<tfc:food/barley_flour>,
	<tfcflorae:food/spelt_flour>,
	<tfcflorae:food/quinoa_flour>,
	<tfcflorae:food/millet_flour>
];

val TFC_Flat_Doughs as IItemStack[] = [
	<tfcflorae:food/fonio_flatbread_dough>,
	<tfcflorae:food/buckwheat_flatbread_dough>,
	<tfcflorae:food/amaranth_flatbread_dough>,
	<firmalife:wheat_flatbread_dough>,
	<firmalife:rye_flatbread_dough>,
	<firmalife:rice_flatbread_dough>,
	<firmalife:oat_flatbread_dough>,
	<firmalife:corn_flatbread_dough>,
	<firmalife:barley_flatbread_dough>,
	<tfcflorae:food/spelt_flatbread_dough>,
	<tfcflorae:food/quinoa_flatbread_dough>,
	<tfcflorae:food/millet_flatbread_dough>
];

val TFC_Doughs as IItemStack[] = [
	<tfcflorae:food/fonio_dough>,
	<tfcflorae:food/buckwheat_flatbread_dough>,
	<tfcflorae:food/amaranth_dough>,
	<tfc:food/wheat_dough>,
	<tfc:food/rye_dough>,
	<tfc:food/rice_dough>,
	<tfc:food/oat_dough>,
	<tfc:food/cornmeal_dough>,
	<tfc:food/barley_dough>,
	<tfcflorae:food/spelt_dough>,
	<tfcflorae:food/quinoa_dough>,
	<tfcflorae:food/millet_dough>
];

val TFC_Breads as IItemStack[] = [
	<tfcflorae:food/fonio_bread>,
	<tfcflorae:food/buckwheat_bread>,
	<tfcflorae:food/amaranth_bread>,
	<tfc:food/wheat_bread>,
	<tfc:food/rye_bread>,
	<tfc:food/rice_bread>,
	<tfc:food/oat_bread>,
	<tfc:food/cornbread>,
	<tfc:food/barley_bread>,
	<tfcflorae:food/spelt_bread>,
	<tfcflorae:food/quinoa_bread>,
	<tfcflorae:food/millet_bread>
];

// --- Добавление рецептов

// Adobe Bricks
recipes.addShaped("tfg/gtfo/adobe_bricks", <gregtechfoodoption:gtfo_casing>,
	[[<ore:mudBrick>, <ore:mudBrick>, null],
	[<ore:mudBrick>, <ore:mudBrick>, null],
	[null, null, null]]);

// Reinforced Adobe Bricks
recipes.addShaped("tfg/gtfo/reinforced_adobe_bricks", <gregtechfoodoption:gtfo_casing:1>,
	[[null, <ore:gtce.tool.hard.hammers>, null],
	[<ore:mudBrick>, <metaitem:plateBronze>, <ore:mudBrick>],
	[null, <gregtechfoodoption:gtfo_casing>, null]]);

assembler.recipeBuilder()
	.circuit(1)
	.inputs(
		<gregtechfoodoption:gtfo_casing:0>, 
		<ore:mudBrick> * 2, 
		<metaitem:plateBronze>)
	.outputs(<gregtechfoodoption:gtfo_casing:1>)
	.duration(20).EUt(28).buildAndRegister();

assembler.recipeBuilder()
	.circuit(3)
	.inputs(
		<gregtechfoodoption:gtfo_casing:0> * 3, 
		<ore:mudBrick> * 6, 
		<metaitem:plateBronze> * 3)
	.outputs(<gregtechfoodoption:gtfo_casing:1> * 3)
	.duration(80).EUt(28).buildAndRegister();

// Unfired Cup
forming_press.recipeBuilder()
	.inputs(<ore:ingotClay> * 5)
	.notConsumable(<metaitem:component.paper_cone>)
	.outputs(<metaitem:component.unfired_cup> * 2)
	.duration(30).EUt(18).buildAndRegister();

// Baking Oven
recipes.addShaped("tfg/gtfo/baking_oven", <metaitem:gregtechfoodoption:baking_oven>,
	[[<ore:gtce.tool.screwdrivers>, <ore:screwIronAny>, <ore:screwIronAny>],
	[<ore:stickIronAny>, <ore:stickIronAny>, <gregtechfoodoption:gtfo_casing>],
	[<ore:gtce.tool.files>, <ore:screwIronAny>, <ore:screwIronAny>]]);

// Apple Slice
recipes.addShapeless("tfg/gtfo/apple_slice", <metaitem:component.apple_slice>, [<ore:gtce.tool.knife>, <ore:apple>]);

slicer.recipeBuilder()
	.inputs(<ore:apple>)
	.notConsumable(<metaitem:config.slicer_blade.octagonal>)
	.outputs(<metaitem:component.apple_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Mushroom Slice
recipes.addShapeless("tfg/gtfo/myshroom_slice", <metaitem:component.mushroom_slice>, [<ore:gtce.tool.knife>, <tfc:plants/porcini>]);

slicer.recipeBuilder()
	.inputs(<tfc:plants/porcini>)
	.notConsumable(<metaitem:config.slicer_blade.octagonal>)
	.outputs(<metaitem:component.mushroom_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Apple Structural Mesh
extractor.recipeBuilder()
	.inputs(<ore:apple>)
	.outputs(<metaitem:component.structural_mesh.apple>)
	.duration(200).EUt(1920).buildAndRegister();

// Kebab Meat Raw
recipes.addShapeless("tfg/gtfo/kebab_meat_raw", <metaitem:component.kebab.meat> * 2, [<ore:gtce.tool.rolling.pins>, <metaitem:component.skewer>, <metaitem:component.skewer>, <ore:categoryMeat>, <ore:categoryMeat>, <ore:categoryMeat>, <ore:categoryMeat>, <metaitem:dustSmallSalt>]);

cuisine_assembler.recipeBuilder()
	.inputs(
		<ore:categoryMeat> * 4, 
		<metaitem:component.skewer> * 4, 
		<metaitem:dustTinySalt> * 4)
	.outputs(<metaitem:component.kebab.meat> * 4)
	.duration(50).EUt(16).buildAndRegister();

// Mince Meat
large_chemical_reactor.recipeBuilder()
	.inputs(<ore:categoryMeat> * 32)
	.fluidInputs([
		<liquid:methanol> * 4000, 
		<liquid:chloroform> * 4000])
	.outputs(
		<metaitem:dustMeat> * 40, 
		<minecraft:dye:15> * 16)
	.fluidOutputs([
		<liquid:gtfo_stearin> * 32000, 
		<liquid:gtfo_sludge> * 12000, 
		<liquid:chlorine> * 12000])
	.duration(1000).EUt(256).buildAndRegister();

// Mince Meat + BoneMeal + Animal Fat
centrifuge.recipeBuilder()
	.inputs(<ore:categoryMeat> * 8)
	.circuit(0)
	.outputs(
		<metaitem:dustMeat> * 13, 
		<metaitem:dustSmallBone> * 8, 
		<metaitem:fat_ingot> * 8)
	.chancedOutput(<metaitem:fat_ingot> * 4, 5000, 2000)
	.duration(400).EUt(20).buildAndRegister();

// Fish Oil
extractor.recipeBuilder()
	.inputs(<tfc:food/fish>)
	.fluidOutputs([<liquid:fish_oil> * 70])
	.duration(16).EUt(4).buildAndRegister();

// Sludge
mixer.recipeBuilder()
	.inputs(<ore:categoryMeat>)
	.fluidInputs([<liquid:sulfuric_acid> * 200])
	.fluidOutputs([<liquid:gtfo_sludge> * 200])
	.duration(250).EUt(16).buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:categoryMeat>)
	.fluidInputs([<liquid:water> * 400])
	.fluidOutputs([<liquid:gtfo_sludge> * 100])
	.duration(500).EUt(16).buildAndRegister();

// Potato Juice
fermenter.recipeBuilder()
	.inputs(<tfc:food/potato>)
	.fluidInputs([<liquid:water> * 1000])
	.fluidOutputs([<liquid:gtfo_potato_juice> * 1000])
	.duration(1000).EUt(8).buildAndRegister();

// Rotten Food
fermenter.recipeBuilder()
	.inputs(<ore:categoryMeat>)
	.fluidInputs([<liquid:water> * 100])
	.outputs(<metaitem:food.meat_rotten>)
	.fluidOutputs([<liquid:water> * 100])
	.duration(100).EUt(8).buildAndRegister();

// Cooked Meat
for i, TFC_Cooked_Meat in TFC_Cooked_Meat {
	baking_oven.recipeBuilder()
		.inputs([TFC_Raw_Meat[i], <minecraft:coal:1> * 2])
		.outputs(TFC_Cooked_Meat)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();

	baking_oven.recipeBuilder()
		.inputs([TFC_Raw_Meat[i], <minecraft:coal> * 2])
		.outputs(TFC_Cooked_Meat)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();

	baking_oven.recipeBuilder()
		.inputs([TFC_Raw_Meat[i], <metaitem:gemCoke>])
		.outputs(TFC_Cooked_Meat)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();

	// electric_baking_oven.recipeBuilder()
	//     .inputs([TFC_Raw_Meat[i]])
	//     .outputs(TFC_Cooked_Meat)
	//     .property("temperature", 400)
	//     .duration(225).EUt(1).buildAndRegister();
}

// Bread
for i, TFC_Breads in TFC_Breads {
	
	baking_oven.recipeBuilder()
		.inputs([TFC_Doughs[i], <minecraft:coal:1> * 2])
		.outputs(TFC_Breads)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();

	baking_oven.recipeBuilder()
		.inputs([TFC_Doughs[i], <minecraft:coal> * 2])
		.outputs(TFC_Breads)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();
	
	baking_oven.recipeBuilder()
		.inputs([TFC_Doughs[i], <metaitem:gemCoke>])
		.outputs(TFC_Breads)
		.property("temperature", 500)
		.duration(400).EUt(1).buildAndRegister();
	
	// electric_baking_oven.recipeBuilder()
	// 	.inputs([TFC_Doughs[i]])
	// 	.outputs(TFC_Breads)
	//     .property("temperature", 500)
	// 	.duration(225).EUt(1).buildAndRegister();
}

// Uncooked Bacon
recipes.addShapeless("tfg/gtfo/uncooked_bacon", <metaitem:component.bacon> * 3, [<tfc:food/pork>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/pork>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.bacon> * 6)
	.duration(30).EUt(18).buildAndRegister();

// Beef Slice
slicer.recipeBuilder()
	.inputs(<tfc:food/beef>)
	.notConsumable(<metaitem:config.slicer_blade.stripes>)
	.outputs(<metaitem:component.beef_slice> * 9)
	.duration(80).EUt(24).buildAndRegister();

// Meat Sandwich
recipes.addShapeless("tfg/gtfo/meat_sandwich", <metaitem:food.sandwich.steak>, [<metaitem:component.breads>, <ore:categoryCookedMeat>]);

cuisine_assembler.recipeBuilder()
	.inputs(
		<metaitem:component.breads> * 3, 
		<metaitem:food.cheddar_slice> * 3, 
		<ore:categoryCookedMeat>)
	.outputs(<metaitem:food.sandwich.steak> * 3)
	.duration(120).EUt(30).buildAndRegister();

// Large Meat Sandwich
cuisine_assembler.recipeBuilder()
	.inputs(
		<metaitem:component.baguettes> * 3, 
		<metaitem:food.cheddar_slice> * 3, 
		<ore:categoryCookedMeat> * 3)
	.outputs(<metaitem:food.sandwich.steak.large> * 3)
	.duration(240).EUt(75).buildAndRegister();

// Rabbit Stew
mixer.recipeBuilder()
	.inputs(
		<tfc:food/cooked_rabbit>, 
		<tfc:food/carrot>, 
		<tfc:plants/porcini>, 
		<metaitem:mashed_potato_dust>, 
		<ore:flour>)
	.fluidInputs([<liquid:water> * 50])
	.fluidOutputs([<liquid:gtfo_rabbit_stew> * 125])
	.duration(100).EUt(8).buildAndRegister();

// Melon Seeds
macerator.recipeBuilder()
	.inputs(<firmalife:melon>)
	.outputs(<firmalife:crop/seeds/melon>)
	.duration(400).EUt(2).buildAndRegister();

macerator.recipeBuilder()
	.inputs(<firmalife:melon_fruit>)
	.outputs(<firmalife:melon> * 8)
	.chancedOutput(<firmalife:crop/seeds/melon>, 8000, 500)
	.duration(400).EUt(2).buildAndRegister();

// Melon Block
packer.recipeBuilder()
	.inputs(<firmalife:melon> * 9)
	.circuit(9)
	.outputs(<firmalife:melon_fruit>)
	.duration(200).EUt(2).buildAndRegister();

// Glistering Melon
chemical_reactor.recipeBuilder()
	.inputs(<firmalife:melon>, <ore:nuggetGold> * 8)
	.outputs(<minecraft:speckled_melon>)
	.duration(50).EUt(30).buildAndRegister();

// Pre-Sliced Bread
recipes.addShapeless("tfg/gtfo/presliced_bread", <metaitem:component.breads>, [<ore:categoryBread>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<ore:categoryBread>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.breads>)
	.duration(30).EUt(18).buildAndRegister();

// Carrot Slice
recipes.addShapeless("tfg/gtfo/carrot_slice", <metaitem:component.carrot_slice> * 4, [<tfc:food/carrot>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/carrot>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.carrot_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Onion Slice
recipes.addShapeless("tfg/gtfo/onion_slice", <metaitem:component.onion_slice> * 4, [<tfc:food/onion>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/onion>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.onion_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Olive Slice
recipes.addShapeless("tfg/gtfo/olive_slice", <metaitem:component.olive_slice> * 4, [<tfc:food/olive>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/olive>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.olive_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Tomato Slice
recipes.addShapeless("tfg/gtfo/tomato_slice", <metaitem:component.tomato_slice> * 4, [<tfc:food/tomato>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/tomato>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.tomato_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Cabbage Slice
recipes.addShapeless("tfg/gtfo/cabbage_slice", <metaitem:component.cucumber_slice> * 4, [<tfc:food/cabbage>, <ore:gtce.tool.knife>]);

slicer.recipeBuilder()
	.inputs(<tfc:food/cabbage>)
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.cucumber_slice> * 8)
	.duration(30).EUt(18).buildAndRegister();

// Peeled Potato
slicer.recipeBuilder()
	.inputs(<tfc:food/potato>)
	.fluidInputs([<liquid:water> * 500])
	.notConsumable(<metaitem:config.slicer_blade.flat>)
	.outputs(<metaitem:component.potato.peeled>)
	.fluidOutputs([<liquid:gtfo_starch_filled_water> * 500])
	.duration(40).EUt(8).buildAndRegister();

// Mashed Potato
macerator.recipeBuilder()
	.inputs(<tfc:food/potato>)
	.outputs(<metaitem:mashed_potato_dust>)
	.duration(40).EUt(4).buildAndRegister();

// Carrot Structural Mesh
extractor.recipeBuilder()
	.inputs(<tfc:food/carrot>)
	.outputs(<metaitem:mashed_potato_dust>)
	.duration(200).EUt(1920).buildAndRegister();

// Carrots on a Skewel Kebab
recipes.addShapeless("tfg/gtfo/kebab_carrot", <metaitem:component.kebab.carrot> * 2, [<ore:gtce.tool.knife>, <metaitem:dustSalt>, <tfc:food/carrot>, <tfc:food/carrot>, <metaitem:component.skewer>, <metaitem:component.skewer>]);

// Beetroot Soup
mixer.recipeBuilder()
	.inputs(
		<tfc:food/beet> * 2, 
		<ore:flour>)
	.fluidInputs([<liquid:water> * 100])
	.fluidOutputs([<liquid:gtfo_beetroot_soup> * 125])
	.duration(100).EUt(8).buildAndRegister();

// Chum * 3
mixer.recipeBuilder()
	.inputs(
		<metaitem:food.meat_rotten>, 
		<minecraft:fermented_spider_eye>, 
		<tfc:plants/amanita>)
	.fluidInputs([<liquid:gtfo_sludge> * 100])
	.outputs(<metaitem:food.chum> * 3)
	.duration(100).EUt(24).buildAndRegister();

// Chum * 6
mixer.recipeBuilder()
	.inputs(
		<metaitem:food.meat_rotten>, 
		<minecraft:fermented_spider_eye>, 
		<tfc:plants/amanita>)
	.fluidInputs([
		<liquid:gtfo_sludge> * 100, 
		<liquid:gtfo_purple_drink> * 100])
	.outputs(<metaitem:food.chum> * 6)
	.duration(100).EUt(24).buildAndRegister();

// Flour -> Flat Dough
for i, TFC_Flat_Doughs in TFC_Flat_Doughs {
	mixer.recipeBuilder()
		.inputs([TFC_Flour[i], <metaitem:dustSmallSalt>])
		.fluidInputs([<liquid:fresh_water> * 1000])
		.outputs(TFC_Flat_Doughs)
		.duration(400).EUt(2).buildAndRegister();
}

// Flat Dough -> Dough
for i, TFC_Doughs in TFC_Doughs {
	mixer.recipeBuilder()
		.inputs([TFC_Flat_Doughs[i], <ore:sweetener>])
		.fluidInputs([<liquid:yeast_starter> * 1000])
		.outputs(TFC_Doughs)
		.duration(400).EUt(2).buildAndRegister();
}

// Raw Olive and Mushroom Pizza
cuisine_assembler.recipeBuilder()
	.inputs(
		<firmalife:pizza_dough>, 
		<metaitem:component.mozzarella_slice> * 3, 
		<metaitem:component.mushroom_slice> * 8, 
		<metaitem:component.olive_slice> * 8)
	.fluidInputs([<liquid:gtfo_tomato_sauce> * 300])
	.outputs(<metaitem:component.pizza.veggie>)
	.duration(400).EUt(180).buildAndRegister();

// Raw Cheese Pizza
cuisine_assembler.recipeBuilder()
	.circuit(0)
	.inputs(
		<firmalife:pizza_dough>, 
		<metaitem:component.mozzarella_slice> * 8)
	.fluidInputs([<liquid:gtfo_tomato_sauce> * 600])
	.outputs(<metaitem:component.pizza.cheese>)
	.duration(400).EUt(180).buildAndRegister();

// Raw Mince Meat Pizza
cuisine_assembler.recipeBuilder()
	.inputs(
		<firmalife:pizza_dough>, 
		<metaitem:component.mozzarella_slice> * 4, 
		<metaitem:dustMeat> * 10)
	.fluidInputs([<liquid:gtfo_tomato_sauce> * 450])
	.outputs(<metaitem:component.pizza.mince_meat>)
	.duration(400).EUt(180).buildAndRegister();

// Pie Crust
recipes.addShapeless("tfg/gtfo/pie_crust", <metaitem:component.pie_crust>, [<ore:doughYeast>, <ore:gtce.tool.rolling.pins>]);

// Unbaked Baguette
recipes.addShaped("tfg/gtfo/unbaked_baguette", <metaitem:component.baguette>,
	[[null, null, null],
	[<ore:dough>, <ore:dough>, <ore:dough>],
	[null, <metaitem:wooden_form.baguette>.reuse(), null]]);

forming_press.recipeBuilder()
	.inputs(<ore:dough> * 2)
	.notConsumable(<metaitem:wooden_form.baguette>)
	.outputs(<metaitem:component.baguette>)
	.duration(100).EUt(20).buildAndRegister();

// Unbaked Bun
recipes.addShaped("tfg/gtfo/unbaked_bun", <metaitem:component.bun>,
	[[null, null, null],
	[null, <ore:dough>, null],
	[null, <metaitem:wooden_form.baguette>.reuse(), null]]);

forming_press.recipeBuilder()
	.inputs(<ore:dough> * 2)
	.notConsumable(<metaitem:wooden_form.bun>)
	.outputs(<metaitem:component.bun>)
	.duration(100).EUt(20).buildAndRegister();

// Mushroom Stew
mixer.recipeBuilder()
	.inputs([<ore:mushroombrown>, <tfc:plants/amanita>, <ore:flour>])
	.fluidInputs([<liquid:milk> * 25])
	.fluidOutputs([<liquid:gtfo_mushroom_soup> * 50])
	.duration(100).EUt(8).buildAndRegister();

// Zest
extractor.recipeBuilder()
	.inputs([<tfc:food/lemon>])
	.outputs(<metaitem:zest_dust>)
	.fluidOutputs([<liquid:gtfo_mushroom_soup> * 50])
	.duration(200).EUt(5).buildAndRegister();

// Raw Koobideh Kebab
recipes.addShaped("tfg/gtfo/raw_koobideh_kebab", <metaitem:component.kebab.kubide>, [
	[<ore:gtce.tool.rolling.pins>, <metaitem:kubide_meat_dust>, <metaitem:kubide_meat_dust>],
	[<metaitem:dustSmallSalt>, <metaitem:kubide_meat_dust>, <metaitem:kubide_meat_dust>],
	[<metaitem:component.skewer>, <tfc:food/tomato>, <metaitem:dustSmallSalt>]]);

// Toughened Meat
recipes.addShapeless("tfg/gtfo/toughende_meat", <metaitem:tough_meat_dust>, [<ore:flour>, <metaitem:dustMeat>, <metaitem:dustMeat>, <minecraft:water_bucket>]);

mixer.recipeBuilder()
	.inputs([<ore:flour>, <metaitem:dustMeat>])
	.fluidInputs([<liquid:water> * 500])
	.outputs(<metaitem:tough_meat_dust>)
	.duration(90).EUt(16).buildAndRegister();

// Olive Oil
extractor.recipeBuilder()
	.inputs([<tfc:food/olive>])
	.fluidOutputs([<liquid:gtfo_olive_oil> * 100])
	.duration(60).EUt(27).buildAndRegister();

// Koobideh Ingredients
recipes.addShaped("tfg/gtfo/koobideh_ingredients", <metaitem:kubide_meat_dust> * 4, [
	[<metaitem:dustSalt>, <tfc:food/tomato>, <tfc:food/onion>],
	[<metaitem:dustMeat>, <metaitem:dustMeat>, <metaitem:dustMeat>],
	[<metaitem:fat_ingot>, <metaitem:dustMeat>, <metaitem:fat_ingot>]]);

// Barg Ingredients
recipes.addShaped("tfg/gtfo/barg_ingredients", <metaitem:barg_meat_dust> * 4, [
	[<metaitem:dustSalt>, <metaitem:dustMeat>, <firmalife:dried_olive>],
	[<metaitem:dustMeat>, <tfc:food/onion>, <metaitem:dustMeat>],
	[<metaitem:zest_dust>, <metaitem:dustMeat>, <metaitem:zest_dust>]]);

// Nailed Onions Kebab
recipes.addShapeless("tfg/gtfo/nailed_onions_kebab", <metaitem:component.kebab.onion> * 2, [<ore:gtce.tool.knife>, <metaitem:dustSalt>, <tfc:food/onion>, <tfc:food/onion>, <metaitem:component.skewer>, <metaitem:component.skewer>]);

// Kebab e Soltani!
cuisine_assembler.recipeBuilder()
	.inputs(
		<metaitem:food.kebab.barg> * 2, 
		<metaitem:food.kebab.kubide>, 
		<tfc:food/tomato> * 3, 
		<tfc:food/onion> * 2, 
		<tfc:food/lemon>)
	.fluidInputs([
		<liquid:gtfo_lemon_extract> * 250, 
		<liquid:gtfo_stearin> * 1000])
	.outputs(
		<metaitem:food.kebab.soltani> * 2, 
		<metaitem:component.skewer>)
	.duration(200).EUt(120).buildAndRegister();

// Chum on Skewel
cuisine_assembler.recipeBuilder()
	.inputs(
		<metaitem:food.chum> * 8, 
		<metaitem:component.banana_peel> * 2, 
		<tfc:food/onion>, 
		<metaitem:mashed_potato_dust> * 4, 
		<metaitem:component.skewer> * 4)
	.fluidInputs([
		<liquid:gtfo_lemon_extract> * 200, 
		<liquid:gtfo_stearin> * 400])
	.outputs(<metaitem:component.kebab.chum> * 4)
	.duration(200).EUt(16).buildAndRegister();

// Banana Peel
canner.recipeBuilder()
	.inputs(<tfc:food/banana>)
	.outputs(
		<metaitem:component.banana_peel>, 
		<metaitem:food.peeled_banana>)
	.duration(35).EUt(32).buildAndRegister();

// Seed Oil
extractor.recipeBuilder()
	.inputs(<tfc:crop/seeds/soybean>)
	.outputs(<metaitem:dustSmallWood>)
	.fluidOutputs([<liquid:seed_oil> * 28])
	.duration(200).EUt(16).buildAndRegister();

// Zest From Lemon
recipes.addShapeless("tfg/gtfo/zest_from_lemon", <metaitem:zest_dust>, [<tfc:food/lemon>, <tfc:food/lemon>, <tfc:food/lemon>, <tfc:food/lemon>, <ore:gtce.tool.mortars>]);

// Zest From Orange
recipes.addShapeless("tfg/gtfo/zest_from_orange", <metaitem:zest_dust>, [<tfc:food/orange>, <tfc:food/orange>, <tfc:food/orange>, <tfc:food/orange>, <ore:gtce.tool.mortars>]);

// Zest + Orange Juice
extractor.recipeBuilder()
	.inputs(<tfc:food/orange>)
	.outputs(<metaitem:zest_dust>)
	.fluidOutputs([<liquid:gtfo_orange_extract> * 100])
	.duration(100).EUt(5).buildAndRegister();

// Leninade
mixer.recipeBuilder()
	.inputs([
		<ore:flour>, 
		<metaitem:dustMeat>])
	.fluidInputs([
		<liquid:vodka> * 1000, 
		<liquid:gtfo_lemon_extract> * 100])
	.fluidOutputs([<liquid:gtfo_leninade> * 1100])
	.duration(30).EUt(12).buildAndRegister();

// Vodka Jar
canner.recipeBuilder()
	.inputs(<minecraft:glass_bottle>)
	.fluidInputs([<liquid:vodka> * 100])
	.outputs(<metaitem:food.vodka>)
	.duration(30).EUt(12).buildAndRegister();

// Vodka Liquid
fermenter.recipeBuilder()
	.fluidInputs([<liquid:gtfo_potato_juice> * 2000])
	.fluidOutputs([<liquid:vodka> * 2000])
	.duration(3000).EUt(8).buildAndRegister();

// Cider Liquid
fermenter.recipeBuilder()
	.fluidInputs([<liquid:gtfo_apple_extract> * 100])
	.fluidOutputs([<liquid:cider> * 100])
	.duration(150).EUt(2).buildAndRegister();

// Cider -> Plant Ball
distillation_tower.recipeBuilder()
	.fluidInputs([<liquid:cider> * 1000])
	.outputs(<metaitem:plant_ball>)
	.fluidOutputs([
		<liquid:methanol> * 100, 
		<liquid:carbon_dioxide> * 400, 
		<liquid:methane> * 500, 
		<liquid:acetic_acid> * 80, 
		<liquid:ethanol> * 210, 
		<liquid:water> * 400])
	.duration(40).EUt(120).buildAndRegister();
