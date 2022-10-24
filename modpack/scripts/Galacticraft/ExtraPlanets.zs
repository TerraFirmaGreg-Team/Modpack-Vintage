import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;

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
   <extraplanets:tier4_thermal_padding>
];
val thermalPaddingChest as IItemStack[] = [
   <galacticraftplanets:thermal_padding:1>,
   <galacticraftplanets:thermal_padding_t2:1>,
   <extraplanets:tier3_thermal_padding:1>,
   <extraplanets:tier4_thermal_padding:1>
];
val thermalPaddingLegings as IItemStack[] = [
   <galacticraftplanets:thermal_padding:2>,
   <galacticraftplanets:thermal_padding_t2:2>,
   <extraplanets:tier3_thermal_padding:2>,
   <extraplanets:tier4_thermal_padding:2>
];
val thermalPaddingBoots as IItemStack[] = [
   <galacticraftplanets:thermal_padding:3>,
   <galacticraftplanets:thermal_padding_t2:3>,
   <extraplanets:tier3_thermal_padding:3>,
   <extraplanets:tier4_thermal_padding:3>
];
val materialSpace as IItemStack[] = [
   <metaitem:plateDenseTitanium>,
   <metaitem:plateDenseTungstenSteel>,
   <metaitem:plateDenseRhodiumPlatedPalladium>,
   <metaitem:plateDenseNaquadahAlloy>
];
val thermalCloth as IItemStack[] = [
   <galacticraftplanets:item_basic_asteroids:7>,
   <galacticraftplanets:basic_item_venus:3>,
   <extraplanets:thermal_cloth>,
   <extraplanets:thermal_cloth:1>
];
val materialThermal as IItemStack[] = [
   <metaitem:plateRedAlloy>,
   <metaitem:plateLead>,
   <metaitem:plateDesh>,
   <metaitem:plateCarbon>
];

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("extraplanets");

// --- Добавление рецептов

// Размеры ракет
ItemRegistry.registerItemSize(<extraplanets:item_tier7_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier8_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier9_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier10_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier10_electric_rocket:*>, "HUGE", "VERY_HEAVY");

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .inputs(<galacticraftcore:landing_pad> * 3, <metaitem:plateDenseTitanium> * 6)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad> * 5)
   .duration(300).EUt(1000).buildAndRegister();

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad> * 3, <metaitem:plateDenseTungstenSteel> * 18, <metaitem:plateLead> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:1> * 5)
   .duration(1000).EUt(5208).buildAndRegister();

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad:1> * 3, <metaitem:plateDensePlatinum> * 9 , <metaitem:plateLead> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:3> * 5)
   .duration(1000).EUt(30038).buildAndRegister();

// Прочная ткань
implosion_compressor.recipeBuilder()
	.inputs(<ore:wool> * 4)
	.outputs(<extraplanets:cloth>)
	.property("explosives", 12)
	.duration(20).EUt(380).buildAndRegister();

// Защитные пластины
// T1
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseTitanium> * 4)
	.outputs(<extraplanets:tier1_armor_layer>)
	.property("explosives", 12)
	.duration(20).EUt(2280).buildAndRegister();
// T2
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseTungstenSteel> * 8)
	.outputs(<extraplanets:tier2_armor_layer>)
	.property("explosives", 24)
	.duration(20).EUt(8680).buildAndRegister();
// T3
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseRhodiumPlatedPalladium> * 16)
	.outputs(<extraplanets:tier3_armor_layer>)
	.property("explosives", 36)
	.duration(20).EUt(38480).buildAndRegister();
// T4
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDenseNaquadahAlloy> * 32)
	.outputs(<extraplanets:tier4_armor_layer>)
	.property("explosives", 48)
	.duration(20).EUt(139480).buildAndRegister();
