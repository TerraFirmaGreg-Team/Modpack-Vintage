#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack


// --- Массивы

def (RemoveAndHide) = [
	metaitem('brick.adobe_fired'),
	metaitem('brick.adobe'),
	metaitem('food.potato_on_a_stick'),
	metaitem('food.fish_rotten'),
	metaitem('component.dough'),
	metaitem('component.flat_dough'),
	metaitem('component.bread'),
	metaitem('wooden_form.bread'),
	metaitem('component.sugary_dough')
]

def (RemoveRecipe) = [
   metaitem('component.apple_slice'),
   metaitem('brick.adobe_fired'),
   metaitem('component.mushroom_slice'),
   metaitem('component.carrot_slice'),
   metaitem('component.onion_slice'),
   metaitem('component.olive_slice'),
   metaitem('component.tomato_slice'),
   metaitem('component.cucumber_slice')
]

def (RemoveRecipesByName) = [
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
] as string[]


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

for item in RemoveRecipe{
   crafting.removeByOutput(item)
}

for item in RemoveRecipesByName{
   crafting.removeByOutputByRecipeName(item)
}

// Удаление рецептов печи
furnace.remove(metaitem('brick.adobe_fired'))

// Удаление рецептов метана
// centrifuge.findRecipe(5, [metaitem('crop.onion')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.grapes')], null).remove()
// centrifuge.findRecipe(5, [metaitem('crop.tomato')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.apricot')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.mango')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.banana')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.orange')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.lime')], null).remove()
// centrifuge.findRecipe(5, [metaitem('food.lemon')], null).remove()
// centrifuge.findRecipe(5, [item('galacticraftcore:food:6')], null).remove()
// centrifuge.findRecipe(5, [item('galacticraftcore:food:7')], null).remove()
// centrifuge.findRecipe(5, [item('extraplanets:chocolate_bar:0')], null).remove()
// centrifuge.findRecipe(5, [item('extraplanets:caramel_bar:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:brown_mushroom:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:red_mushroom:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:melon:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:carrot:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:baked_potato:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:rabbit:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:chicken:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:fish:1')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:rabbit_stew:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_mutton:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:apple:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:potato:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:beef:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:mutton:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:fish:2')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_rabbit:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_fish:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_beef:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:beetroot_soup:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:pumpkin_pie:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_chicken:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:fish:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cookie:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:bread:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_porkchop:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:beetroot:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:fish:3')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:poisonous_potato:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:porkchop:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:mushroom_stew:0')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:cooked_fish:1')], null).remove()
// centrifuge.findRecipe(5, [item('minecraft:nether_wart:0')], null).remove()

// GT Mud Bricks
forming_press.findRecipe(30, [item('tfc:sand/diorite:0') * 3, item('tfc:gravel/phyllite:0') * 2, metaitem('dustBentonite'), metaitem('dustTalc'), item('minecraft:wheat:0'), metaitem('wooden_form.brick')], null).remove()

// Mushroom Slice
slicer.findRecipe(18, [item('minecraft:brown_mushroom:0'), metaitem('config.slicer_blade.flat')], null).remove()

// Apple Structural Mesh
extractor.findRecipe(1920, [item('minecraft:apple:0')], null).remove()

// Apple Slice
slicer.findRecipe(18, [item('minecraft:apple:0'), metaitem('config.slicer_blade.octagonal')], null).remove()

// Kebab Meat Raw
cuisine_assembler.findRecipe(16, [item('minecraft:chicken:0') * 4, metaitem('dustTinySalt') * 4, metaitem('component.skewer') * 4], null).remove()
cuisine_assembler.findRecipe(16, [item('minecraft:beef:0') * 4, metaitem('dustTinySalt') * 4, metaitem('component.skewer') * 4], null).remove()
cuisine_assembler.findRecipe(16, [item('minecraft:porkchop:0') * 4, metaitem('dustTinySalt') * 4, metaitem('component.skewer') * 4], null).remove()
cuisine_assembler.findRecipe(16, [item('minecraft:mutton:0') * 4, metaitem('dustTinySalt') * 4, metaitem('component.skewer') * 4], null).remove()
cuisine_assembler.findRecipe(16, [item('minecraft:rabbit:0') * 4, metaitem('dustTinySalt') * 4, metaitem('component.skewer') * 4], null).remove()

