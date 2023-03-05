

// Массивы
def extractHolder = [
  ore('herbalExtractHolder'),
  ore('livelyExtractHolder'),
  ore('energeticExtractHolder'),
  ore('focusedExtractHolder'),
  ore('earthyExtractHolder'),
  ore('pureExtractHolder'),
  ore('fragrantExtractHolder')
]

def extract = [
  item('tfcmedicinal:extract/herbal'), 
  item('tfcmedicinal:extract/lively'), 
  item('tfcmedicinal:extract/energetic'),
  item('tfcmedicinal:extract/focused'),
  item('tfcmedicinal:extract/earthy'), 
  item('tfcmedicinal:extract/pure'),
  item('tfcmedicinal:extract/fragrant')
]

def medicineVial = [
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "warming_panacea", Amount: 100]]), 
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "health_boost_concoction", Amount: 100]]), 
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "death_sickness_antidote", Amount: 100]]),
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "cooling_panacea", Amount: 100]]),
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "rejuvenating_concoction", Amount: 100]]), 
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "lung_strength_concoction", Amount: 100]]),
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "keen_sight_concoction", Amount: 100]]),
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "stomach_strength_concoction", Amount: 100]]),
  item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "nourishing_concoction", Amount: 100]])
]

def catalyst = [
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "warming_panacea", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "health_boost_concoction", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "death_sickness_antidote", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "cooling_panacea", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "rejuvenating_concoction", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "lung_strength_concoction", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "keen_sight_concoction", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "stomach_strength_concoction", Amount: 100]]),
  item('tfcmedicinal:catalyst').withNbt([Fluid: [FluidName: "nourishing_concoction", Amount: 100]])
]


for (int i = 0; i < extract.size(); i++) {
    crafting.addShapeless(extract[i], [extractHolder[i], item('tfcmedicinal:mpestle').reuse()])
    macerator.recipeBuilder()
      .inputs(extractHolder[i])
      .outputs(extract[i])
      .duration(20).EUt(7).buildAndRegister()
}

// for (int i = 0; i < medicineVial.size(); i++) {
//     chemical_reactor.recipeBuilder()
//       .inputs(catalyst[i])
//       .inputs(item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "base_concoction", Amount: 100]]))
//       .outputs(medicineVial[i])
//       .duration(20).EUt(7).buildAndRegister()
// }

chemical_reactor.recipeBuilder()
  .inputs(item('tfc:plants/turkey_tail'))
  .inputs(item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "salt_water", Amount: 100]]))
  .outputs(item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "base_concoction", Amount: 100]]))
  .duration(100).EUt(30).buildAndRegister()

canner.recipeBuilder()
  .notConsumable(circuit12)
  .inputs(item('tfcmedicinal:medicine_vial'))
  .fluidInputs(fluid('salt_water') * 100)
 	.outputs(item('tfcmedicinal:medicine_vial').withNbt([Fluid: [FluidName: "salt_water", Amount: 100]]) * 1)
  .duration(40).EUt(10).buildAndRegister()