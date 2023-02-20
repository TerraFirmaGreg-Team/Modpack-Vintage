#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<metaitem:brick.adobe_fired>,
	<metaitem:brick.adobe>,
	<metaitem:food.potato_on_a_stick>,
	<metaitem:food.fish_rotten>,
	<metaitem:component.dough>,
	<metaitem:component.flat_dough>,
	<metaitem:component.bread>,
	<metaitem:wooden_form.bread>,
	<metaitem:component.sugary_dough>
];

val RemoveRecipe as IItemStack[] = [
   <metaitem:component.apple_slice>,
   <metaitem:brick.adobe_fired>,
   <metaitem:component.mushroom_slice>,
   <metaitem:component.carrot_slice>,
   <metaitem:component.onion_slice>,
   <metaitem:component.olive_slice>,
   <metaitem:component.tomato_slice>,
   <metaitem:component.cucumber_slice>
];

val RemoveRecipesByName = [
   "gregtechfoodoption:casing_adobe_bricks",
   "gregtechfoodoption:casing_reinforced_adobe_bricks",
   "gregtechfoodoption:baking_oven",
   "gregtechfoodoption:gtfo_hand_meat_kebab_0",
   "gregtechfoodoption:gtfo_hand_meat_kebab_1",
   "gregtechfoodoption:gtfo_hand_meat_kebab_2",
   "gregtechfoodoption:gtfo_hand_meat_kebab_3",
   "gregtechfoodoption:gtfo_hand_meat_kebab_4",
   "gregtechfoodoption:gtfo_bacon",
   "gregtechfoodoption:gtfo_sandwich_steak_from_oredict",
   "gregtechfoodoption:gtfo_pumpkin_pie",
   "gregtechfoodoption:gtfo_cake",
   "gregtechfoodoption:cake_bottom",
   "gregtechfoodoption:gtfo_cookie",
   "gregtechfoodoption:gtfo_slice_bread",
   "gregtechfoodoption:bread_dough",
   "gregtechfoodoption:gtfo_hand_carrot_kebab",
   "gregtechfoodoption:gtfo_flat_dough",
   "gregtechfoodoption:dough_2",
   "gregtechfoodoption:dough_4",
   "gregtechfoodoption:sugary_dough",
   "gregtechfoodoption:gtfo_pie_crust",
   "gregtechfoodoption:baguette_dough",
   "gregtechfoodoption:bun_dough",
   "gregtechfoodoption:gtfo_hand_kubide_kebab",
   "gregtechfoodoption:meat_hand_recipe",
   "gregtechfoodoption:gtfo_hand_kubide_kebab_meat",
   "gregtechfoodoption:gtfo_hand_barg_kebab_meat",
   "gregtechfoodoption:gtfo_hand_onion_kebab",
   "gregtechfoodoption:gtfo_hand_zest1",
   "gregtechfoodoption:gtfo_hand_zest2",
   "gregtechfoodoption:gtfo_hand_zest3"
] as string[];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipe{
   recipes.remove(item);
}

for item in RemoveRecipesByName{
   recipes.removeByRecipeName(item);
}

// Удаление рецептов печи
furnace.remove(<metaitem:brick.adobe_fired>);

// Удаление рецептов метана
centrifuge.findRecipe(5, [<metaitem:crop.onion>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.grapes>], null).remove();
centrifuge.findRecipe(5, [<metaitem:crop.tomato>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.apricot>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.mango>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.banana>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.orange>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.lime>], null).remove();
centrifuge.findRecipe(5, [<metaitem:food.lemon>], null).remove();
centrifuge.findRecipe(5, [<galacticraftcore:food:6>], null).remove();
centrifuge.findRecipe(5, [<galacticraftcore:food:7>], null).remove();
centrifuge.findRecipe(5, [<extraplanets:chocolate_bar:0>], null).remove();
centrifuge.findRecipe(5, [<extraplanets:caramel_bar:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:brown_mushroom:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:red_mushroom:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:melon:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:carrot:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:baked_potato:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:rabbit:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:chicken:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:fish:1>], null).remove();
centrifuge.findRecipe(5, [<minecraft:rabbit_stew:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_mutton:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:apple:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:potato:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:beef:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:mutton:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:fish:2>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_rabbit:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_fish:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_beef:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:beetroot_soup:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:pumpkin_pie:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_chicken:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:fish:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cookie:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:bread:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_porkchop:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:beetroot:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:fish:3>], null).remove();
centrifuge.findRecipe(5, [<minecraft:poisonous_potato:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:porkchop:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:mushroom_stew:0>], null).remove();
centrifuge.findRecipe(5, [<minecraft:cooked_fish:1>], null).remove();
centrifuge.findRecipe(5, [<minecraft:nether_wart:0>], null).remove();

