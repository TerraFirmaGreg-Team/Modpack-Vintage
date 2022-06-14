import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
    <metaitem:component.apple_slice>,
    <metaitem:brick.adobe_fired>,
    <metaitem:component.mushroom_slice>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Поименное удаление рецептов
val RemoveItemRecipesByName = [
    "gregtechfoodoption:casing_adobe_bricks",
    "gregtechfoodoption:baking_oven"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Удаление рецептов печи
furnace.remove(<metaitem:brick.adobe_fired>);

// Удаление рецептов метана
centrifuge.findRecipe(5, [<galacticraftcore:food:6>], null).remove();
centrifuge.findRecipe(5, [<galacticraftcore:food:7>], null).remove();
centrifuge.findRecipe(5, [<extraplanets:chocolate_bar:0>], null).remove();
centrifuge.findRecipe(5, [<extraplanets:caramel_bar:0>], null).remove();
centrifuge.findRecipe(5, [<tombstone:lollipop:0>], null).remove();
centrifuge.findRecipe(5, [<tombstone:lollipop:1>], null).remove();
centrifuge.findRecipe(5, [<tombstone:lollipop:2>], null).remove();
centrifuge.findRecipe(5, [<tombstone:lollipop:3>], null).remove();
centrifuge.findRecipe(5, [<tombstone:lollipop:4>], null).remove();
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


// Remove GT Mud Bricks
forming_press.findRecipe(30, [<tfc:sand/diorite:0> * 3, <tfc:gravel/phyllite:0> * 2, <metaitem:dustBentonite>, <metaitem:dustTalc>, <minecraft:wheat:0>, <metaitem:wooden_form.brick>], null).remove();

// --- Adding Recipes

// Register Food Stats for TFC
// ItemRegistry.registerFood(IIngredient input, int hunger, float water, float saturation, float decay, float grain, float veg, float fruit, float meat, float dairy);

ItemRegistry.registerFood(<metaitem:food.sandwich.bacon>, 5, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0);

// Adobe Bricks
recipes.addShaped("tfg/gtfo/adobe_bricks", <gregtechfoodoption:gtfo_casing>,
    [[<ore:mudBrick>, <ore:mudBrick>, null],
    [<ore:mudBrick>, <ore:mudBrick>, null],
    [null, null, null]]);

// Baking Oven
recipes.addShaped("tfg/gtfo/baking_oven", <metaitem:gregtechfoodoption:baking_oven>,
    [[<ore:gtce.tool.screwdrivers>, <ore:screwIronAny>, <ore:screwIronAny>],
    [<ore:sticktIronAny>, <ore:sticktIronAny>, <gregtechfoodoption:gtfo_casing>],
    [<ore:gtce.tool.files>, <ore:screwIronAny>, <ore:screwIronAny>]]);

// --- Apple Slice

recipes.addShapeless(<metaitem:component.apple_slice>, [<ore:gtce.tool.knife>, <ore:apple>]);

slicer.findRecipe(18, [<minecraft:apple:0>, <metaitem:config.slicer_blade.octagonal>], null).remove();
slicer.recipeBuilder()
    .inputs(<ore:apple>)
    .notConsumable(<metaitem:config.slicer_blade.octagonal>)
    .outputs(<metaitem:component.apple_slice> * 8)
    .duration(30)
    .EUt(18)
    .buildAndRegister();

// --- Apple Structural Mesh

extractor.findRecipe(1920, [<minecraft:apple:0>], null).remove();
extractor.recipeBuilder()
    .inputs(<ore:apple>)
    .outputs(<metaitem:component.structural_mesh.apple>)
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

// --- Mushroom Slice

recipes.addShapeless(<metaitem:component.mushroom_slice>, [<ore:gtce.tool.knife>, <tfc:plants/porcini>]);

slicer.findRecipe(18, [<minecraft:brown_mushroom:0>, <metaitem:config.slicer_blade.flat>], null).remove();
slicer.recipeBuilder()
    .inputs(<tfc:plants/porcini>)
    .notConsumable(<metaitem:config.slicer_blade.octagonal>)
    .outputs(<metaitem:component.mushroom_slice> * 8)
    .duration(30)
    .EUt(18)
    .buildAndRegister();




