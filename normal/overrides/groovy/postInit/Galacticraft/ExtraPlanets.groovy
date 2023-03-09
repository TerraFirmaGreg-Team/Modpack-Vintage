import gregtech.api.metatileentity.multiblock.CleanroomType
import postInit.Utility.Array.ItemArray


// Массивы
def armorLayer = [
   item('extraplanets:tier1_armor_layer'),
   item('extraplanets:tier2_armor_layer'),
   item('extraplanets:tier3_armor_layer'),
   item('extraplanets:tier4_armor_layer')
]
def radiationLayer = [
   item('extraplanets:tier1_radiation_layer'),
   item('extraplanets:tier2_radiation_layer'),
   item('extraplanets:tier3_radiation_layer'),
   item('extraplanets:tier4_radiation_layer')
]
def pressureLayer = [
   item('extraplanets:tier1_pressure_layer'),
   item('extraplanets:tier2_pressure_layer'),
   item('extraplanets:tier3_pressure_layer'),
   item('extraplanets:tier4_pressure_layer')
]
def spaceSuitHelmet = [
   item('extraplanets:tier1_space_suit_helmet:100'),
   item('extraplanets:tier2_space_suit_helmet:100'),
   item('extraplanets:tier3_space_suit_helmet:100'),
   item('extraplanets:tier4_space_suit_helmet:100')
]
def spaceSuitChest = [
   item('extraplanets:tier1_space_suit_chest:100'),
   item('extraplanets:tier2_space_suit_chest:100'),
   item('extraplanets:tier3_space_suit_chest:100'),
   item('extraplanets:tier4_space_suit_chest:100')
]
def spaceSuitChestJet = [
   item('extraplanets:tier1_space_suit_jetpack_chest'),
   item('extraplanets:tier2_space_suit_jetpack_chest'),
   item('extraplanets:tier3_space_suit_jetpack_chest'),
   item('extraplanets:tier4_space_suit_jetpack_chest')
]
def spaceSuitLegings = [
   item('extraplanets:tier1_space_suit_legings:100'),
   item('extraplanets:tier2_space_suit_legings:100'),
   item('extraplanets:tier3_space_suit_legings:100'),
   item('extraplanets:tier4_space_suit_legings:100')
]
def spaceSuitBoots = [
   item('extraplanets:tier1_space_suit_boots:100'),
   item('extraplanets:tier2_space_suit_boots:100'),
   item('extraplanets:tier3_space_suit_boots:100'),
   item('extraplanets:tier4_space_suit_boots:100')
]
def unSpaceSuitHelmet = [
   item('extraplanets:tier1_un_prepared_space_suit_helmet'),
   item('extraplanets:tier2_un_prepared_space_suit_helmet'),
   item('extraplanets:tier3_un_prepared_space_suit_helmet'),
   item('extraplanets:tier4_un_prepared_space_suit_helmet')
]
def unSpaceSuitChest = [
   item('extraplanets:tier1_un_prepared_space_suit_chest'),
   item('extraplanets:tier2_un_prepared_space_suit_chest'),
   item('extraplanets:tier3_un_prepared_space_suit_chest'),
   item('extraplanets:tier4_un_prepared_space_suit_chest')
]
def unSpaceSuitLegings = [
   item('extraplanets:tier1_un_prepared_space_suit_legings'),
   item('extraplanets:tier2_un_prepared_space_suit_legings'),
   item('extraplanets:tier3_un_prepared_space_suit_legings'),
   item('extraplanets:tier4_un_prepared_space_suit_legings')
]
def unSpaceSuitBoots = [
   item('extraplanets:tier1_un_prepared_space_suit_boots'),
   item('extraplanets:tier2_un_prepared_space_suit_boots'),
   item('extraplanets:tier3_un_prepared_space_suit_boots'),
   item('extraplanets:tier4_un_prepared_space_suit_boots')
]
def thermalPaddingHelmet = [
   item('galacticraftplanets:thermal_padding'),
   item('galacticraftplanets:thermal_padding_t2'),
   item('extraplanets:tier3_thermal_padding'),
   item('extraplanets:tier4_thermal_padding'),
   item('extraplanets:tier5_thermal_padding')
]
def thermalPaddingChest = [
   item('galacticraftplanets:thermal_padding:1'),
   item('galacticraftplanets:thermal_padding_t2:1'),
   item('extraplanets:tier3_thermal_padding:1'),
   item('extraplanets:tier4_thermal_padding:1'),
   item('extraplanets:tier5_thermal_padding:1')
]
def thermalPaddingLegings = [
   item('galacticraftplanets:thermal_padding:2'),
   item('galacticraftplanets:thermal_padding_t2:2'),
   item('extraplanets:tier3_thermal_padding:2'),
   item('extraplanets:tier4_thermal_padding:2'),
   item('extraplanets:tier5_thermal_padding:2')
]
def thermalPaddingBoots = [
   item('galacticraftplanets:thermal_padding:3'),
   item('galacticraftplanets:thermal_padding_t2:3'),
   item('extraplanets:tier3_thermal_padding:3'),
   item('extraplanets:tier4_thermal_padding:3'),
   item('extraplanets:tier5_thermal_padding:3')
]
def materialSpace = [
   metaitem('plateDenseAluminium'),
   metaitem('plateDenseTitanium'),
   metaitem('plateDenseRhodiumPlatedPalladium'),
   metaitem('plateDenseDarmstadtium')
]
def thermalCloth = [
   item('galacticraftplanets:item_basic_asteroids:7'),
   item('galacticraftplanets:basic_item_venus:3'),
   item('extraplanets:thermal_cloth'),
   item('extraplanets:thermal_cloth:1'),
   item('extraplanets:thermal_cloth:2')
]
def materialThermal = [
   metaitem('foilLead'),
   metaitem('foilTungstenCarbide'),
   metaitem('foilRhodiumPlatedPalladium'),
   metaitem('foilIridium'),
   metaitem('foilDarmstadtium')
]
def materialEngine = [
   item('galacticraftplanets:item_basic_asteroids:1'),
   item('extraplanets:tier4_items'),
   item('extraplanets:tier6_items'),
   item('extraplanets:tier8_items')
]


