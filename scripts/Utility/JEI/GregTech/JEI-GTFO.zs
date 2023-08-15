// #priority 980

// import mods.jei.JEI;
// import crafttweaker.item.IItemStack;



// // Удаление рецептов печи
// //furnace.remove(<metaitem:brick.adobe_fired>);



// // GT Mud Bricks
// forming_press.findRecipe(30, [<tfc:sand/diorite:0> * 3, <tfc:gravel/phyllite:0> * 2, <metaitem:dustBentonite>, <metaitem:dustTalc>, <minecraft:wheat:0>, <metaitem:wooden_form.brick>], null).remove();

// // Apple Structural Mesh
// extractor.findRecipe(1920, [<minecraft:apple:0>], null).remove();

// // Mince Meat
// large_chemical_reactor.findRecipe(256, [<minecraft:rabbit:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
// large_chemical_reactor.findRecipe(256, [<minecraft:porkchop:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
// large_chemical_reactor.findRecipe(256, [<minecraft:chicken:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
// large_chemical_reactor.findRecipe(256, [<minecraft:mutton:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
// large_chemical_reactor.findRecipe(256, [<minecraft:beef:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();

// // Mince Meat + BoneMeal + Animal Fat
// // centrifuge.findRecipe(20, [<minecraft:rabbit:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// // centrifuge.findRecipe(20, [<minecraft:porkchop:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// // centrifuge.findRecipe(20, [<minecraft:beef:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// // centrifuge.findRecipe(20, [<minecraft:mutton:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// // centrifuge.findRecipe(20, [<minecraft:chicken:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();

// // Fish Oil
// extractor.findRecipe(4, [<minecraft:fish:2>], null).remove();
// extractor.findRecipe(4, [<minecraft:fish:0>], null).remove();
// extractor.findRecipe(4, [<minecraft:fish:3>], null).remove();
// extractor.findRecipe(4, [<minecraft:fish:1>], null).remove();

// // Sludge
// mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:sulfuric_acid> * 200]).remove();
// // mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:sulfuric_acid> * 200]).remove();
// mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:water> * 400]).remove();
// mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:water> * 400]).remove();

// // Potato Juice
// fermenter.findRecipe(8, [<minecraft:potato:0>], [<liquid:water> * 1000]).remove();

// // Rotten food
// fermenter.findRecipe(8, [<minecraft:fish:1>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:rotten_flesh:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:fish:2>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:rabbit:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:porkchop:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:chicken:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:mutton:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:fish:0>], [<liquid:water> * 100]).remove();
// fermenter.findRecipe(8, [<minecraft:beef:0>], [<liquid:water> * 100]).remove();

// // Cooked Meat
// // baking_oven.findRecipe(1, [<minecraft:mutton:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:mutton:0>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:mutton:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:chicken:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:chicken:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:chicken:0>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:beef:0>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:beef:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:beef:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <minecraft:coal:1>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <tfc:ore/bituminous_coal:0>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:0>, <metaitem:gemCoke>], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:0>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:1>, <minecraft:coal:1> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:1>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// // baking_oven.findRecipe(1, [<minecraft:fish:1>, <metaitem:gemCoke>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:mutton:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:rabbit:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:chicken:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:beef:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:porkchop:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:fish:0>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:fish:1>], null).remove();

// // Meat Sandwich
// //cuisine_assembler.findRecipe(24, [<metaitem:component.breads> * 3, <metaitem:food.cheddar_slice> * 3, <minecraft:cooked_beef:0>], null).remove();



// // Baked Cake Bottom
// //baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <tfc:ore/bituminous_coal:0> * 3], null).remove();
// //baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <metaitem:gemCoke>], null).remove();
// //baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <minecraft:coal:1> * 3], null).remove();
// // electric_baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>], null).remove();

// // Melon Seeds
// macerator.findRecipe(2, [<minecraft:melon_block:0>], null).remove();
// macerator.findRecipe(2, [<minecraft:melon:0>], null).remove();

// // Melon Block
// packer.findRecipe(2, [<minecraft:melon:0> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// // Glistering Melon
// chemical_reactor.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();
// large_chemical_reactor.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();

