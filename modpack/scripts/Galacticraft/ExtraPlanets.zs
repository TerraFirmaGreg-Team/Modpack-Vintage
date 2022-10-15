import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


// Массивы
val armorLayer as IItemStack[] = [
   <extraplanets:tier1_armor_layer>,
   <extraplanets:tier2_armor_layer>,
   <extraplanets:tier3_armor_layer>,
   <extraplanets:tier4_armor_layer>
];
val radiationLayer as IItemStack[] = [
   <extraplanets:tier1_radiation_layer>,
   <extraplanets:tier2_radiation_layer>,
   <extraplanets:tier3_radiation_layer>,
   <extraplanets:tier4_radiation_layer>
];
val pressureLayer as IItemStack[] = [
   <extraplanets:tier1_pressure_layer>,
   <extraplanets:tier2_pressure_layer>,
   <extraplanets:tier3_pressure_layer>,
   <extraplanets:tier4_pressure_layer>
];
val spaceSuitHelmet as IItemStack[] = [
   <extraplanets:tier1_space_suit_helmet:100>,
   <extraplanets:tier2_space_suit_helmet:100>,
   <extraplanets:tier3_space_suit_helmet:100>,
   <extraplanets:tier4_space_suit_helmet:100>
];
val spaceSuitChest as IItemStack[] = [
   <extraplanets:tier1_space_suit_chest:100>,
   <extraplanets:tier2_space_suit_chest:100>,
   <extraplanets:tier3_space_suit_chest:100>,
   <extraplanets:tier4_space_suit_chest:100>
];
val spaceSuitChestJet as IItemStack[] = [
   <extraplanets:tier1_space_suit_jetpack_chest>,
   <extraplanets:tier2_space_suit_jetpack_chest>,
   <extraplanets:tier3_space_suit_jetpack_chest>,
   <extraplanets:tier4_space_suit_jetpack_chest>
];
val spaceSuitLegings as IItemStack[] = [
   <extraplanets:tier1_space_suit_legings:100>,
   <extraplanets:tier2_space_suit_legings:100>,
   <extraplanets:tier3_space_suit_legings:100>,
   <extraplanets:tier4_space_suit_legings:100>
];
val spaceSuitBoots as IItemStack[] = [
   <extraplanets:tier1_space_suit_boots:100>,
   <extraplanets:tier2_space_suit_boots:100>,
   <extraplanets:tier3_space_suit_boots:100>,
   <extraplanets:tier4_space_suit_boots:100>
];
val unSpaceSuitHelmet as IItemStack[] = [
   <extraplanets:tier1_un_prepared_space_suit_helmet>,
   <extraplanets:tier2_un_prepared_space_suit_helmet>,
   <extraplanets:tier3_un_prepared_space_suit_helmet>,
   <extraplanets:tier4_un_prepared_space_suit_helmet>
];
val unSpaceSuitChest as IItemStack[] = [
   <extraplanets:tier1_un_prepared_space_suit_chest>,
   <extraplanets:tier2_un_prepared_space_suit_chest>,
   <extraplanets:tier3_un_prepared_space_suit_chest>,
   <extraplanets:tier4_un_prepared_space_suit_chest>
];
val unSpaceSuitLegings as IItemStack[] = [
   <extraplanets:tier1_un_prepared_space_suit_legings>,
   <extraplanets:tier2_un_prepared_space_suit_legings>,
   <extraplanets:tier3_un_prepared_space_suit_legings>,
   <extraplanets:tier4_un_prepared_space_suit_legings>
];
val unSpaceSuitBoots as IItemStack[] = [
   <extraplanets:tier1_un_prepared_space_suit_boots>,
   <extraplanets:tier2_un_prepared_space_suit_boots>,
   <extraplanets:tier3_un_prepared_space_suit_boots>,
   <extraplanets:tier4_un_prepared_space_suit_boots>
];
val thermalPaddingHelmet as IItemStack[] = [
   <galacticraftplanets:thermal_padding>,
   <galacticraftplanets:thermal_padding_t2>,
   <extraplanets:tier3_thermal_padding>,
   <extraplanets:tier4_thermal_padding>,
   <extraplanets:tier5_thermal_padding>
];
val thermalPaddingChest as IItemStack[] = [
   <galacticraftplanets:thermal_padding:1>,
   <galacticraftplanets:thermal_padding_t2:1>,
   <extraplanets:tier3_thermal_padding:1>,
   <extraplanets:tier4_thermal_padding:1>,
   <extraplanets:tier5_thermal_padding:1>
];
val thermalPaddingLegings as IItemStack[] = [
   <galacticraftplanets:thermal_padding:2>,
   <galacticraftplanets:thermal_padding_t2:2>,
   <extraplanets:tier3_thermal_padding:2>,
   <extraplanets:tier4_thermal_padding:2>,
   <extraplanets:tier5_thermal_padding:2>
];
val thermalPaddingBoots as IItemStack[] = [
   <galacticraftplanets:thermal_padding:3>,
   <galacticraftplanets:thermal_padding_t2:3>,
   <extraplanets:tier3_thermal_padding:3>,
   <extraplanets:tier4_thermal_padding:3>,
   <extraplanets:tier5_thermal_padding:3>
];
val materialSpace as IItemStack[] = [
   <metaitem:plateDenseAluminium>,
   <metaitem:plateDenseTitanium>,
   <metaitem:plateDenseRhodiumPlatedPalladium>,
   <metaitem:plateDenseDarmstadtium>
];
val thermalCloth as IItemStack[] = [
   <galacticraftplanets:item_basic_asteroids:7>,
   <galacticraftplanets:basic_item_venus:3>,
   <extraplanets:thermal_cloth>,
   <extraplanets:thermal_cloth:1>,
   <extraplanets:thermal_cloth:2>
];
val materialThermal as IItemStack[] = [
   <metaitem:foilLead>,
   <metaitem:foilTungstenCarbide>,
   <metaitem:foilRhodiumPlatedPalladium>,
   <metaitem:foilIridium>,
   <metaitem:foilDarmstadtium>
];
val materialEngine as IItemStack[] = [
   <galacticraftplanets:item_basic_asteroids:1>,
   <extraplanets:tier4_items>,
   <extraplanets:tier6_items>,
   <extraplanets:tier8_items>
];

