import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Barrel;

// --- Массивы

val CleanNets as IItemStack[] = [
	<tfc:crop/product/jute_net>,
    <tfcflorae:crop/product/sisal_net>,
    <tfcflorae:crop/product/silk_net>,
    <tfcflorae:crop/product/cotton_net>,
    <tfcflorae:crop/product/linen_net>,
    <tfcflorae:crop/product/hemp_net>
];

val DirtyNets as IItemStack[] = [
	<tfc:crop/product/dirty_jute_net>,
    <tfcflorae:crop/product/dirty_sisal_net>,
    <tfcflorae:crop/product/dirty_silk_net>,
    <tfcflorae:crop/product/dirty_cotton_net>,
    <tfcflorae:crop/product/dirty_linen_net>,
    <tfcflorae:crop/product/dirty_hemp_net>
];

val RemoveItemRecipesByName = [
  	"tfcflorae:wood/joshua_tree2/joshua_tree_log",
    "tfcflorae:wood/joshua_tree/joshua_tree_log_reverse",
    "tfcflorae:wood/fruit_tree/firmalife/fence/cassia_cinnamon",
    "tfcflorae:wood/fruit_tree/firmalife/fence/ceylon_cinnamon",
    "tfcflorae:wood/fruit_tree/firmalife/fence_gate/cassia_cinnamon",
    "tfcflorae:wood/fruit_tree/firmalife/fence_gate/ceylon_cinnamon",
    "tfcflorae:yeast"
] as string[];

// --- Удаление рецептов

// Поименное удаление рецептов
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

Barrel.removeRecipe(<minecraft:clay_ball>);

Barrel.removeRecipe(<tfc:crop/product/dirty_jute_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_sisal_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_silk_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_cotton_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_linen_net>, <liquid:olive_oil> * 50);
Barrel.removeRecipe(<tfcflorae:crop/product/dirty_hemp_net>, <liquid:olive_oil> * 50);

// --- Добавление рецептов

// Емкость под жидкость
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/stoneware/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/kaolinite/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/earthenware/fired/pot>]);

// Yeast
recipes.addShapeless(<tfcflorae:yeast> * 3, [<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "yeast_starter", Amount: 1000}})]);

// Dirty Net -> Net
for i, CleanNets in CleanNets {
    
    mixer.recipeBuilder()
        .inputs(DirtyNets[i])
        .fluidInputs(<liquid:fresh_water> * 50)
        .circuit(17)
        .outputs(CleanNets)
        .duration(150).EUt(2).buildAndRegister();
}

// Net -> Dirty Net
for i, DirtyNets in DirtyNets {
    
    Barrel.addRecipe("tfg/tfcflorae/olive_oil_water_to_olive_oil_" + i, CleanNets[i], <liquid:olive_oil_water> * 250, DirtyNets, <liquid:gtfo_olive_oil> * 50, 0);

    // Olive Oil Water -> Olive Oil
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:olive_oil_water> * 250)
        .circuit(18)
        .fluidOutputs(<liquid:gtfo_olive_oil> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Soybean Water -> Soy Milk
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:soybean_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:soy_milk> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Linseed Water -> Linseed Oil
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:linseed_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:linseed_oil> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Rape Seed Water -> Rape Seed Oil
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:rape_seed_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:rape_seed_oil> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Sunflower Seed Water -> Sunflower Seed Oil
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:sunflower_seed_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:sunflower_seed_oil> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Opium Poppy Seed Water -> Opium Poppy Seed Oil
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:opium_poppy_seed_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:opium_poppy_seed_oil> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();

    // Sugar Beet Water -> Sugar Water
    mixer.recipeBuilder()
        .inputs(CleanNets[i])
        .fluidInputs(<liquid:sugar_beet_water> * 125)
        .circuit(18)
        .fluidOutputs(<liquid:sugar_water> * 125)
        .outputs(DirtyNets)
        .duration(150).EUt(2).buildAndRegister();
}

// Raw -> Mossy Raw
for i, TFC_Raw_Mossy in TFC_Raw_Mossy {
    
    mixer.recipeBuilder()
        .inputs(TFC_Raws[i])
        .fluidInputs(<liquid:hot_water> * 200)
        .circuit(18)
        .outputs(TFC_Raw_Mossy)
        .fluidOutputs(<liquid:fresh_water> * 50)
        .duration(150).EUt(2).buildAndRegister();
}

// Potash - > Base Potash Liquor
mixer.recipeBuilder()
	.inputs(<metaitem:dustPotash>)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(16)
	.fluidOutputs(<liquid:base_potash_liquor> * 500)
	.duration(150).EUt(2).buildAndRegister();