// GT Mud Bricks
forming_press.findRecipe(30, [<tfc:sand/diorite:0> * 3, <tfc:gravel/phyllite:0> * 2, <metaitem:dustBentonite>, <metaitem:dustTalc>, <minecraft:wheat:0>, <metaitem:wooden_form.brick>], null).remove();

// Mushroom Slice
slicer.findRecipe(18, [<minecraft:brown_mushroom:0>, <metaitem:config.slicer_blade.flat>], null).remove();

// Apple Structural Mesh
extractor.findRecipe(1920, [<minecraft:apple:0>], null).remove();

// Apple Slice
slicer.findRecipe(18, [<minecraft:apple:0>, <metaitem:config.slicer_blade.octagonal>], null).remove();

// Kebab Meat Raw
cuisine_assembler.findRecipe(16, [<minecraft:chicken:0> * 4, <metaitem:dustTinySalt> * 4, <metaitem:component.skewer> * 4], null).remove();
cuisine_assembler.findRecipe(16, [<minecraft:beef:0> * 4, <metaitem:dustTinySalt> * 4, <metaitem:component.skewer> * 4], null).remove();
cuisine_assembler.findRecipe(16, [<minecraft:porkchop:0> * 4, <metaitem:dustTinySalt> * 4, <metaitem:component.skewer> * 4], null).remove();
cuisine_assembler.findRecipe(16, [<minecraft:mutton:0> * 4, <metaitem:dustTinySalt> * 4, <metaitem:component.skewer> * 4], null).remove();
cuisine_assembler.findRecipe(16, [<minecraft:rabbit:0> * 4, <metaitem:dustTinySalt> * 4, <metaitem:component.skewer> * 4], null).remove();