// --- Добавление рецептов

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .circuit(6)
   .inputs(
      <galacticraftcore:landing_pad> * 3, 
      <metaitem:plateDenseTitanium> * 6)
   .outputs(<extraplanets:advanced_launch_pad> * 5)
   .duration(300).EUt(1000).buildAndRegister();

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .circuit(6)
   .inputs(
      <extraplanets:advanced_launch_pad> * 3, 
      <metaitem:plateDenseTungstenSteel> * 18, 
      <metaitem:plateLead> * 2)
   .outputs(<extraplanets:advanced_launch_pad:1> * 5)
   .duration(1000).EUt(5208).buildAndRegister();

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .circuit(6)
   .inputs(
      <extraplanets:advanced_launch_pad:1> * 3, 
      <metaitem:plateDensePlatinum> * 9, 
      <metaitem:plateLead> * 2, 
      <metaitem:electric.pump.lv> * 2)
   .outputs(<extraplanets:advanced_launch_pad:3> * 5)
   .duration(1000).EUt(30038).buildAndRegister();

// Площадка для роверов
assembler.recipeBuilder()
   .circuit(6)
   .inputs(
      <galacticraftplanets:mars:8> * 3, 
      <metaitem:plateDenseDesh> * 3)
   .outputs(<extraplanets:advanced_launch_pad:2> * 5)
   .duration(1000).EUt(5208).buildAndRegister();

