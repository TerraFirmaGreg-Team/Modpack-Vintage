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
val materialSpace as IOreDictEntry[] = [
   <ore:plateDenseTitanium>,
   <ore:plateDenseTungstenSteel>,
   <ore:plateDenseRhodiumPlatedPalladium>,
   <ore:plateDenseNaquadahAlloy>
];

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("extraplanets");

// --- Добавление рецептов

// Размеры ракет
ItemRegistry.registerItemSize(<extraplanets:item_tier4_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier5_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier6_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier7_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier8_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier9_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier10_rocket:*>, "HUGE", "VERY_HEAVY");
ItemRegistry.registerItemSize(<extraplanets:item_tier10_electric_rocket:*>, "HUGE", "VERY_HEAVY");

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .inputs(<galacticraftcore:landing_pad> * 3, <ore:plateDenseTitanium> * 6)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad> * 5)
   .duration(300).EUt(1000).buildAndRegister();

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad> * 3, <ore:plateDenseTungstenSteel> * 18, <ore:plateLead> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:1> * 5)
   .duration(1000).EUt(5208).buildAndRegister();

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad:1> * 3, <ore:plateDensePlatinum> * 9 , <ore:plateLead> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:3> * 5)
   .duration(1000).EUt(30038).buildAndRegister();

// Прочная ткань
implosion_compressor.recipeBuilder()
	.inputs(<ore:wool> * 4)
	.outputs(<extraplanets:cloth>)
	.property("explosives", <minecraft:tnt> * 12)
	.duration(20).EUt(380).buildAndRegister();

// Защитные пластины
// T1
implosion_compressor.recipeBuilder()
	.inputs(<ore:plateDenseTitanium> * 4)
	.outputs(<extraplanets:tier1_armor_layer>)
	.property("explosives", <minecraft:tnt> * 12)
	.duration(20).EUt(2280).buildAndRegister();
// T2
implosion_compressor.recipeBuilder()
	.inputs(<ore:plateDenseTungstenSteel> * 8)
	.outputs(<extraplanets:tier2_armor_layer>)
	.property("explosives", <minecraft:tnt> * 24)
	.duration(20).EUt(8680).buildAndRegister();
// T3
implosion_compressor.recipeBuilder()
	.inputs(<ore:plateDenseRhodiumPlatedPalladium> * 16)
	.outputs(<extraplanets:tier3_armor_layer>)
	.property("explosives", <minecraft:tnt> * 36)
	.duration(20).EUt(38480).buildAndRegister();
// T4
implosion_compressor.recipeBuilder()
	.inputs(<ore:plateDenseNaquadahAlloy> * 32)
	.outputs(<extraplanets:tier4_armor_layer>)
	.property("explosives", <minecraft:tnt> * 48)
	.duration(20).EUt(139480).buildAndRegister();

// Антирадиоционные пластины
// T1
assembler.recipeBuilder()
   .circuit(1)
   .inputs(<ore:plateDoubleLead> * 6, <extraplanets:cloth> * 4)
   .outputs(<extraplanets:tier1_radiation_layer>)
   .duration(1000).EUt(2280).buildAndRegister();
// T2
assembler.recipeBuilder()
   .circuit(2)
   .inputs(<ore:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier1_radiation_layer>)
   .outputs(<extraplanets:tier2_radiation_layer>)
   .duration(1000).EUt(8680).buildAndRegister();
// T3
assembler.recipeBuilder()
   .circuit(3)
   .inputs(<ore:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier2_radiation_layer>)
   .outputs(<extraplanets:tier3_radiation_layer>)
   .duration(1000).EUt(38480).buildAndRegister();
// T4
assembler.recipeBuilder()
   .circuit(4)
   .inputs(<ore:plateDoubleLead> * 6, <extraplanets:cloth> * 4, <extraplanets:tier3_radiation_layer>)
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
// Заготовки под скафандры
// Шлем
for i, unSpaceSuitHelmet in unSpaceSuitHelmet {
assembler.recipeBuilder()
   .circuit(1)
   .inputs([materialSpace[i] * 5])
   .outputs(unSpaceSuitHelmet)
   .duration(500).EUt(2000).buildAndRegister();
}
// Нагрудник
for i, unSpaceSuitChest in unSpaceSuitChest {
assembler.recipeBuilder()
   .circuit(2)
   .inputs([materialSpace[i] * 8])
   .outputs(unSpaceSuitChest)
   .duration(500).EUt(2000).buildAndRegister();
}
// Штаны
for i, unSpaceSuitLegings in unSpaceSuitLegings {
assembler.recipeBuilder()
   .circuit(3)
   .inputs([materialSpace[i] * 7])
   .outputs(unSpaceSuitLegings)
   .duration(500).EUt(2000).buildAndRegister();
}
// Ботинки
for i, unSpaceSuitBoots in unSpaceSuitBoots {
assembler.recipeBuilder()
   .circuit(4)
   .inputs([materialSpace[i] * 4])
   .outputs(unSpaceSuitBoots)
   .duration(500).EUt(2000).buildAndRegister();
}
// Скафандры
// Шлем
for i, spaceSuitHelmet in spaceSuitHelmet {
assembler.recipeBuilder()
   .circuit(1)
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
   .circuit(2)
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
   .circuit(3)
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
   .circuit(4)
   .inputs([armorLayer[i] * 2])
   .inputs([radiationLayer[i] * 3])
   .inputs([pressureLayer[i] * 3])
   .inputs([unSpaceSuitBoots[i]])
   .outputs(spaceSuitBoots)
   .duration(1000).EUt(8002).buildAndRegister();
}