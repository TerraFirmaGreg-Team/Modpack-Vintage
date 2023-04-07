

if (isLoaded("extraplanets")) {

   // Гибридная солнечная панель
   crafting.addShaped("tfg/ep/machine/solar_panel/hybrid", item('extraplanets:solar'), [
      [metaitem('cover.solar.panel.luv'), metaitem('cover.solar.panel.luv'), metaitem('cover.solar.panel.luv')],
      [metaitem('gearSmallRhodiumPlatedPalladium'), metaitem('stickRhodiumPlatedPalladium'), metaitem('gearSmallRhodiumPlatedPalladium')],
      [metaitem('electric.piston.luv'), item('galacticraftcore:solar:4'), metaitem('cableGtQuadrupleNaquadah')]])

   // Ultimate солнечная панель
   crafting.addShaped("tfg/ep/machine/solar_panel/ultimate", item('extraplanets:solar:4'), [
      [metaitem('cover.solar.panel.uv'), metaitem('cover.solar.panel.uv'), metaitem('cover.solar.panel.uv')],
      [metaitem('gearSmallDarmstadtium'), metaitem('stickDarmstadtium'), metaitem('gearSmallDarmstadtium')],
      [metaitem('electric.piston.uv'), item('extraplanets:solar'), metaitem('cableGtOctalEuropium')]])

   // Улучшенный загручкик топлива
   crafting.addShaped("tfg/ep/machine/fuel_loader/advanced", item('extraplanets:advanced_fuel_loader'), [
      [metaitem('plateDenseTitanium'), ore('circuitLuv'), metaitem('plateDenseTitanium')],
      [metaitem('drum.stainless_steel'), metaitem('hull.luv'), metaitem('electric.pump.luv')],
      [metaitem('pipeLargeFluidTitanium'), metaitem('pipeLargeFluidTitanium'), metaitem('pipeLargeFluidTitanium')]])

   // Ultimate загручкик топлива
   crafting.addShaped("tfg/ep/machine/fuel_loader/ultimate", item('extraplanets:ultimate_fuel_loader'), [
      [metaitem('plateDenseDarmstadtium'), ore('circuitUv'), metaitem('plateDenseDarmstadtium')],
      [metaitem('drum.stainless_steel'), metaitem('hull.uv'), metaitem('electric.pump.uv')],
      [metaitem('pipeHugeFluidTungstenCarbide'), metaitem('pipeHugeFluidTungstenCarbide'), metaitem('pipeHugeFluidTungstenCarbide')]])

   // Улучшенный кислородный компрессор
   crafting.addShaped("tfg/gc/machine/oxygen_decompressor/advanced", item('extraplanets:advanced_oxygen_compressor:4'), [
      [ore('circuitLuv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.luv')],
      [metaitem('pipeSmallFluidTitanium'), metaitem('hull.luv'), metaitem('pipeSmallFluidTitanium')],
      [metaitem('drum.stainless_steel'), metaitem('plateDenseTitanium'), metaitem('electric.pump.luv')]])

   // Ultimate кислородный компрессор
   crafting.addShaped("tfg/gc/machine/oxygen_decompressor/ultimate", item('extraplanets:ultimate_oxygen_compressor:4'), [
      [ore('circuitUv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.uv')],
      [metaitem('pipeSmallFluidTungstenCarbide'), metaitem('hull.uv'), metaitem('pipeSmallFluidTungstenCarbide')],
      [metaitem('drum.stainless_steel'), metaitem('plateDenseDarmstadtium'), metaitem('electric.pump.uv')]])

   // Улучшенный кислородный декомпрессор
   crafting.addShaped("tfg/gc/machine/oxygen_compressor/advanced", item('extraplanets:advanced_oxygen_compressor'), [
      [metaitem('electric.pump.hv'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')],
      [metaitem('pipeSmallFluidTitanium'), metaitem('hull.luv'), metaitem('pipeSmallFluidTitanium')],
      [metaitem('electric.pump.hv'), metaitem('plateDenseTitanium'), metaitem('compressor.hv')]])

   // Ultimate кислородный декомпрессор
   crafting.addShaped("tfg/gc/machine/oxygen_compressor/ultimate", item('extraplanets:ultimate_oxygen_compressor'), [
      [metaitem('electric.pump.hv'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')],
      [metaitem('pipeSmallFluidTungstenCarbide'), metaitem('hull.uv'), metaitem('pipeSmallFluidTungstenCarbide')],
      [metaitem('electric.pump.hv'), metaitem('plateDenseDarmstadtium'), metaitem('compressor.hv')]])


   // Автомобильное зарядное устройство
   crafting.addShaped("tfg/gc/machine/vehicle_charger", item('extraplanets:vehicle_charger'), [
      [metaitem('battery_buffer.iv.4'), ore('batteryIv'), metaitem('battery_buffer.iv.4')],
      [metaitem('plateDenseDesh'), ore('batteryIv'), metaitem('plateDenseDesh')],
      [metaitem('plateDenseDesh'), ore('batteryIv'), metaitem('plateDenseDesh')]])

   // Блок базового обеззараживателя
   assembler.recipeBuilder()
      .inputs(
         item('extraplanets:tools:3') * 6,
         item('extraplanets:iodide_salt') * 14,
         ore('batteryLuv') * 3,
         metaitem('plateLapis') * 36,
         item('extraplanets:tier5_items:12') * 6)
      .outputs(item('extraplanets:basic_decontamination_unit'))
      .duration(200).EUt(4080).buildAndRegister()
}