// Батареи
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <ore:batteryIv> * 3, 
      <galacticraftplanets:item_basic_mars:3> * 2)
   .outputs(<extraplanets:electric_parts>)
   .duration(200).EUt(8180).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(
      <ore:batteryLuv> * 3, 
      <galacticraftplanets:item_basic_mars:3> * 3)
   .outputs(<extraplanets:electric_parts:1>)
   .duration(200).EUt(12680).buildAndRegister();

// Прочная ткань
implosion_compressor.recipeBuilder()
	.inputs(<ore:wool> * 4)
	.outputs(<extraplanets:cloth>)
	.property("explosives", 2)
	.duration(20).EUt(380).buildAndRegister();

// Защитные пластины
// T1
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseTitanium> * 4)
	.outputs(<extraplanets:tier1_armor_layer>)
	.property("explosives", 6)
	.duration(20).EUt(2280).buildAndRegister();
// T2
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseTungstenSteel> * 6)
	.outputs(<extraplanets:tier2_armor_layer>)
	.property("explosives", 8)
	.duration(20).EUt(8680).buildAndRegister();
// T3
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseRhodiumPlatedPalladium> * 12)
	.outputs(<extraplanets:tier3_armor_layer>)
	.property("explosives", 10)
	.duration(20).EUt(38480).buildAndRegister();
// T4
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseNaquadahAlloy> * 24)
	.outputs(<extraplanets:tier4_armor_layer>)
	.property("explosives", 12)
	.duration(20).EUt(139480).buildAndRegister();