// WoodPulp - > Base Potash Liquor
mixer.recipeBuilder()
	.inputs(<ore:dustAsh>)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(16)
	.fluidOutputs(<liquid:base_potash_liquor> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Ash - > Base Potash Liquor
mixer.recipeBuilder()
	.inputs(<metaitem:dustAsh>)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(16)
	.fluidOutputs(<liquid:base_potash_liquor> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Wild Sugar Cane -> Sugar
mixer.recipeBuilder()
	.inputs(<tfc:plants/sugar_cane> * 5)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(19)
	.outputs(<minecraft:sugar>)
	.duration(150).EUt(2).buildAndRegister();

// Wild Sugar Cane -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfc:plants/sugar_cane>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Papyrus Pulp -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/papyrus_pulp>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Papyrus Pulp -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/papyrus_pulp> * 3)
	.fluidInputs(<liquid:fresh_water> * 600)
	.circuit(19)
	.outputs(<tfcflorae:crop/product/papyrus_fiber>)
	.duration(150).EUt(2).buildAndRegister();

// Agave -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/agave>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Agave -> Sisal Fiber
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/agave>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(19)
	.outputs(<tfcflorae:crop/product/sisal_fiber>)
	.duration(150).EUt(2).buildAndRegister();

// Flax -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/flax>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Flax -> Sisal Fiber
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/flax>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(19)
	.outputs(<tfcflorae:crop/product/flax_fiber>)
	.duration(150).EUt(2).buildAndRegister();

// Hemp -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/hemp>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Hemp -> Sisal Fiber
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/hemp>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(19)
	.outputs(<tfcflorae:crop/product/hemp_fiber>)
	.duration(150).EUt(2).buildAndRegister();

// Yucca -> Cellulose Fibers
mixer.recipeBuilder()
	.inputs(<tfc:plants/yucca>)
	.fluidInputs(<liquid:base_potash_liquor> * 150)
	.circuit(19)
	.outputs(<tfcflorae:cellulose_fibers>)
    .fluidOutputs(<liquid:waste> * 150)
	.duration(150).EUt(2).buildAndRegister();

// Yucca -> Sisal Fiber
mixer.recipeBuilder()
	.inputs(<tfc:plants/yucca>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(19)
	.outputs(<tfcflorae:crop/product/yucca_fiber>)
	.duration(150).EUt(2).buildAndRegister();

// Soybean Paste -> Soybean water
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/soybean_paste>)
	.fluidInputs(<liquid:hot_water> * 125)
	.circuit(19)
	.fluidOutputs(<liquid:soybean_water> * 125)
	.duration(150).EUt(2).buildAndRegister();

// Beet -> Sugar
mixer.recipeBuilder()
	.inputs(<tfc:food/beet> * 8)
	.fluidInputs(<liquid:hot_water> * 250)
	.circuit(19)
	.outputs(<minecraft:sugar>)
	.duration(150).EUt(2).buildAndRegister();

// Sugarcane -> Sugar
mixer.recipeBuilder()
	.inputs(<ore:sugarcane> * 5)
	.fluidInputs(<liquid:fresh_water> * 600)
	.circuit(19)
	.outputs(<minecraft:sugar>)
	.duration(150).EUt(2).buildAndRegister();

// Sugar -> Sugar Water
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:fresh_water> * 125)
	.circuit(19)
	.fluidOutputs(<liquid:sugar_water> * 125)
	.duration(150).EUt(2).buildAndRegister();

// Agave Wine -> Tequila
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:agave_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:tequila> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Banana Wine -> Banana Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:banana_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:banana_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Berry Wine -> Berry Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:berry_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:berry_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Cider -> Calvados
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:cider> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:calvados> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Cherry Wine -> Cherry Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:cherry_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:cherry_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Juniper Wine -> Gin
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:juniper_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:gin> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Lemon Wine -> Lemon Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:lemon_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:lemon_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Orange Wine -> Orange Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:orange_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:orange_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Papaya Wine -> Papaya Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:papaya_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:papaya_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Peach Wine -> Peach Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:peach_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:peach_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Pear Wine -> Pear Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:pear_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:pear_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Plum Wine -> Plum Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:plum_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:plum_brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Red Wine -> Brandy
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:red_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:brandy> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Sake -> Shochu
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:sake> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:shochu> * 500)
	.duration(150).EUt(2).buildAndRegister();