// Mince Meat
large_chemical_reactor.findRecipe(256, [<minecraft:rabbit:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
large_chemical_reactor.findRecipe(256, [<minecraft:porkchop:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
large_chemical_reactor.findRecipe(256, [<minecraft:chicken:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
large_chemical_reactor.findRecipe(256, [<minecraft:mutton:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();
large_chemical_reactor.findRecipe(256, [<minecraft:beef:0> * 32], [<liquid:methanol> * 4000, <liquid:chloroform> * 4000]).remove();

// Mince Meat + BoneMeal + Animal Fat
// centrifuge.findRecipe(20, [<minecraft:rabbit:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// centrifuge.findRecipe(20, [<minecraft:porkchop:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// centrifuge.findRecipe(20, [<minecraft:beef:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// centrifuge.findRecipe(20, [<minecraft:mutton:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();
// centrifuge.findRecipe(20, [<minecraft:chicken:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 0})], null).remove();

// Fish Oil
extractor.findRecipe(4, [<minecraft:fish:2>], null).remove();
extractor.findRecipe(4, [<minecraft:fish:0>], null).remove();
extractor.findRecipe(4, [<minecraft:fish:3>], null).remove();
extractor.findRecipe(4, [<minecraft:fish:1>], null).remove();

// Sludge
mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:water> * 400]).remove();

// Potato Juice
fermenter.findRecipe(8, [<minecraft:potato:0>], [<liquid:water> * 1000]).remove();

// Rotten food
fermenter.findRecipe(8, [<minecraft:fish:1>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:rotten_flesh:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:fish:2>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:rabbit:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:porkchop:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:chicken:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:mutton:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:fish:0>], [<liquid:water> * 100]).remove();
fermenter.findRecipe(8, [<minecraft:beef:0>], [<liquid:water> * 100]).remove();

// Cooked Meat
// baking_oven.findRecipe(1, [<minecraft:mutton:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <minecraft:coal:1> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:rabbit:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:chicken:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:chicken:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:chicken:0>, <minecraft:coal:1> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:beef:0>, <minecraft:coal:1> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:beef:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:beef:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <minecraft:coal:1>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:porkchop:0>, <tfc:ore/bituminous_coal:0>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:0>, <metaitem:gemCoke>], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:0>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:0>, <minecraft:coal:1> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:1>, <minecraft:coal:1> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:1>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
// baking_oven.findRecipe(1, [<minecraft:fish:1>, <metaitem:gemCoke>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:mutton:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:rabbit:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:chicken:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:beef:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:porkchop:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:fish:0>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:fish:1>], null).remove();

// Uncooked Bacon
slicer.findRecipe(18, [<minecraft:porkchop:0>, <metaitem:config.slicer_blade.flat>], null).remove();

// Beef Slice
slicer.findRecipe(24, [<minecraft:beef:0>, <metaitem:config.slicer_blade.stripes>], null).remove();

// Meat Sandwich
// cuisine_assembler.findRecipe(24, [<metaitem:component.breads> * 3, <metaitem:food.cheddar_slice> * 3, <minecraft:cooked_beef:0>], null).remove();

// Large Meat Sandwich
cuisine_assembler.findRecipe(75, [<metaitem:component.baguettes> * 3, <metaitem:food.cheddar_slice> * 3, <minecraft:cooked_beef:0> * 3], null).remove();

// Rabbit Stew
mixer.findRecipe(8, [<minecraft:brown_mushroom:0>, <minecraft:carrot:0>, <minecraft:cooked_rabbit:0>, <metaitem:mashed_potato_dust>, <metaitem:dustWheat>], [<liquid:water> * 50]).remove();

// Cake
cuisine_assembler.findRecipe(7, [<minecraft:sugar:0>, <minecraft:egg:0>, <metaitem:food.cake_bottom_baked>], [<liquid:milk> * 3000]).remove();

// Baked Cake Bottom
baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <tfc:ore/bituminous_coal:0> * 3], null).remove();
baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <metaitem:gemCoke>], null).remove();
baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>, <minecraft:coal:1> * 3], null).remove();
// electric_baking_oven.findRecipe(1, [<metaitem:food.cake_bottom>], null).remove();

// Cake Bottom
forming_press.findRecipe(30, [<metaitem:component.sugary_dough> * 4, <metaitem:shape.mold.cylinder>], null).remove();

// Melon Seeds
macerator.findRecipe(2, [<minecraft:melon_block:0>], null).remove();
macerator.findRecipe(2, [<minecraft:melon:0>], null).remove();

