// --- Removing Recipes

mods.jei.JEI.removeAndHide(<portality:module_energy:1>);
mods.jei.JEI.removeAndHide(<portality:module_fluids:1>);
mods.jei.JEI.removeAndHide(<portality:module_items:1>);
mods.jei.JEI.removeAndHide(<portality:module_fluids>);
mods.jei.JEI.removeAndHide(<portality:module_items>);
mods.jei.JEI.removeAndHide(<portality:module_energy>);

recipes.remove(<portality:controller>);
recipes.remove(<portality:frame>);
recipes.remove(<portality:module_interdimensional>);


// --- Adding Recipes

// Контроллер
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <ore:boltDiamond> * 12, <ore:blockQuartzite> * 1, <ore:circuitElite> * 1, <metaitem:sensor.ev> * 12)
	.outputs(<portality:controller>)
	.duration(960)
	.EUt(912)
	.buildAndRegister();
// Структурный блок
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 8, <ore:plateNeodymium> * 4, <metaitem:sensor.ev> * 8)
	.outputs(<portality:frame>)
	.duration(490)
	.EUt(650)
	.buildAndRegister();
// Меж-мировой модуль
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <gregtech:meta_item_1:148> * 4, <appliedenergistics2:material:47>, <ore:blockQuartzite> * 1, <metaitem:sensor.ev> * 8)
	.outputs(<portality:module_interdimensional>)
	.duration(1620)
	.EUt(1900)
	.buildAndRegister();	