// Mince Meat
large_chemical_reactor.findRecipe(256, [item('minecraft:rabbit:0') * 32], [fluid('methanol') * 4000, fluid('chloroform') * 4000]).remove()
large_chemical_reactor.findRecipe(256, [item('minecraft:porkchop:0') * 32], [fluid('methanol') * 4000, fluid('chloroform') * 4000]).remove()
large_chemical_reactor.findRecipe(256, [item('minecraft:chicken:0') * 32], [fluid('methanol') * 4000, fluid('chloroform') * 4000]).remove()
large_chemical_reactor.findRecipe(256, [item('minecraft:mutton:0') * 32], [fluid('methanol') * 4000, fluid('chloroform') * 4000]).remove()
large_chemical_reactor.findRecipe(256, [item('minecraft:beef:0') * 32], [fluid('methanol') * 4000, fluid('chloroform') * 4000]).remove()

// Mince Meat + BoneMeal + Animal Fat
// centrifuge.findRecipe(20, [item('minecraft:rabbit:0') * 8, metaitem('circuit.integrated').withNbt({Configuration: 0})], null).remove()
// centrifuge.findRecipe(20, [item('minecraft:porkchop:0') * 8, metaitem('circuit.integrated').withNbt({Configuration: 0})], null).remove()
// centrifuge.findRecipe(20, [item('minecraft:beef:0') * 8, metaitem('circuit.integrated').withNbt({Configuration: 0})], null).remove()
// centrifuge.findRecipe(20, [item('minecraft:mutton:0') * 8, metaitem('circuit.integrated').withNbt({Configuration: 0})], null).remove()
// centrifuge.findRecipe(20, [item('minecraft:chicken:0') * 8, metaitem('circuit.integrated').withNbt({Configuration: 0})], null).remove()

// Fish Oil
extractor.findRecipe(4, [item('minecraft:fish:2')], null).remove()
extractor.findRecipe(4, [item('minecraft:fish:0')], null).remove()
extractor.findRecipe(4, [item('minecraft:fish:3')], null).remove()
extractor.findRecipe(4, [item('minecraft:fish:1')], null).remove()

// Sludge
mixer.findRecipe(16, [item('minecraft:fish:2')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:rabbit:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:porkchop:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:chicken:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:mutton:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:fish:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:beef:0')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:fish:1')], [fluid('sulfuric_acid') * 200]).remove()
mixer.findRecipe(16, [item('minecraft:chicken:0')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:mutton:0')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:fish:0')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:beef:0')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:fish:1')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:fish:2')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:rabbit:0')], [fluid('water') * 400]).remove()
mixer.findRecipe(16, [item('minecraft:porkchop:0')], [fluid('water') * 400]).remove()

// Potato Juice
fermenter.findRecipe(8, [item('minecraft:potato:0')], [fluid('water') * 1000]).remove()

// Rotten food
fermenter.findRecipe(8, [item('minecraft:fish:1')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:rotten_flesh:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:fish:2')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:rabbit:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:porkchop:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:chicken:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:mutton:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:fish:0')], [fluid('water') * 100]).remove()
fermenter.findRecipe(8, [item('minecraft:beef:0')], [fluid('water') * 100]).remove()

// Cooked Meat
// baking_oven.findRecipe(1, [item('minecraft:mutton:0'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:mutton:0'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:mutton:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:rabbit:0'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:rabbit:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:rabbit:0'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:chicken:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:chicken:0'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:chicken:0'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:beef:0'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:beef:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:beef:0'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:porkchop:0'), item('minecraft:coal:1')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:porkchop:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:porkchop:0'), item('tfc:ore/bituminous_coal:0')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:0'), metaitem('gemCoke')], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:0'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:0'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:1'), item('minecraft:coal:1') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:1'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
// baking_oven.findRecipe(1, [item('minecraft:fish:1'), metaitem('gemCoke')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:mutton:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:rabbit:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:chicken:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:beef:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:porkchop:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:fish:0')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:fish:1')], null).remove()

// Uncooked Bacon
slicer.findRecipe(18, [item('minecraft:porkchop:0'), metaitem('config.slicer_blade.flat')], null).remove()