// White Wine -> Cognac
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:white_wine> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:cognac> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Rum
mixer.recipeBuilder()
	.inputs(<minecraft:sugar>)
	.fluidInputs(<liquid:hot_water> * 500)
	.circuit(19)
	.fluidOutputs(<liquid:rum> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Fresh Water (Raw Honey) -> Honey Water
mixer.recipeBuilder()
	.inputs(<firmalife:raw_honey>)
	.fluidInputs(<liquid:fresh_water> * 125)
	.circuit(19)
	.fluidOutputs(<liquid:honey_water> * 125)
	.duration(150).EUt(2).buildAndRegister();

// Fresh Water (Honeycomb) -> Honey Water
mixer.recipeBuilder()
	.inputs(<firmalife:honeycomb>)
	.fluidInputs(<liquid:fresh_water> * 125)
	.circuit(19)
	.fluidOutputs(<liquid:honey_water> * 125)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> White Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/dried/white_tea> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:white_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Green Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/dried/green_tea> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:green_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Black Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/dried/black_tea> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:black_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Chamomile Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/dried/chamomile_head> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:chamomile_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Dandelion Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/dried/dandelion_head> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:dandelion_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Labrador Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/dried/labrador_tea_head> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:labrador_tea> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Coffe Tea
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/roasted/coffee_beans> * 2)
	.fluidInputs(<liquid:hot_water> * 200)
	.circuit(20)
	.fluidOutputs(<liquid:coffee> * 200)
	.duration(150).EUt(2).buildAndRegister();

// Fresh Water -> Rice Water
mixer.recipeBuilder()
	.inputs(<tfc:food/rice>)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(20)
	.fluidOutputs(<liquid:rice_water> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Sugar Water -> Firma Cola
mixer.recipeBuilder()
	.inputs(<tfcflorae:firma_cola_blend>)
	.fluidInputs(<liquid:sugar_water> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:firma_cola> * 1000)
	.duration(150).EUt(2).buildAndRegister();

// Hot Water -> Wort
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/hops>)
	.fluidInputs(<liquid:hot_water> * 500)
	.circuit(20)
	.fluidOutputs(<liquid:wort> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Beer, Cider, Rum, Sake, Vodka, Whiskey, Corn Whiskey, Rye Whiskey -> Vinegar
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:beer> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:cider> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:sake> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:vodka> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:whiskey> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:corn_whiskey> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:rye_whiskey> * 250)
	.circuit(20)
	.fluidOutputs(<liquid:vinegar> * 250)
	.duration(150).EUt(2).buildAndRegister();

// Vodka -> Grappa
mixer.recipeBuilder()
	.inputs(<tfcflorae:pomace>)
	.fluidInputs(<liquid:vodka> * 500)
	.circuit(21)
	.fluidOutputs(<liquid:grappa> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Barley Grain -> Barley Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/barley_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_barley>)
	.duration(150).EUt(2).buildAndRegister();

// Maize Grain -> Maize Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/maize_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_corn>)
	.duration(150).EUt(2).buildAndRegister();

// Rye Grain -> Rye Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/rye_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_rye>)
	.duration(150).EUt(2).buildAndRegister();

// Rice Grain -> Rice Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/rice_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_rice>)
	.duration(150).EUt(2).buildAndRegister();

// Wheat Grain -> Wheat Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/wheat_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_wheat>)
	.duration(150).EUt(2).buildAndRegister();

// Amaranth Grain -> Amaranth Malt
mixer.recipeBuilder()
	.inputs(<tfc:food/wheat_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_wheat>)
	.duration(150).EUt(2).buildAndRegister();

// BuckWheat Grain -> BuckWheat Malt
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/buckwheat_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_buckwheat>)
	.duration(150).EUt(2).buildAndRegister();

// Fonio Grain -> Fonio Malt
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/fonio_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_fonio>)
	.duration(150).EUt(2).buildAndRegister();

// Millet Grain -> Millet Malt
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/millet_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_millet>)
	.duration(150).EUt(2).buildAndRegister();

// Quinoa Grain -> Quinoa Malt
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/quinoa_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_quinoa>)
	.duration(150).EUt(2).buildAndRegister();

// Spelt Grain -> Spelt Malt
mixer.recipeBuilder()
	.inputs(<tfcflorae:food/spelt_grain>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(22)
	.outputs(<tfcflorae:crop/product/malt_spelt>)
	.duration(150).EUt(2).buildAndRegister();

// Malt Barley -> Barley Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_barley>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_barley> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Malt Corn -> Corn Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_corn>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_corn> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Malt Corn -> Corn Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_corn>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_corn> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Rye Corn -> Rye Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_rye>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_rye> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Wheat Corn -> Wheat Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_wheat>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_wheat> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Amaranth Corn -> Amaranth Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_amaranth>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:amaranth_beer> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Buckwheat Corn -> Buckwheat Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_buckwheat>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_buckwheat> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Fonio Corn -> Fonio Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_fonio>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_fonio> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Millet Corn -> Millet Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_millet>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_millet> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Quinoa Corn -> Quinoa Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_millet>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_quinoa> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Spelt Corn -> Spelt Beer
mixer.recipeBuilder()
	.inputs(<tfcflorae:crop/product/malt_millet>)
	.fluidInputs(<liquid:wort> * 500)
	.circuit(23)
	.fluidOutputs(<liquid:beer_spelt> * 500)
	.duration(150).EUt(2).buildAndRegister();