// // Bread
// //baking_oven.findRecipe(1, [<metaitem:component.bread>, <metaitem:gemCoke>], null).remove();
// //baking_oven.findRecipe(1, [<metaitem:component.bread>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// //baking_oven.findRecipe(1, [<metaitem:component.bread>, <minecraft:coal:1> * 2], null).remove();
// // electric_baking_oven.findRecipe(1, [<metaitem:component.bread>], null).remove();

// // Flour
// macerator.findRecipe(2, [<minecraft:wheat:0>], null).remove();
// macerator.findRecipe(2, [<minecraft:hay_block:0>], null).remove();

// // Mashed Potato
// macerator.findRecipe(4, [<minecraft:potato:0>], null).remove();

// // Baked Potato
// //baking_oven.findRecipe(1, [<minecraft:potato:0>, <minecraft:coal:1>], null).remove();
// //baking_oven.findRecipe(1, [<minecraft:potato:0>, <tfc:ore/bituminous_coal:0>], null).remove();
// //baking_oven.findRecipe(1, [<minecraft:potato:0>, <metaitem:gemCoke>], null).remove();
// // electric_baking_oven.findRecipe(1, [<minecraft:potato:0>], null).remove();

// // Roasted Potato
// mods.gregtech.assembler.findRecipe(4, [<minecraft:stick:0>, <minecraft:baked_potato:0>], null).remove();

// // Carrot Structural Mesh
// extractor.findRecipe(1920, [<minecraft:carrot:0>], null).remove();

// // Beetroot Soup
// mixer.findRecipe(8, [<minecraft:beetroot:0> * 2, <metaitem:dustWheat>], [<liquid:water> * 100]).remove();

// // Dough
// mixer.findRecipe(8, [<metaitem:dustWheat> * 4, <metaitem:dustTinySalt>, <metaitem:dustTinySodaAsh>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:water> * 1000]).remove();

// // Raw Olive and Mushroom Pizza
// // cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 3, <metaitem:component.mushroom_slice> * 8, <metaitem:component.olive_slice> * 8], [<liquid:gtfo_tomato_sauce> * 300]).remove();

// // Raw Cheese Pizza
// // cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 8, <metaitem:circuit.integrated>], [<liquid:gtfo_tomato_sauce> * 600]).remove();

// // Raw Mince Meat Pizza
// //cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 4, <metaitem:dustMeat> * 10], [<liquid:gtfo_tomato_sauce> * 450]).remove();


// // Mushroom Stew
// mixer.findRecipe(8, [<minecraft:brown_mushroom:0>, <minecraft:red_mushroom:0>, <metaitem:dustWheat>], [<liquid:milk> * 25]).remove();


// // Toughened Meat
// mixer.findRecipe(16, [<metaitem:dustWheat>, <metaitem:dustMeat>], [<liquid:water> * 500]).remove();


// // Orange, Lemon and etc
// // centrifuge.findRecipe(6, [<minecraft:leaves:3>], null).remove();

// // Apricot
// // centrifuge.findRecipe(6, [<minecraft:leaves2:0>], null).remove();

// // Olive
// // centrifuge.findRecipe(6, [<minecraft:leaves:0>], null).remove();



// // Комок биомассы
// distillation_tower.findRecipe(120, null, [<liquid:gtfo_lime_extract> * 1000]).remove();

// // Комок биомассы
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// // Комок биомассы
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// // Комок биомассы
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// // Leninade * 1100
// mixer.findRecipe(12, null, [<liquid:gtfo_vodka> * 1000, <liquid:gtfo_lemon_extract> * 100]).remove();

// // Vodka * 1
// canner.findRecipe(12, [<minecraft:glass_bottle:0>], [<liquid:gtfo_vodka> * 100]).remove();

// // Vodka
// fermenter.findRecipe(8, null, [<liquid:gtfo_potato_juice> * 2000]).remove();

// // Apple Cider * 100
// fermenter.findRecipe(2, null, [<liquid:gtfo_apple_extract> * 100]).remove();

// // Раскрафт сидра
// distillation_tower.findRecipe(120, null, [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 4})], [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 6})], [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], [<liquid:gtfo_apple_cider> * 1000]).remove();
// distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 5})], [<liquid:gtfo_apple_cider> * 1000]).remove();