// Beef Slice
slicer.findRecipe(24, [item('minecraft:beef:0'), metaitem('config.slicer_blade.stripes')], null).remove()

// Meat Sandwich
//cuisine_assembler.findRecipe(24, [metaitem('component.breads') * 3, metaitem('food.cheddar_slice') * 3, item('minecraft:cooked_beef:0')], null).remove()

// Large Meat Sandwich
cuisine_assembler.findRecipe(75, [metaitem('component.baguettes') * 3, metaitem('food.cheddar_slice') * 3, item('minecraft:cooked_beef:0') * 3], null).remove()

// Rabbit Stew
mixer.findRecipe(8, [item('minecraft:brown_mushroom:0'), item('minecraft:carrot:0'), item('minecraft:cooked_rabbit:0'), metaitem('mashed_potato_dust'), metaitem('dustWheat')], [fluid('water') * 50]).remove()

// Cake
cuisine_assembler.findRecipe(7, [item('minecraft:sugar:0'), item('minecraft:egg:0'), metaitem('food.cake_bottom_baked')], [fluid('milk') * 3000]).remove()

// Baked Cake Bottom
//baking_oven.findRecipe(1, [metaitem('food.cake_bottom'), item('tfc:ore/bituminous_coal:0') * 3], null).remove()
//baking_oven.findRecipe(1, [metaitem('food.cake_bottom'), metaitem('gemCoke')], null).remove()
//baking_oven.findRecipe(1, [metaitem('food.cake_bottom'), item('minecraft:coal:1') * 3], null).remove()
// electric_baking_oven.findRecipe(1, [metaitem('food.cake_bottom')], null).remove()

// Cake Bottom
forming_press.findRecipe(30, [metaitem('component.sugary_dough') * 4, metaitem('shape.mold.cylinder')], null).remove()

// Melon Seeds
macerator.findRecipe(2, [item('minecraft:melon_block:0')], null).remove()
macerator.findRecipe(2, [item('minecraft:melon:0')], null).remove()

// Melon Block
packer.findRecipe(2, [item('minecraft:melon:0') * 9, metaitem('circuit.integrated').withNbt({Configuration: 9})], null).remove()

// Glistering Melon
chemical_reactor.findRecipe(30, [item('minecraft:melon:0'), item('minecraft:gold_nugget:0') * 8], null).remove()
large_chemical_reactor.findRecipe(30, [item('minecraft:melon:0'), item('minecraft:gold_nugget:0') * 8], null).remove()

// Pre-Sliced Bread
slicer.findRecipe(18, [item('minecraft:bread:0'), metaitem('config.slicer_blade.flat')], null).remove()

// Bread
//baking_oven.findRecipe(1, [metaitem('component.bread'), metaitem('gemCoke')], null).remove()
//baking_oven.findRecipe(1, [metaitem('component.bread'), item('tfc:ore/bituminous_coal:0') * 2], null).remove()
//baking_oven.findRecipe(1, [metaitem('component.bread'), item('minecraft:coal:1') * 2], null).remove()
// electric_baking_oven.findRecipe(1, [metaitem('component.bread')], null).remove()

// Unbaked Bread
forming_press.findRecipe(20, [metaitem('component.dough') * 3, metaitem('wooden_form.bread')], null).remove()

// Flour
macerator.findRecipe(2, [item('minecraft:wheat:0')], null).remove()
macerator.findRecipe(2, [item('minecraft:hay_block:0')], null).remove()

// Tomato Slice
slicer.findRecipe(18, [metaitem('crop.tomato'), metaitem('config.slicer_blade.flat')], null).remove()

// Cucumber Slice
slicer.findRecipe(18, [metaitem('crop.cucumber'), metaitem('config.slicer_blade.flat')], null).remove()

// Olive Slice
slicer.findRecipe(18, [metaitem('crop.olive'), metaitem('config.slicer_blade.flat')], null).remove()

// Onion Slice
slicer.findRecipe(18, [metaitem('crop.onion'), metaitem('config.slicer_blade.flat')], null).remove()

// Carrot Slice
slicer.findRecipe(18, [item('minecraft:carrot:0'), metaitem('config.slicer_blade.flat')], null).remove()

