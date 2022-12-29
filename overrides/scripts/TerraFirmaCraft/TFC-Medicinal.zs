import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Массивы
val ExtractHolder as IOreDictEntry[] = [
  <ore:herbalExtractHolder>,
  <ore:livelyExtractHolder>,
  <ore:energeticExtractHolder>,
  <ore:focusedExtractHolder>,
  <ore:earthyExtractHolder>,
  <ore:pureExtractHolder>,
  <ore:fragrantExtractHolder>
];

val Extract as IItemStack[] = [
  <tfcmedicinal:extract/herbal>, 
  <tfcmedicinal:extract/lively>, 
  <tfcmedicinal:extract/energetic>,
  <tfcmedicinal:extract/focused>,
  <tfcmedicinal:extract/earthy>, 
  <tfcmedicinal:extract/pure>,
  <tfcmedicinal:extract/fragrant>
];

val MedicineVial as IItemStack[] = [
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "warming_panacea", Amount: 100}}), 
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "health_boost_concoction", Amount: 100}}), 
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "death_sickness_antidote", Amount: 100}}),
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "cooling_panacea", Amount: 100}}),
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "rejuvenating_concoction", Amount: 100}}), 
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "lung_strength_concoction", Amount: 100}}),
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "keen_sight_concoction", Amount: 100}}),
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "stomach_strength_concoction", Amount: 100}}),
  <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "nourishing_concoction", Amount: 100}})
];

val Catalyst as IItemStack[] = [
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "warming_panacea", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "health_boost_concoction", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "death_sickness_antidote", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "cooling_panacea", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "rejuvenating_concoction", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "lung_strength_concoction", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "keen_sight_concoction", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "stomach_strength_concoction", Amount: 100}}),
  <tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "nourishing_concoction", Amount: 100}})
];

for i, Extract in Extract {
    recipes.addShapeless(Extract, [ExtractHolder[i], <tfcmedicinal:mpestle>.reuse()]);
    macerator.recipeBuilder()
      .inputs(ExtractHolder[i])
      .outputs(Extract)
      .duration(20).EUt(7).buildAndRegister();
}

for i, MedicineVial in MedicineVial {
    chemical_reactor.recipeBuilder()
      .inputs(Catalyst[i])
      .inputs(<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "base_concoction", Amount: 100}}))
      .outputs(MedicineVial)
      .duration(20).EUt(7).buildAndRegister();
}

chemical_reactor.recipeBuilder()
  .inputs(<tfc:plants/turkey_tail>)
  .inputs(<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "salt_water", Amount: 100}}))
  .outputs(<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "base_concoction", Amount: 100}}))
  .duration(100).EUt(30).buildAndRegister();

canner.recipeBuilder()
  .circuit(12)
  .inputs(<tfcmedicinal:medicine_vial>)
  .fluidInputs(<liquid:salt_water> * 100)
 	.outputs(<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "salt_water", Amount: 100}}) * 1)
  .duration(40).EUt(10).buildAndRegister();