// Антирадиоционные пластины
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(<metaitem:plateDoubleLead> * 6, <extraplanets:cloth> * 4)
   .outputs(<extraplanets:tier1_radiation_layer>)
   .duration(1000).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(<metaitem:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier1_radiation_layer>)
   .outputs(<extraplanets:tier2_radiation_layer>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(<metaitem:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier2_radiation_layer>)
   .outputs(<extraplanets:tier3_radiation_layer>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(<metaitem:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier3_radiation_layer>)
   .outputs(<extraplanets:tier4_radiation_layer>)
   .duration(1000).EUt(139480).buildAndRegister();
// Пластины давления
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(<galacticraftcore:oxygen_concentrator> * 4, <extraplanets:cloth> * 4)
   .outputs(<extraplanets:tier1_pressure_layer>)
   .duration(1000).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(<galacticraftcore:oxygen_concentrator> * 6, <extraplanets:cloth> * 8, <extraplanets:tier1_pressure_layer>)
   .outputs(<extraplanets:tier2_pressure_layer>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(<galacticraftcore:oxygen_concentrator> * 8, <extraplanets:cloth> * 16, <extraplanets:tier2_pressure_layer>)
   .outputs(<extraplanets:tier3_pressure_layer>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(<galacticraftcore:oxygen_concentrator> * 10, <extraplanets:cloth> * 32, <extraplanets:tier3_pressure_layer>)
   .outputs(<extraplanets:tier4_pressure_layer>)
   .duration(1000).EUt(139480).buildAndRegister();
// Теплоизолирующая ткань
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(<extraplanets:cloth> * 6, <metaitem:wireFineBorosilicateGlass> * 4, <metaitem:wireFineRedAlloy> * 9)
   .fluidInputs(<liquid:red_alloy> * 516)
   .outputs(<galacticraftplanets:item_basic_asteroids:7>)
   .duration(100).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(<extraplanets:cloth> * 12, <metaitem:plateDenseLead>, <galacticraftplanets:item_basic_asteroids:7> * 8)
   .outputs(<galacticraftplanets:basic_item_venus:3>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(<extraplanets:cloth> * 18, <metaitem:plateDenseDesh>, <galacticraftplanets:item_basic_asteroids:7> * 16)
   .outputs(<extraplanets:thermal_cloth>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(<extraplanets:cloth> * 24, <metaitem:plateDenseCarbon>, <galacticraftplanets:item_basic_asteroids:7> * 32)
   .outputs(<extraplanets:thermal_cloth:1>)
   .duration(1000).EUt(139480).buildAndRegister();
// Заготовки под скафандры
// Шлем
for i, unSpaceSuitHelmet in unSpaceSuitHelmet {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([materialSpace[i] * 5])
   .outputs(unSpaceSuitHelmet)
   .duration(500).EUt(2000).buildAndRegister();
}
// Нагрудник
for i, unSpaceSuitChest in unSpaceSuitChest {
assembler.recipeBuilder()
   .circuit(6)
   .inputs([materialSpace[i] * 8])
   .outputs(unSpaceSuitChest)
   .duration(500).EUt(2000).buildAndRegister();
}
// Штаны
for i, unSpaceSuitLegings in unSpaceSuitLegings {
assembler.recipeBuilder()
   .circuit(7)
   .inputs([materialSpace[i] * 7])
   .outputs(unSpaceSuitLegings)
   .duration(500).EUt(2000).buildAndRegister();
}
// Ботинки
for i, unSpaceSuitBoots in unSpaceSuitBoots {
assembler.recipeBuilder()
   .circuit(8)
   .inputs([materialSpace[i] * 4])
   .outputs(unSpaceSuitBoots)
   .duration(500).EUt(2000).buildAndRegister();
}
// Скафандры
// Шлем
for i, spaceSuitHelmet in spaceSuitHelmet {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([armorLayer[i] * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitHelmet[i]])
   .outputs([spaceSuitHelmet])
   .duration(1000).EUt(8002).buildAndRegister();
}
// Нагрудник
for i, spaceSuitChest in spaceSuitChest {
assembler.recipeBuilder()
   .circuit(6)
   .inputs([armorLayer[i] * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitChest[i]])
   .outputs(spaceSuitChest)
   .duration(1000).EUt(8002).buildAndRegister();
}
// Штаны
for i, spaceSuitLegings in spaceSuitLegings {
assembler.recipeBuilder()
   .circuit(7)
   .inputs([armorLayer[i] * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitLegings[i]])
   .outputs(spaceSuitLegings)
   .duration(1000).EUt(8002).buildAndRegister();
}
// Ботинки
for i, spaceSuitBoots in spaceSuitBoots {
assembler.recipeBuilder()
   .circuit(8)
   .inputs([armorLayer[i] * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitBoots[i]])
   .outputs(spaceSuitBoots)
   .duration(1000).EUt(8002).buildAndRegister();
}
//  Теплоустойчивая подкладка
// Шлем
for i, thermalPaddingHelmet in thermalPaddingHelmet {
assembler.recipeBuilder()
   .circuit(5)
   .inputs([thermalCloth[i] * 5])
   .inputs([materialThermal[i] * 2])
   .outputs(thermalPaddingHelmet)
   .duration(500).EUt(2000).buildAndRegister();
}
// Нагрудник
for i, thermalPaddingChest in thermalPaddingChest {
assembler.recipeBuilder()
   .circuit(6)
   .inputs([thermalCloth[i] * 8])
   .inputs([materialThermal[i] * 2])
   .outputs(thermalPaddingChest)
   .duration(500).EUt(2000).buildAndRegister();
}
// Штаны
for i, thermalPaddingLegings in thermalPaddingLegings {
assembler.recipeBuilder()
   .circuit(7)
   .inputs([thermalCloth[i] * 7])
   .inputs([materialThermal[i] * 2])
   .outputs(thermalPaddingLegings)
   .duration(500).EUt(2000).buildAndRegister();
}
// Ботинки
for i, thermalPaddingBoots in thermalPaddingBoots {
assembler.recipeBuilder()
   .circuit(8)
   .inputs([thermalCloth[i] * 4])
   .inputs([materialThermal[i] * 2])
   .outputs(thermalPaddingBoots)
   .duration(500).EUt(2000).buildAndRegister();
}