// Peeled Potato
slicer.findRecipe(8, [item('minecraft:potato:0'), metaitem('config.slicer_blade.flat')], [fluid('water') * 500]).remove()

// Mashed Potato
macerator.findRecipe(4, [item('minecraft:potato:0')], null).remove()

// Baked Potato
//baking_oven.findRecipe(1, [item('minecraft:potato:0'), item('minecraft:coal:1')], null).remove()
//baking_oven.findRecipe(1, [item('minecraft:potato:0'), item('tfc:ore/bituminous_coal:0')], null).remove()
//baking_oven.findRecipe(1, [item('minecraft:potato:0'), metaitem('gemCoke')], null).remove()
// electric_baking_oven.findRecipe(1, [item('minecraft:potato:0')], null).remove()

// Roasted Potato
assembler.findRecipe(4, [item('minecraft:stick:0'), item('minecraft:baked_potato:0')], null).remove()

// Carrot Structural Mesh
extractor.findRecipe(1920, [item('minecraft:carrot:0')], null).remove()

// Beetroot Soup
mixer.findRecipe(8, [item('minecraft:beetroot:0') * 2, metaitem('dustWheat')], [fluid('water') * 100]).remove()

// Chum
mixer.findRecipe(24, [metaitem('food.meat_rotten'), item('minecraft:red_mushroom:0'), item('minecraft:poisonous_potato:0'), item('minecraft:fermented_spider_eye:0')], [fluid('gtfo_sludge') * 100]).remove()
// mixer.findRecipe(24, [metaitem('food.meat_rotten'), item('minecraft:red_mushroom:0'), item('minecraft:poisonous_potato:0'), item('minecraft:fermented_spider_eye:0')], [fluid('gtfo_sludge') * 100, fluid('gtfo_purple_drink') * 100]).remove()
// mixer.findRecipe(24, [metaitem('food.fish_rotten'), item('minecraft:red_mushroom:0'), item('minecraft:poisonous_potato:0'), item('minecraft:fermented_spider_eye:0')], [fluid('gtfo_sludge') * 100]).remove()
// mixer.findRecipe(24, [metaitem('food.fish_rotten'), item('minecraft:red_mushroom:0'), item('minecraft:poisonous_potato:0'), item('minecraft:fermented_spider_eye:0')], [fluid('gtfo_sludge') * 100, fluid('gtfo_purple_drink') * 100]).remove()

// Flat Dough
forge_hammer.findRecipe(60, [metaitem('component.dough')], null).remove()

// Dough
mixer.findRecipe(8, [metaitem('dustWheat') * 4, metaitem('dustTinySalt'), metaitem('dustTinySodaAsh'), metaitem('circuit.integrated').withNbt({Configuration: 1})], [fluid('water') * 1000]).remove()

// Raw Olive and Mushroom Pizza
// cuisine_assembler.findRecipe(180, [metaitem('component.flat_dough'), metaitem('component.mozzarella_slice') * 3, metaitem('component.mushroom_slice') * 8, metaitem('component.olive_slice') * 8], [fluid('gtfo_tomato_sauce') * 300]).remove()

// Raw Cheese Pizza
// cuisine_assembler.findRecipe(180, [metaitem('component.flat_dough'), metaitem('component.mozzarella_slice') * 8, metaitem('circuit.integrated')], [fluid('gtfo_tomato_sauce') * 600]).remove()

// Raw Mince Meat Pizza
//cuisine_assembler.findRecipe(180, [metaitem('component.flat_dough'), metaitem('component.mozzarella_slice') * 4, metaitem('dustMeat') * 10], [fluid('gtfo_tomato_sauce') * 450]).remove()

// Sugary Dough
mixer.findRecipe(7, [item('minecraft:sugar:0'), metaitem('component.dough')], null).remove()

// Unbaked Baguette
forming_press.findRecipe(20, [metaitem('component.dough') * 2, metaitem('wooden_form.baguette')], null).remove()

// Unbaked Bun
forming_press.findRecipe(20, [metaitem('component.dough') * 2, metaitem('wooden_form.bun')], null).remove()

// Mushroom Stew
mixer.findRecipe(8, [item('minecraft:brown_mushroom:0'), item('minecraft:red_mushroom:0'), metaitem('dustWheat')], [fluid('milk') * 25]).remove()