// Melon Block
packer.findRecipe(2, [<minecraft:melon:0> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// Glistering Melon
chemical_reactor.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();

// Pre-Sliced Bread
slicer.findRecipe(18, [<minecraft:bread:0>, <metaitem:config.slicer_blade.flat>], null).remove();

// Bread
baking_oven.findRecipe(1, [<metaitem:component.bread>, <metaitem:gemCoke>], null).remove();
baking_oven.findRecipe(1, [<metaitem:component.bread>, <tfc:ore/bituminous_coal:0> * 2], null).remove();
baking_oven.findRecipe(1, [<metaitem:component.bread>, <minecraft:coal:1> * 2], null).remove();
// electric_baking_oven.findRecipe(1, [<metaitem:component.bread>], null).remove();

// Unbaked Bread
forming_press.findRecipe(20, [<metaitem:component.dough> * 3, <metaitem:wooden_form.bread>], null).remove();

// Flour
macerator.findRecipe(2, [<minecraft:wheat:0>], null).remove();
macerator.findRecipe(2, [<minecraft:hay_block:0>], null).remove();

// Tomato Slice
slicer.findRecipe(18, [<metaitem:crop.tomato>, <metaitem:config.slicer_blade.flat>], null).remove();

// Cucumber Slice
slicer.findRecipe(18, [<metaitem:crop.cucumber>, <metaitem:config.slicer_blade.flat>], null).remove();

// Olive Slice
slicer.findRecipe(18, [<metaitem:crop.olive>, <metaitem:config.slicer_blade.flat>], null).remove();

// Onion Slice
slicer.findRecipe(18, [<metaitem:crop.onion>, <metaitem:config.slicer_blade.flat>], null).remove();

// Carrot Slice
slicer.findRecipe(18, [<minecraft:carrot:0>, <metaitem:config.slicer_blade.flat>], null).remove();

// Peeled Potato
slicer.findRecipe(8, [<minecraft:potato:0>, <metaitem:config.slicer_blade.flat>], [<liquid:water> * 500]).remove();

// Mashed Potato
macerator.findRecipe(4, [<minecraft:potato:0>], null).remove();

// Baked Potato
baking_oven.findRecipe(1, [<minecraft:potato:0>, <minecraft:coal:1>], null).remove();
baking_oven.findRecipe(1, [<minecraft:potato:0>, <tfc:ore/bituminous_coal:0>], null).remove();
baking_oven.findRecipe(1, [<minecraft:potato:0>, <metaitem:gemCoke>], null).remove();
// electric_baking_oven.findRecipe(1, [<minecraft:potato:0>], null).remove();

// Roasted Potato
assembler.findRecipe(4, [<minecraft:stick:0>, <minecraft:baked_potato:0>], null).remove();

// Carrot Structural Mesh
extractor.findRecipe(1920, [<minecraft:carrot:0>], null).remove();

// Beetroot Soup
mixer.findRecipe(8, [<minecraft:beetroot:0> * 2, <metaitem:dustWheat>], [<liquid:water> * 100]).remove();

// Chum
mixer.findRecipe(24, [<metaitem:food.meat_rotten>, <minecraft:red_mushroom:0>, <minecraft:poisonous_potato:0>, <minecraft:fermented_spider_eye:0>], [<liquid:gtfo_sludge> * 100]).remove();
// mixer.findRecipe(24, [<metaitem:food.meat_rotten>, <minecraft:red_mushroom:0>, <minecraft:poisonous_potato:0>, <minecraft:fermented_spider_eye:0>], [<liquid:gtfo_sludge> * 100, <liquid:gtfo_purple_drink> * 100]).remove();
// mixer.findRecipe(24, [<metaitem:food.fish_rotten>, <minecraft:red_mushroom:0>, <minecraft:poisonous_potato:0>, <minecraft:fermented_spider_eye:0>], [<liquid:gtfo_sludge> * 100]).remove();
// mixer.findRecipe(24, [<metaitem:food.fish_rotten>, <minecraft:red_mushroom:0>, <minecraft:poisonous_potato:0>, <minecraft:fermented_spider_eye:0>], [<liquid:gtfo_sludge> * 100, <liquid:gtfo_purple_drink> * 100]).remove();

// Flat Dough
forge_hammer.findRecipe(60, [<metaitem:component.dough>], null).remove();

// Dough
mixer.findRecipe(8, [<metaitem:dustWheat> * 4, <metaitem:dustTinySalt>, <metaitem:dustTinySodaAsh>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:water> * 1000]).remove();

// Raw Olive and Mushroom Pizza
cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 3, <metaitem:component.mushroom_slice> * 8, <metaitem:component.olive_slice> * 8], [<liquid:gtfo_tomato_sauce> * 300]).remove();

// Raw Cheese Pizza
cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 8, <metaitem:circuit.integrated>], [<liquid:gtfo_tomato_sauce> * 600]).remove();

// Raw Mince Meat Pizza
cuisine_assembler.findRecipe(180, [<metaitem:component.flat_dough>, <metaitem:component.mozzarella_slice> * 4, <metaitem:dustMeat> * 10], [<liquid:gtfo_tomato_sauce> * 450]).remove();

// Sugary Dough
mixer.findRecipe(7, [<minecraft:sugar:0>, <metaitem:component.dough>], null).remove();

// Unbaked Baguette
forming_press.findRecipe(20, [<metaitem:component.dough> * 2, <metaitem:wooden_form.baguette>], null).remove();

