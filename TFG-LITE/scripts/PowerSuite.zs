import mods.inworldcrafting.FluidToItem;
import crafttweaker.item.IItemStack;

// Удаление рецептов
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
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// Шлем
starforge.recipeBuilder()
      .inputs(<metaitem:qts.helmet>)
      .fluidInputs([<liquid:fresh_water> * 1000])
      .outputs(<powersuits:powerarmor_head>)
      .duration(20000)
      .EUt(122880)
      .buildAndRegister();
// Кираса
starforge.recipeBuilder()
    .inputs(<metaitem:qts.advanced_chestplate>, <galaxyspace:space_suit_chest:200>, <galacticraftplanets:orion_drive> * 2)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<powersuits:powerarmor_torso>)
    .duration(28000)
    .EUt(8700)
    .buildAndRegister();

// Поножи
starforge.recipeBuilder()
    .inputs(<metaitem:qts.leggings>, <galaxyspace:space_suit_legs:200>, <galacticraftplanets:orion_drive> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<powersuits:powerarmor_legs>)
    .duration(28000)
    .EUt(8700)
    .buildAndRegister();

// Ботинки
starforge.recipeBuilder()
    .inputs(<metaitem:qts.boots>, <galaxyspace:space_suit_feet:200>, <galacticraftplanets:orion_drive> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<powersuits:powerarmor_feet>)
    .duration(28000)
    .EUt(8700)
    .buildAndRegister();

// Рука
starforge.recipeBuilder()
    .inputs(<metaitem:tool.drill.iv>, <galaxyspace:space_suit_feet:200>, <galacticraftplanets:orion_drive> * 4, <metaitem:nano_saber>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<powersuits:power_fist>)
    .duration(28000)
    .EUt(8700)
    .buildAndRegister();