// --- Добавление рецептов

// item('extraplanets:thermal_cloth').maxStackSize = 64
// item('extraplanets:thermal_cloth:1').maxStackSize = 64
// item('extraplanets:thermal_cloth:2').maxStackSize = 64


// Кислородные баллоны
// Обесцвечивание
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.light.colors'))
      .fluidInputs(fluid('chlorine') * 144)
      .outputs(item('extraplanets:oxygen_tank_light_full_white'))
      .duration(8).EUt(480).buildAndRegister()
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.med.colors'))
      .fluidInputs(fluid('chlorine') * 144)
      .outputs(item('extraplanets:oxygen_tank_med_full_white'))
      .duration(8).EUt(480).buildAndRegister()
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.heavy.colors'))
      .fluidInputs(fluid('chlorine') * 144)
      .outputs(item('extraplanets:oxygen_tank_heavy_full_white'))
      .duration(8).EUt(480).buildAndRegister()
// Окрашивание
for (int i = 0; i < 16; i++) {
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.light'))
      .fluidInputs(ItemArray.colorLiquid[i] * 18)
      .outputs(ItemArray.oxygenTankLight[i])
      .duration(20).EUt(7).buildAndRegister()
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.med'))
      .fluidInputs(ItemArray.colorLiquid[i] * 18)
      .outputs(ItemArray.oxygenTankMed[i])
      .duration(20).EUt(7).buildAndRegister()
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.oxygen.tank.heavy'))
      .fluidInputs(ItemArray.colorLiquid[i] * 18)
      .outputs(ItemArray.oxygenTankHeavy[i])
      .duration(20).EUt(7).buildAndRegister()
}

