import postInit.Utility.Array.arrayTFCM



for (int i = 0; i < arrayTFCM.extract.size(); i++) {
    crafting.addShapeless(arrayTFCM.extract[i], [arrayTFCM.extractHolder[i], item('tfcmedicinal:mpestle').reuse()])
    macerator.recipeBuilder()
      .inputs(arrayTFCM.extractHolder[i])
      .outputs(arrayTFCM.extract[i])
      .duration(20).EUt(7).buildAndRegister()
}

for (int i = 0; i < arrayTFCM.medicineVial.size(); i++) {
    chemical_reactor.recipeBuilder()
      .inputs(arrayTFCM.catalyst[i])
      .inputs(item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "base_concoction", "Amount": 100]]))
      .outputs(arrayTFCM.medicineVial[i])
      .duration(20).EUt(7).buildAndRegister()
}

chemical_reactor.recipeBuilder()
  .inputs(item('tfc:plants/turkey_tail'))
  .inputs(item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "salt_water", "Amount": 100]]))
  .outputs(item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "base_concoction", "Amount": 100]]))
  .duration(100).EUt(30).buildAndRegister()

canner.recipeBuilder()
  .notConsumable(circuit12)
  .inputs(item('tfcmedicinal:medicine_vial'))
  .fluidInputs(fluid('salt_water') * 100)
 	.outputs(item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "salt_water", "Amount": 100]]) * 1)
  .duration(40).EUt(10).buildAndRegister()