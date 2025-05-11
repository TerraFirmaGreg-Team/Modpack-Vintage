// MODS_LOADED: tfcflorae
// --- Добавление рецептов


import classes.array.GregTech
import classes.array.TerraFirmaCraft
import classes.array.TerraFirmaCraftF

// Сок из ...
for (int i = 0; i < TerraFirmaCraftF.tfcfFluidsForJuices.size(); i++) {
  // Центрифуга
  mods.gregtech.centrifuge.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfItemsForJuices[i])
    .circuitMeta(30)
    .fluidOutputs(TerraFirmaCraftF.tfcfFluidsForJuices[i] * 25)
    .duration(300).EUt(2).buildAndRegister()
}

// Сок из яблок

// Центрифуга
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(ore('apple'))
  .circuitMeta(30)
  .fluidOutputs(fluid('juice_apple') * 25)
  .duration(300).EUt(2).buildAndRegister()

// Dirty Net -> Net
for (int i = 0; i < TerraFirmaCraftF.tfcfDirtyNets.size(); i++) {
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .fluidInputs(fluid('fresh_water') * 50)
    .circuitMeta(17)
    .outputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .duration(150).EUt(2).buildAndRegister()
}

// Net -> Dirty Net
for (int i = 0; i < TerraFirmaCraftF.tfcfDirtyNets.size(); i++) {

  // Olive Oil Water -> Olive Oil
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('olive_oil_water') * 250)
    .circuitMeta(18)
    .fluidOutputs(fluid('olive_oil') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Soybean Water -> Soy Milk
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('soybean_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('soy_milk') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Linseed Water -> Linseed Oil
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('linseed_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('linseed_oil') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Rape Seed Water -> Rape Seed Oil
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('rape_seed_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('rape_seed_oil') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Sunflower Seed Water -> Sunflower Seed Oil
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('sunflower_seed_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('sunflower_seed_oil') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Opium Poppy Seed Water -> Opium Poppy Seed Oil
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('opium_poppy_seed_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('opium_poppy_seed_oil') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()

  // Sugar Beet Water -> Sugar Water
  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraftF.tfcfCleanNets[i])
    .fluidInputs(fluid('sugar_beet_water') * 125)
    .circuitMeta(18)
    .fluidOutputs(fluid('sugar_water') * 125)
    .outputs(TerraFirmaCraftF.tfcfDirtyNets[i])
    .duration(150).EUt(2).buildAndRegister()
}

// Raw -> Mossy Raw
for (int i = 0; i < TerraFirmaCraftF.rawMossy.size(); i++) {

  mods.gregtech.mixer.recipeBuilder()
    .inputs(TerraFirmaCraft.tfcRaws[i])
    .fluidInputs(fluid('hot_water') * 200)
    .circuitMeta(18)
    .outputs(TerraFirmaCraftF.rawMossy[i])
    .fluidOutputs(fluid('fresh_water') * 50)
    .duration(150).EUt(2).buildAndRegister()
}


for (int i = 0; i < TerraFirmaCraft.tfcRaws.size(); i++) {

  // Сырой блок -> Полублок
  mods.gregtech.cutter.recipeBuilder()
    .inputs(TerraFirmaCraft.tfcRaws[i])
    .outputs(TerraFirmaCraftF.rawSlabs[i] * 2)
    .duration(200).EUt(7).buildAndRegister()

  // Сырой блок -> Ступенька
  mods.gregtech.assembler.recipeBuilder()
    .inputs(TerraFirmaCraft.tfcRaws[i] * 6)
    .circuitMeta(7)
    .outputs(TerraFirmaCraftF.rawStairs[i] * 16)
    .duration(200).EUt(7).buildAndRegister()
}

for (int i = 0; i < TerraFirmaCraftF.mudBricksBlock.size(); i++) {

  // Кирпичи из грязи -> Полублок
  mods.gregtech.cutter.recipeBuilder()
    .inputs(TerraFirmaCraftF.mudBricksBlock[i])
    .outputs(TerraFirmaCraftF.mudBricksSlabs[i] * 2)
    .duration(200).EUt(7).buildAndRegister()

  // Кирпичи из грязи -> Ступенька
  mods.gregtech.assembler.recipeBuilder()
    .inputs(TerraFirmaCraftF.mudBricksBlock[i] * 6)
    .circuitMeta(7)
    .outputs(TerraFirmaCraftF.mudBricksStairs[i])
    .duration(200).EUt(7).buildAndRegister()
}


for (int i = 0; i < GregTech.gtDustsForRawStones.size(); i++) {
  // Raw Slab
  mods.gregtech.macerator.recipeBuilder()
    .inputs(TerraFirmaCraftF.rawSlabs[i])
    .outputs(GregTech.gtDustsForRawStones[i] * 1)
    .duration(100).EUt(4).buildAndRegister()

  // Raw Stairs
  mods.gregtech.macerator.recipeBuilder()
    .inputs(TerraFirmaCraftF.rawStairs[i])
    .outputs(GregTech.gtDustsForRawStones[i] * 2)
    .duration(100).EUt(4).buildAndRegister()
}

// Potash - ') Base Potash Liquor
mods.gregtech.mixer.recipeBuilder()
  .inputs(metaitem('dustPotash'))
  .fluidInputs(fluid('fresh_water') * 500)
  .circuitMeta(16)
  .fluidOutputs(fluid('base_potash_liquor') * 500)
  .duration(150).EUt(2).buildAndRegister()

// WoodPulp - ') Base Potash Liquor
mods.gregtech.mixer.recipeBuilder()
  .inputs(ore('dustAsh'))
  .fluidInputs(fluid('fresh_water') * 500)
  .circuitMeta(16)
  .fluidOutputs(fluid('base_potash_liquor') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Ash - ') Base Potash Liquor
mods.gregtech.mixer.recipeBuilder()
  .inputs(metaitem('dustAsh'))
  .fluidInputs(fluid('fresh_water') * 500)
  .circuitMeta(16)
  .fluidOutputs(fluid('base_potash_liquor') * 500)
  .duration(150).EUt(2).buildAndRegister()


// Wild Sugar Cane -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:plants/sugar_cane'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(20)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Papyrus Pulp -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/papyrus_pulp'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(19)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Papyrus Pulp -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/papyrus_pulp') * 3)
  .fluidInputs(fluid('fresh_water') * 600)
  .circuitMeta(19)
  .outputs(item('tfcflorae:crop/product/papyrus_fiber'))
  .duration(150).EUt(2).buildAndRegister()

// Agave -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/agave'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(19)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Agave -> Sisal Fiber
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/agave'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(19)
  .outputs(item('tfcflorae:crop/product/sisal_fiber'))
  .duration(150).EUt(2).buildAndRegister()

// Flax -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/flax'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(19)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Flax -> Sisal Fiber
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/flax'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(19)
  .outputs(item('tfcflorae:crop/product/flax_fiber'))
  .duration(150).EUt(2).buildAndRegister()

// Hemp -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/hemp'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(19)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Hemp -> Sisal Fiber
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/hemp'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(19)
  .outputs(item('tfcflorae:crop/product/hemp_fiber'))
  .duration(150).EUt(2).buildAndRegister()

// Yucca -> Cellulose Fibers
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:plants/yucca'))
  .fluidInputs(fluid('base_potash_liquor') * 150)
  .circuitMeta(19)
  .outputs(item('tfcflorae:cellulose_fibers'))
  .fluidOutputs(fluid('waste') * 150)
  .duration(150).EUt(2).buildAndRegister()

// Yucca -> Sisal Fiber
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:plants/yucca'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(19)
  .outputs(item('tfcflorae:crop/product/yucca_fiber'))
  .duration(150).EUt(2).buildAndRegister()

// Soybean Paste -> Soybean water
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/soybean_paste'))
  .fluidInputs(fluid('hot_water') * 125)
  .circuitMeta(19)
  .fluidOutputs(fluid('soybean_water') * 125)
  .duration(150).EUt(2).buildAndRegister()

// Beet -> Sugar
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/beet') * 8)
  .fluidInputs(fluid('hot_water') * 250)
  .circuitMeta(19)
  .outputs(item('minecraft:sugar'))
  .duration(150).EUt(2).buildAndRegister()

// Sugarcane -> Sugar
mods.gregtech.mixer.recipeBuilder()
  .inputs(ore('sugarcane') * 5)
  .fluidInputs(fluid('fresh_water') * 600)
  .circuitMeta(19)
  .outputs(item('minecraft:sugar'))
  .duration(150).EUt(2).buildAndRegister()

// Sugar -> Sugar Water
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('fresh_water') * 125)
  .circuitMeta(19)
  .fluidOutputs(fluid('sugar_water') * 125)
  .duration(150).EUt(2).buildAndRegister()

// Agave Wine -> Tequila
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('agave_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('tequila') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Banana Wine -> Banana Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('banana_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('banana_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Berry Wine -> Berry Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('berry_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('berry_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Cider -> Calvados
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('cider') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('calvados') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Cherry Wine -> Cherry Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('cherry_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('cherry_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Juniper Wine -> Gin
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('juniper_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('gin') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Lemon Wine -> Lemon Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('lemon_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('lemon_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Orange Wine -> Orange Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('orange_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('orange_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Papaya Wine -> Papaya Brandy
/*
mods.gregtech.mixer.recipeBuilder()
    .inputs(item('minecraft:sugar'))
    .fluidInputs(fluid('papaya_wine') * 500)
    .circuitMeta(19)
    .fluidOutputs(fluid('papaya_brandy') * 500)
    .duration(150).EUt(2).buildAndRegister()
*/

// Peach Wine -> Peach Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('peach_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('peach_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Pear Wine -> Pear Brandy
/*
mods.gregtech.mixer.recipeBuilder()
    .inputs(item('minecraft:sugar'))
    .fluidInputs(fluid('pear_wine') * 500)
    .circuitMeta(19)
    .fluidOutputs(fluid('pear_brandy') * 500)
    .duration(150).EUt(2).buildAndRegister()
*/

// Plum Wine -> Plum Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('plum_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('plum_brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Red Wine -> Brandy
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('red_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('brandy') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Sake -> Shochu
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('sake') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('shochu') * 500)
  .duration(150).EUt(2).buildAndRegister()

// White Wine -> Cognac
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('white_wine') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('cognac') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Rum
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('minecraft:sugar'))
  .fluidInputs(fluid('hot_water') * 500)
  .circuitMeta(19)
  .fluidOutputs(fluid('rum') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Fresh Water (Raw Honey) -> Honey Water
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('firmalife:raw_honey'))
  .fluidInputs(fluid('fresh_water') * 125)
  .circuitMeta(19)
  .fluidOutputs(fluid('honey_water') * 125)
  .duration(150).EUt(2).buildAndRegister()

// Fresh Water (Honeycomb) -> Honey Water
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('firmalife:honeycomb'))
  .fluidInputs(fluid('fresh_water') * 125)
  .circuitMeta(19)
  .fluidOutputs(fluid('honey_water') * 125)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> White Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/dried/white_tea') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('white_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Green Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/dried/green_tea') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('green_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Black Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/dried/black_tea') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('black_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Chamomile Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/dried/chamomile_head') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('chamomile_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Dandelion Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/dried/dandelion_head') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('dandelion_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Labrador Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/dried/labrador_tea_head') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('labrador_tea') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Coffe Tea
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/roasted/coffee_beans') * 2)
  .fluidInputs(fluid('hot_water') * 200)
  .circuitMeta(20)
  .fluidOutputs(fluid('coffee') * 200)
  .duration(150).EUt(2).buildAndRegister()

// Fresh Water -> Rice Water
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/rice'))
  .fluidInputs(fluid('fresh_water') * 500)
  .circuitMeta(20)
  .fluidOutputs(fluid('rice_water') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Sugar Water -> Firma Cola
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:firma_cola_blend'))
  .fluidInputs(fluid('sugar_water') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('firma_cola') * 1000)
  .duration(150).EUt(2).buildAndRegister()

// Hot Water -> Wort
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/hops'))
  .fluidInputs(fluid('hot_water') * 500)
  .circuitMeta(20)
  .fluidOutputs(fluid('wort') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Beer, Cider, Rum, Sake, Vodka, Whiskey, Corn Whiskey, Rye Whiskey -> Vinegar
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('beer') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('cider') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('sake') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('vodka') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('whiskey') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('corn_whiskey') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('rye_whiskey') * 250)
  .circuitMeta(20)
  .fluidOutputs(fluid('vinegar') * 250)
  .duration(150).EUt(2).buildAndRegister()

// Vodka -> Grappa
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:pomace'))
  .fluidInputs(fluid('vodka') * 500)
  .circuitMeta(21)
  .fluidOutputs(fluid('grappa') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Barley Grain -> Barley Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/barley_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_barley'))
  .duration(150).EUt(2).buildAndRegister()

// Maize Grain -> Maize Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/maize_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_corn'))
  .duration(150).EUt(2).buildAndRegister()

// Rye Grain -> Rye Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/rye_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_rye'))
  .duration(150).EUt(2).buildAndRegister()

// Rice Grain -> Rice Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/rice_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_rice'))
  .duration(150).EUt(2).buildAndRegister()

// Wheat Grain -> Wheat Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfc:food/wheat_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_wheat'))
  .duration(150).EUt(2).buildAndRegister()

// Amaranth Grain -> Amaranth Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/amaranth_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_amaranth'))
  .duration(150).EUt(2).buildAndRegister()

// BuckWheat Grain -> BuckWheat Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/buckwheat_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_buckwheat'))
  .duration(150).EUt(2).buildAndRegister()

// Fonio Grain -> Fonio Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/fonio_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_fonio'))
  .duration(150).EUt(2).buildAndRegister()

// Millet Grain -> Millet Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/millet_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_millet'))
  .duration(150).EUt(2).buildAndRegister()

// Quinoa Grain -> Quinoa Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/quinoa_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_quinoa'))
  .duration(150).EUt(2).buildAndRegister()

// Spelt Grain -> Spelt Malt
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:food/spelt_grain'))
  .fluidInputs(fluid('fresh_water') * 200)
  .circuitMeta(22)
  .outputs(item('tfcflorae:crop/product/malt_spelt'))
  .duration(150).EUt(2).buildAndRegister()

// Malt Barley -> Barley Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_barley'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_barley') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Malt Corn -> Corn Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_corn'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_corn') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Rye Corn -> Rye Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_rye'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_rye') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Wheat Corn -> Wheat Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_wheat'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_wheat') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Amaranth Corn -> Amaranth Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_amaranth'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_amaranth') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Buckwheat Corn -> Buckwheat Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_buckwheat'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_buckwheat') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Fonio Corn -> Fonio Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_fonio'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_fonio') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Millet Corn -> Millet Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_millet'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_millet') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Quinoa Corn -> Quinoa Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_quinoa'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_quinoa') * 500)
  .duration(150).EUt(2).buildAndRegister()

// Spelt Corn -> Spelt Beer
mods.gregtech.mixer.recipeBuilder()
  .inputs(item('tfcflorae:crop/product/malt_spelt'))
  .fluidInputs(fluid('wort') * 500)
  .circuitMeta(23)
  .fluidOutputs(fluid('beer_spelt') * 500)
  .duration(150).EUt(2).buildAndRegister()


// Ящик
crafting.addShapeless("tfcflorae/orange_juice_to_orange_vine", item('tfcflorae:storage/crate'), [item('tfc:stick_bundle'), ore('clay'), ore('clay'), item('tfc:stick_bundle')])

// Yeast
crafting.addShapeless("tfcflorae/yeast", item('tfcflorae:yeast') * 3, [item('tfc:wooden_bucket', 0).withNbtExact(["Fluid": ["FluidName": "yeast_starter", "Amount": 1000]]).transform({ item('tfc:wooden_bucket', 0) })])

// Mud Bricks
for (int i = 0; i < TerraFirmaCraftF.mudBalls.size(); i++) {
  mods.gregtech.assembler.recipeBuilder()
    .inputs(TerraFirmaCraftF.mudBalls[i] * 3)
    .circuitMeta(0)
    .outputs(TerraFirmaCraftF.mudBricksUnfired[i])
    .duration(200).EUt(3).buildAndRegister()

  mods.gregtech.electric_furnace.recipeBuilder()
    .inputs(TerraFirmaCraftF.mudBricksUnfired[i])
    .outputs(TerraFirmaCraftF.mudBricksFired[i])
    .duration(100).EUt(3).buildAndRegister()
}