// Unbaked Bun
forming_press.findRecipe(20, [<metaitem:component.dough> * 2, <metaitem:wooden_form.bun>], null).remove();

// Mushroom Stew
mixer.findRecipe(8, [<minecraft:brown_mushroom:0>, <minecraft:red_mushroom:0>, <metaitem:dustWheat>], [<liquid:milk> * 25]).remove();

// Zest
extractor.findRecipe(5, [<metaitem:food.lemon>], null).remove();

// Toughened Meat
mixer.findRecipe(16, [<metaitem:dustWheat>, <metaitem:dustMeat>], [<liquid:water> * 500]).remove();

// Olive Oil
extractor.findRecipe(27, [<metaitem:crop.olive>], null).remove();

// Orange, Lemon and etc
// centrifuge.findRecipe(6, [<minecraft:leaves:3>], null).remove();

// Apricot
// centrifuge.findRecipe(6, [<minecraft:leaves2:0>], null).remove();

// Olive
// centrifuge.findRecipe(6, [<minecraft:leaves:0>], null).remove();

// Kebab e Soltani!
cuisine_assembler.findRecipe(120, [<metaitem:food.kebab.barg> * 2, <metaitem:food.kebab.kubide>, <metaitem:crop.tomato> * 3, <metaitem:crop.onion> * 2, <metaitem:food.lemon>], [<liquid:gtfo_stearin> * 1000, <liquid:gtfo_lemon_extract> * 250]).remove();

// Chum on Skewel Kebab
cuisine_assembler.findRecipe(16, [<metaitem:food.chum> * 8, <metaitem:component.banana_peel> * 2, <metaitem:crop.onion>, <metaitem:mashed_potato_dust> * 4, <metaitem:component.skewer> * 4], [<liquid:gtfo_yolk> * 200, <liquid:gtfo_stearin> * 400]).remove();

// Banana Peel
canner.findRecipe(32, [<metaitem:food.banana>], null).remove();

// Растительное масло
extractor.findRecipe(2, [<metaitem:seed.soy>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Маленькая кучка древесных опилок
extractor.findRecipe(64, [<metaitem:seed.soy>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

// Цедра
extractor.findRecipe(5, [<metaitem:food.lime>], null).remove();

// Цедра
extractor.findRecipe(5, [<metaitem:food.orange>], null).remove();

// Комок биомассы
distillation_tower.findRecipe(120, null, [<liquid:gtfo_lime_extract> * 1000]).remove();

// Комок биомассы
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// Комок биомассы
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// Комок биомассы
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], [<liquid:gtfo_lime_extract> * 1000]).remove();

// Reinforced Adobe Bricks * 1
assembler.findRecipe(28, [<metaitem:plateBronze>, <metaitem:brick.adobe_fired> * 2, <gregtechfoodoption:gtfo_casing:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Reinforced Adobe Bricks * 3
assembler.findRecipe(28, [<gregtechfoodoption:gtfo_casing:0> * 3, <metaitem:plateBronze> * 3, <metaitem:brick.adobe_fired> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Leninade * 1100
mixer.findRecipe(12, null, [<liquid:gtfo_vodka> * 1000, <liquid:gtfo_lemon_extract> * 100]).remove();

// Vodka * 1
canner.findRecipe(12, [<minecraft:glass_bottle:0>], [<liquid:gtfo_vodka> * 100]).remove();

// Vodka
fermenter.findRecipe(8, null, [<liquid:gtfo_potato_juice> * 2000]).remove();

// Apple Cider * 100
fermenter.findRecipe(2, null, [<liquid:gtfo_apple_extract> * 100]).remove();

// Раскрафт сидра
distillation_tower.findRecipe(120, null, [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 4})], [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 6})], [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], [<liquid:gtfo_apple_cider> * 1000]).remove();
distillery.findRecipe(30, [<metaitem:circuit.integrated>.withTag({Configuration: 5})], [<liquid:gtfo_apple_cider> * 1000]).remove();

// Unfired Cup
forming_press.findRecipe(30, [<minecraft:clay_ball> * 5, <metaitem:component.paper_cone>], null).remove();