// Zest
extractor.findRecipe(5, [metaitem('food.lemon')], null).remove()

// Toughened Meat
mixer.findRecipe(16, [metaitem('dustWheat'), metaitem('dustMeat')], [fluid('water') * 500]).remove()

// Olive Oil
extractor.findRecipe(27, [metaitem('crop.olive')], null).remove()

// Orange, Lemon and etc
// centrifuge.findRecipe(6, [item('minecraft:leaves:3')], null).remove()

// Apricot
// centrifuge.findRecipe(6, [item('minecraft:leaves2:0')], null).remove()

// Olive
// centrifuge.findRecipe(6, [item('minecraft:leaves:0')], null).remove()

// Kebab e Soltani!
cuisine_assembler.findRecipe(120, [metaitem('food.kebab.barg') * 2, metaitem('food.kebab.kubide'), metaitem('crop.tomato') * 3, metaitem('crop.onion') * 2, metaitem('food.lemon')], [fluid('gtfo_stearin') * 1000, fluid('gtfo_lemon_extract') * 250]).remove()

// Chum on Skewel Kebab
cuisine_assembler.findRecipe(16, [metaitem('food.chum') * 8, metaitem('component.banana_peel') * 2, metaitem('crop.onion'), metaitem('mashed_potato_dust') * 4, metaitem('component.skewer') * 4], [fluid('gtfo_yolk') * 200, fluid('gtfo_stearin') * 400]).remove()

// Banana Peel
canner.findRecipe(32, [metaitem('food.banana')], null).remove()

// Растительное масло
extractor.findRecipe(2, [metaitem('seed.soy'), metaitem('circuit.integrated').withNbt({Configuration: 1})], null).remove()

// Маленькая кучка древесных опилок
extractor.findRecipe(64, [metaitem('seed.soy'), metaitem('circuit.integrated').withNbt({Configuration: 2})], null).remove()

// Цедра
extractor.findRecipe(5, [metaitem('food.lime')], null).remove()

// Цедра
extractor.findRecipe(5, [metaitem('food.orange')], null).remove()

// Комок биомассы
distillation_tower.findRecipe(120, null, [fluid('gtfo_lime_extract') * 1000]).remove()

// Комок биомассы
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 1})], [fluid('gtfo_lime_extract') * 1000]).remove()

// Комок биомассы
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 2})], [fluid('gtfo_lime_extract') * 1000]).remove()

// Комок биомассы
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 3})], [fluid('gtfo_lime_extract') * 1000]).remove()

// Reinforced Adobe Bricks * 1
assembler.findRecipe(28, [metaitem('plateBronze'), metaitem('brick.adobe_fired') * 2, item('gregtechfoodoption:gtfo_casing:0'), metaitem('circuit.integrated').withNbt({Configuration: 1})], null).remove()

// Reinforced Adobe Bricks * 3
assembler.findRecipe(28, [item('gregtechfoodoption:gtfo_casing:0') * 3, metaitem('plateBronze') * 3, metaitem('brick.adobe_fired') * 6, metaitem('circuit.integrated').withNbt({Configuration: 3})], null).remove()

// Leninade * 1100
mixer.findRecipe(12, null, [fluid('gtfo_vodka') * 1000, fluid('gtfo_lemon_extract') * 100]).remove()

// Vodka * 1
canner.findRecipe(12, [item('minecraft:glass_bottle:0')], [fluid('gtfo_vodka') * 100]).remove()

// Vodka
fermenter.findRecipe(8, null, [fluid('gtfo_potato_juice') * 2000]).remove()

// Apple Cider * 100
fermenter.findRecipe(2, null, [fluid('gtfo_apple_extract') * 100]).remove()

// Раскрафт сидра
distillation_tower.findRecipe(120, null, [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 4})], [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 2})], [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 6})], [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 1})], [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 3})], [fluid('gtfo_apple_cider') * 1000]).remove()
distillery.findRecipe(30, [metaitem('circuit.integrated').withNbt({Configuration: 5})], [fluid('gtfo_apple_cider') * 1000]).remove()

// Unfired Cup
forming_press.findRecipe(30, [item('minecraft:clay_ball') * 5, metaitem('component.paper_cone')], null).remove()