// Легкий
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('galacticraftcore:canister') * 2, 
      metaitem('plateDenseCopper') * 2,
      metaitem('electric.pump.lv') * 2)
   .outputs(item('extraplanets:oxygen_tank_light_full_white'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(128).buildAndRegister()
// Средний
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('galacticraftcore:canister') * 4, 
      metaitem('plateDenseTin') * 4, 
      metaitem('electric.pump.mv') * 2)
   .outputs(item('extraplanets:oxygen_tank_med_full_white'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(512).buildAndRegister()
// Тяжелый
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('galacticraftcore:canister') * 6, 
      metaitem('plateDenseSteel') * 6, 
      metaitem('electric.pump.hv') * 2)
   .outputs(item('extraplanets:oxygen_tank_heavy_full_white'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(2048).buildAndRegister()

// Очень тяжелый
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      ore('gc.oxygen.tank.heavy') * 3, 
      metaitem('platePalladium') * 3, 
      metaitem('electric.pump.ev') * 2)
   .outputs(item('extraplanets:oxygen_tank_very_heavy_full'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(8192).buildAndRegister()
// Экстремально тяжелый
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('extraplanets:oxygen_tank_very_heavy_full') * 3, 
      metaitem('plateZinc') * 3, 
      metaitem('electric.pump.iv') * 2)
   .outputs(item('extraplanets:oxygen_tank_extremely_heavy_full'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(32768).buildAndRegister()

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('galacticraftcore:landing_pad') * 3, 
      metaitem('plateDenseTitanium') * 6)
   .outputs(item('extraplanets:advanced_launch_pad') * 5)
   .duration(300).EUt(1000).buildAndRegister()

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('extraplanets:advanced_launch_pad') * 3, 
      metaitem('plateDenseTungstenSteel') * 18, 
      metaitem('plateLead') * 2)
   .outputs(item('extraplanets:advanced_launch_pad:1') * 5)
   .duration(1000).EUt(5208).buildAndRegister()

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('extraplanets:advanced_launch_pad:1') * 3, 
      metaitem('plateDensePlatinum') * 9, 
      metaitem('plateLead') * 2, 
      metaitem('electric.pump.lv') * 2)
   .outputs(item('extraplanets:advanced_launch_pad:3') * 5)
   .duration(1000).EUt(30038).buildAndRegister()

// Площадка для роверов
assembler.recipeBuilder()
   .circuitMeta(6)
   .inputs(
      item('galacticraftplanets:mars:8') * 3, 
      metaitem('plateDenseDesh') * 3)
   .outputs(item('extraplanets:advanced_launch_pad:2') * 5)
   .duration(1000).EUt(5208).buildAndRegister()

// Гравитационный контроллер
assembler.recipeBuilder()
   .circuitMeta(1)
   .inputs(
      metaitem('plateDenseMeteoricIron') * 9, 
      ore('batteryLuv') * 8,
      ore('circuitLuv') * 8)
   .outputs(item('extraplanets:gravity_controller'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(31123).buildAndRegister()

// Кислородный контроллер
assembler.recipeBuilder()
   .circuitMeta(2)
   .inputs(
      metaitem('plateDenseDesh') * 9, 
      ore('batteryLuv') * 4,
      ore('circuitLuv') * 8,
      ore('gc.oxygen.tank.heavy'))
   .outputs(item('extraplanets:module_items:1'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(31123).buildAndRegister()

// Космический контроллер
assembler.recipeBuilder()
   .circuitMeta(3)
   .inputs(
      metaitem('plateDenseTitanium') * 9, 
      ore('batteryLuv') * 4,
      ore('circuitLuv') * 8,
      item('galacticraftcore:oxygen_gear'))
   .outputs(item('extraplanets:module_items:2'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(31123).buildAndRegister()

// Модуль отсутствия повреждения при падении
assembler.recipeBuilder()
   .circuitMeta(3)
   .inputs( 
      item('extraplanets:tier2_un_prepared_space_suit_boots') * 4,
      item('extraplanets:gravity_controller'),
      item('extraplanets:module_items:2'))
   .outputs(item('extraplanets:module_items'))
   .cleanroom(CleanroomType.STERILE_CLEANROOM)
   .duration(1000).EUt(31123).buildAndRegister()

// Прочная ткань
implosion_compressor.recipeBuilder()
	.inputs(metaitem('platePolycaprolactam') * 4)
	.outputs(item('extraplanets:cloth'))
   .explosivesAmount(2)
	.duration(20).EUt(380).buildAndRegister()

// Защитные пластины
// T1
implosion_compressor.recipeBuilder()
	.inputs(metaitem('plateDenseTitanium') * 4)
	.outputs(item('extraplanets:tier1_armor_layer'))
	.explosivesAmount(6)
	.duration(20).EUt(2280).buildAndRegister()
// T2
implosion_compressor.recipeBuilder()
	.inputs(metaitem('plateDenseTungstenSteel') * 6)
	.outputs(item('extraplanets:tier2_armor_layer'))
	.explosivesAmount(8)
	.duration(20).EUt(8680).buildAndRegister()
// T3
implosion_compressor.recipeBuilder()
	.inputs(metaitem('plateDenseRhodiumPlatedPalladium') * 12)
	.outputs(item('extraplanets:tier3_armor_layer'))
	.explosivesAmount(10)
	.duration(20).EUt(38480).buildAndRegister()
// T4
implosion_compressor.recipeBuilder()
	.inputs(metaitem('plateDenseNaquadahAlloy') * 24)
	.outputs(item('extraplanets:tier4_armor_layer'))
	.explosivesAmount(12)
	.duration(20).EUt(139480).buildAndRegister()

// Антирадиоционные пластины
// T1
assembler.recipeBuilder()
   .circuitMeta(11)
   .inputs(
      metaitem('plateDoubleTungsten') * 6, 
      item('extraplanets:cloth') * 4)
   .outputs(item('extraplanets:tier1_radiation_layer'))
   .duration(1000).EUt(2280).buildAndRegister()
// T2
assembler.recipeBuilder()
   .circuitMeta(12)
   .inputs(
      metaitem('plateDoubleTungsten') * 6, 
      item('extraplanets:cloth') * 4, 
      item('extraplanets:tier1_radiation_layer'))
   .outputs(item('extraplanets:tier2_radiation_layer'))
   .duration(1000).EUt(8680).buildAndRegister()
// T3
assembler.recipeBuilder()
   .circuitMeta(13)
   .inputs(
      metaitem('plateDoubleTungsten') * 6, 
      item('extraplanets:cloth') * 4, 
      item('extraplanets:tier2_radiation_layer'))
   .outputs(item('extraplanets:tier3_radiation_layer'))
   .duration(1000).EUt(38480).buildAndRegister()
// T4
assembler.recipeBuilder()
   .circuitMeta(14)
   .inputs(
      metaitem('plateDoubleTungsten') * 6, 
      item('extraplanets:cloth') * 4, 
      item('extraplanets:tier3_radiation_layer'))
   .outputs(item('extraplanets:tier4_radiation_layer'))
   .duration(1000).EUt(139480).buildAndRegister()

// Пластины давления
// T1
assembler.recipeBuilder()
   .circuitMeta(11)
   .inputs(
      item('galacticraftcore:oxygen_concentrator') * 4, 
      item('extraplanets:cloth') * 4)
   .outputs(item('extraplanets:tier1_pressure_layer'))
   .duration(1000).EUt(2280).buildAndRegister()
// T2
assembler.recipeBuilder()
   .circuitMeta(12)
   .inputs(
      item('galacticraftcore:oxygen_concentrator') * 6, 
      item('extraplanets:cloth') * 8, 
      item('extraplanets:tier1_pressure_layer'))
   .outputs(item('extraplanets:tier2_pressure_layer'))
   .duration(1000).EUt(8680).buildAndRegister()
// T3
assembler.recipeBuilder()
   .circuitMeta(13)
   .inputs(
      item('galacticraftcore:oxygen_concentrator') * 8, 
      item('extraplanets:cloth') * 16, 
      item('extraplanets:tier2_pressure_layer'))
   .outputs(item('extraplanets:tier3_pressure_layer'))
   .duration(1000).EUt(38480).buildAndRegister()
// T4
assembler.recipeBuilder()
   .circuitMeta(14)
   .inputs(
      item('galacticraftcore:oxygen_concentrator') * 10, 
      item('extraplanets:cloth') * 32, 
      item('extraplanets:tier3_pressure_layer'))
   .outputs(item('extraplanets:tier4_pressure_layer'))
   .duration(1000).EUt(139480).buildAndRegister()

// Теплоизолирующая ткань
// T1
assembler.recipeBuilder()
   .circuitMeta(11)
   .inputs(
      item('extraplanets:cloth') * 6, 
      metaitem('wireFineBorosilicateGlass') * 3)
   .outputs(item('galacticraftplanets:item_basic_asteroids:7'))
   .duration(100).EUt(1024).buildAndRegister()
// T2
assembler.recipeBuilder()
   .circuitMeta(12)
   .inputs(
      item('extraplanets:cloth') * 12, 
      metaitem('wireFineLead') * 3)
   .outputs(item('galacticraftplanets:basic_item_venus:3'))
   .duration(100).EUt(4096).buildAndRegister()
// T3
assembler.recipeBuilder()
   .circuitMeta(13)
   .inputs(
      item('extraplanets:cloth') * 18, 
      metaitem('wireFineAluminium') * 3)
   .outputs(item('extraplanets:thermal_cloth'))
   .duration(100).EUt(16384).buildAndRegister()
// T4
assembler.recipeBuilder()
   .circuitMeta(14)
   .inputs(
      item('extraplanets:cloth') * 24, 
      metaitem('wireFineIndiumTinBariumTitaniumCuprate') * 3)
   .outputs(item('extraplanets:thermal_cloth:1'))
   .duration(100).EUt(65536).buildAndRegister()
// T5
assembler.recipeBuilder()
   .circuitMeta(15)
   .inputs(
      item('extraplanets:cloth') * 28, 
      metaitem('plateDenseCarbon'), 
      metaitem('foilIndiumTinBariumTitaniumCuprate') * 3)
   .outputs(item('extraplanets:thermal_cloth:2'))
   .duration(100).EUt(262144).buildAndRegister()

// Заготовки под скафандры
// Шлем
for (int i = 0; i < materialSpace.size(); i++) {
assembler.recipeBuilder()
   .circuitMeta(15)
   .inputs(materialSpace[i] * 5)
   .outputs(unSpaceSuitHelmet[i])
   .duration(500).EUt(2000).buildAndRegister()
// Нагрудник
assembler.recipeBuilder()
   .circuitMeta(16)
   .inputs(materialSpace[i] * 8)
   .outputs(unSpaceSuitChest[i])
   .duration(500).EUt(2000).buildAndRegister()
// Штаны
assembler.recipeBuilder()
   .circuitMeta(17)
   .inputs(materialSpace[i] * 7)
   .outputs(unSpaceSuitLegings[i])
   .duration(500).EUt(2000).buildAndRegister()
// Ботинки
assembler.recipeBuilder()
   .circuitMeta(18)
   .inputs(materialSpace[i] * 4)
   .outputs(unSpaceSuitBoots[i])
   .duration(500).EUt(2000).buildAndRegister()
}
// Скафандры
// Шлем
for (int i = 0; i < armorLayer.size(); i++) {
assembler.recipeBuilder()
   .circuitMeta(15)
   .inputs(armorLayer[i] * 2)
   .inputs(radiationLayer[i] * 3)
   .inputs(pressureLayer[i] * 3)
   .inputs(unSpaceSuitHelmet[i])
   .outputs(spaceSuitHelmet[i])
   .duration(1000).EUt(8002).buildAndRegister()
// Нагрудник
assembler.recipeBuilder()
   .circuitMeta(16)
   .inputs(armorLayer[i] * 2)
   .inputs(radiationLayer[i] * 3)
   .inputs(pressureLayer[i] * 3)
   .inputs(unSpaceSuitChest[i])
   .outputs(spaceSuitChest[i])
   .duration(1000).EUt(8002).buildAndRegister()
// Штаны
assembler.recipeBuilder()
   .circuitMeta(17)
   .inputs(armorLayer[i] * 2)
   .inputs(radiationLayer[i] * 3)
   .inputs(pressureLayer[i] * 3)
   .inputs(unSpaceSuitLegings[i])
   .outputs(spaceSuitLegings[i])
   .duration(1000).EUt(8002).buildAndRegister()
// Ботинки
assembler.recipeBuilder()
   .circuitMeta(18)
   .inputs(armorLayer[i] * 2)
   .inputs(radiationLayer[i] * 3)
   .inputs(pressureLayer[i] * 3)
   .inputs(unSpaceSuitBoots[i])
   .outputs(spaceSuitBoots[i])
   .duration(1000).EUt(8002).buildAndRegister()
}
for (int i = 0; i < armorLayer.size(); i++) {
   assembler.recipeBuilder()
   .circuitMeta(19)
   .inputs(materialEngine[i] * 2)
   .inputs(ore('batteryLuv') * 3)
   .inputs(spaceSuitChest[i])
   .outputs(spaceSuitChestJet[i])
   .duration(1000).EUt(8002).buildAndRegister()
}

//  Теплоустойчивая броня
// Шлем
for (int i = 0; i < armorLayer.size(); i++) {
assembler.recipeBuilder()
   .circuitMeta(15)
   .inputs(thermalCloth[i] * 5)
   .inputs(materialThermal[i] * 2)
   .outputs(thermalPaddingHelmet[i])
   .duration(500).EUt(2000).buildAndRegister()
// Нагрудник
assembler.recipeBuilder()
   .circuitMeta(16)
   .inputs(thermalCloth[i] * 8)
   .inputs(materialThermal[i] * 2)
   .outputs(thermalPaddingChest[i])
   .duration(500).EUt(2000).buildAndRegister()
// Штаны
assembler.recipeBuilder()
   .circuitMeta(17)
   .inputs(thermalCloth[i] * 7)
   .inputs(materialThermal[i] * 2)
   .outputs(thermalPaddingLegings[i])
   .duration(500).EUt(2000).buildAndRegister()
// Ботинки
assembler.recipeBuilder()
   .circuitMeta(18)
   .inputs(thermalCloth[i] * 4)
   .inputs(materialThermal[i] * 2)
   .outputs(thermalPaddingBoots[i])
   .duration(500).EUt(2000).buildAndRegister()
}