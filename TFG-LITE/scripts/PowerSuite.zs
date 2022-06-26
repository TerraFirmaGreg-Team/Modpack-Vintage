import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveWorkbenchRecipes as IItemStack[] = [
	<powersuits:power_fist>,
	<powersuits:powerarmor_feet>,
	<powersuits:powerarmor_head>,
	<powersuits:powerarmor_legs>,
	<powersuits:powerarmor_torso>,
	<powersuits:powerarmorcomponent>,
	<powersuits:luxcapacitor>,
	<powersuits:powerarmorcomponent:1>,
	<powersuits:powerarmorcomponent:2>,
	<powersuits:powerarmorcomponent:3>,
	<powersuits:powerarmorcomponent:4>,
	<powersuits:powerarmorcomponent:5>,
	<powersuits:powerarmorcomponent:6>,
	<powersuits:powerarmorcomponent:7>,
	<powersuits:powerarmorcomponent:8>,
	<powersuits:powerarmorcomponent:9>,
	<powersuits:powerarmorcomponent:10>,
	<powersuits:powerarmorcomponent:11>,
	<powersuits:powerarmorcomponent:12>,
	<powersuits:powerarmorcomponent:13>,
	<powersuits:powerarmorcomponent:14>,
	<powersuits:powerarmorcomponent:15>,
	<powersuits:powerarmorcomponent:16>,
	<powersuits:powerarmorcomponent:17>,
	<powersuits:powerarmorcomponent:18>,
	<powersuits:powerarmorcomponent:19>,
	<powersuits:powerarmorcomponent:20>,
	<powersuits:powerarmorcomponent:21>,
	<powersuits:tinkertable>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Добавление рецептов

// Шлем
star_forge.recipeBuilder()
	.inputs(<metaitem:qts.helmet>, <extraplanets:tier4_space_suit_helmet:100>, <galacticraftplanets:orion_drive> * 2, <ore:circuitZpm> * 4)
	.fluidInputs([<liquid:molten.hastelloy_c_276> * 18000])
	.outputs(<powersuits:powerarmor_head>)
	.duration(20000).EUt(122880).buildAndRegister();
// Кираса
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.advanced_chestplate>, <extraplanets:tier4_space_suit_chest:100>, <galacticraftplanets:orion_drive> * 4, <ore:circuitZpm> * 6)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 42000])
    .outputs(<powersuits:powerarmor_torso>)
    .duration(28000).EUt(122880).buildAndRegister();

// Поножи
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.leggings>, <extraplanets:tier4_space_suit_legings:100>, <galacticraftplanets:orion_drive> * 8, <ore:circuitZpm> * 6)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 20000])
    .outputs(<powersuits:powerarmor_legs>)
    .duration(19000).EUt(122880).buildAndRegister();

// Ботинки
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.boots>, <extraplanets:tier4_space_suit_boots:100>, <galacticraftplanets:orion_drive> * 4, <ore:circuitZpm> * 4)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 16000])
    .outputs(<powersuits:powerarmor_feet>)
    .duration(28000).EUt(122880).buildAndRegister();

// Рука
star_forge.recipeBuilder()
    .inputs(<metaitem:tool.drill.iv>, <galacticraftplanets:orion_drive> * 4, <metaitem:nano_saber>, <metaitem:tool.chainsaw.hv>, <metaitem:tool.wrench.hv>)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 8000])
    .outputs(<powersuits:power_fist>)
    .duration(28000).EUt(122880).buildAndRegister();