// Антирадиоционные пластины
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <metaitem:plateDoubleLead> * 6, 
      <extraplanets:cloth> * 4)
   .outputs(<extraplanets:tier1_radiation_layer>)
   .duration(1000).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(
      <metaitem:plateDoubleLead> * 6, 
      <extraplanets:cloth> * 4, 
      <extraplanets:tier1_radiation_layer>)
   .outputs(<extraplanets:tier2_radiation_layer>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(
      <metaitem:plateDoubleLead> * 6, 
      <extraplanets:cloth> * 4, 
      <extraplanets:tier2_radiation_layer>)
   .outputs(<extraplanets:tier3_radiation_layer>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(
      <metaitem:plateDoubleLead> * 6, 
      <extraplanets:cloth> * 4, 
      <extraplanets:tier3_radiation_layer>)
   .outputs(<extraplanets:tier4_radiation_layer>)
   .duration(1000).EUt(139480).buildAndRegister();

// Пластины давления
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <galacticraftcore:oxygen_concentrator> * 4, 
      <extraplanets:cloth> * 4)
   .outputs(<extraplanets:tier1_pressure_layer>)
   .duration(1000).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(
      <galacticraftcore:oxygen_concentrator> * 6, 
      <extraplanets:cloth> * 8, 
      <extraplanets:tier1_pressure_layer>)
   .outputs(<extraplanets:tier2_pressure_layer>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(
      <galacticraftcore:oxygen_concentrator> * 8, 
      <extraplanets:cloth> * 16, 
      <extraplanets:tier2_pressure_layer>)
   .outputs(<extraplanets:tier3_pressure_layer>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(
      <galacticraftcore:oxygen_concentrator> * 10, 
      <extraplanets:cloth> * 32, 
      <extraplanets:tier3_pressure_layer>)
   .outputs(<extraplanets:tier4_pressure_layer>)
   .duration(1000).EUt(139480).buildAndRegister();

// Теплоизолирующая ткань
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <extraplanets:cloth> * 6, 
      <metaitem:wireFineBorosilicateGlass> * 3)
   .outputs(<galacticraftplanets:item_basic_asteroids:7>)
   .duration(100).EUt(1024).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(
      <extraplanets:cloth> * 12, 
      <metaitem:wireFineLead> * 3)
   .outputs(<galacticraftplanets:basic_item_venus:3>)
   .duration(100).EUt(4096).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(
      <extraplanets:cloth> * 18, 
      <metaitem:wireFineAluminium> * 3)
   .outputs(<extraplanets:thermal_cloth>)
   .duration(100).EUt(16384).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(
      <extraplanets:cloth> * 24, 
      <metaitem:wireFineIndiumTinBariumTitaniumCuprate> * 3)
   .outputs(<extraplanets:thermal_cloth:1>)
   .duration(100).EUt(65536).buildAndRegister();
// T5
assembler.recipeBuilder()
   .circuit(5)
   .inputs(
      <extraplanets:cloth> * 28, 
      <metaitem:plateDenseCarbon>, 
      <metaitem:foilIndiumTinBariumTitaniumCuprate> * 3)
   .outputs(<extraplanets:thermal_cloth:2>)
   .duration(100).EUt(262144).buildAndRegister();

// Заготовки под скафандры
// Шлем
for i, materialSpace in materialSpace {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([materialSpace * 5])
   .outputs([unSpaceSuitHelmet[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Нагрудник
assembler.recipeBuilder()
   .circuit(6)
   .inputs([materialSpace * 8])
   .outputs([unSpaceSuitChest[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Штаны
assembler.recipeBuilder()
   .circuit(7)
   .inputs([materialSpace * 7])
   .outputs([unSpaceSuitLegings[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Ботинки
assembler.recipeBuilder()
   .circuit(8)
   .inputs([materialSpace * 4])
   .outputs([unSpaceSuitBoots[i]])
   .duration(500).EUt(2000).buildAndRegister();
}
// Скафандры
// Шлем
for i, armorLayer in armorLayer {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([armorLayer * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitHelmet[i]])
   .outputs([spaceSuitHelmet[i]])
   .duration(1000).EUt(8002).buildAndRegister();
// Нагрудник
assembler.recipeBuilder()
   .circuit(6)
   .inputs([armorLayer * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitChest[i]])
   .outputs([spaceSuitChest[i]])
   .duration(1000).EUt(8002).buildAndRegister();
// Штаны
assembler.recipeBuilder()
   .circuit(7)
   .inputs([armorLayer * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitLegings[i]])
   .outputs([spaceSuitLegings[i]])
   .duration(1000).EUt(8002).buildAndRegister();
// Ботинки
assembler.recipeBuilder()
   .circuit(8)
   .inputs([armorLayer * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitBoots[i]])
   .outputs([spaceSuitBoots[i]])
   .duration(1000).EUt(8002).buildAndRegister();
}
for i, spaceSuitChestJet in spaceSuitChestJet {
   assembler.recipeBuilder()
   .circuit(9)
   .inputs([materialEngine[i] * 2])
   .inputs([<ore:batteryLuv> * 3])
   .inputs([spaceSuitChest[i]])
   .outputs([spaceSuitChestJet])
   .duration(1000).EUt(8002).buildAndRegister();
}

//  Теплоустойчивая броня
// Шлем
for i, thermalCloth in thermalCloth {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([thermalCloth * 5])
   .inputs([materialThermal[i] * 2])
   .outputs([thermalPaddingHelmet[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Нагрудник
assembler.recipeBuilder()
   .circuit(6)
   .inputs([thermalCloth * 8])
   .inputs([materialThermal[i] * 2])
   .outputs([thermalPaddingChest[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Штаны
assembler.recipeBuilder()
   .circuit(7)
   .inputs([thermalCloth * 7])
   .inputs([materialThermal[i] * 2])
   .outputs([thermalPaddingLegings[i]])
   .duration(500).EUt(2000).buildAndRegister();
// Ботинки
assembler.recipeBuilder()
   .circuit(8)
   .inputs([thermalCloth * 4])
   .inputs([materialThermal[i] * 2])
   .outputs([thermalPaddingBoots[i]])
   .duration(500).EUt(2000).buildAndRegister();
}