import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Удаление рецептов + скрытие
global ItemsToRemoveGSJEI as IItemStack[] = [
	<galaxyspace:ingots>,
    <galaxyspace:ingots:1>,
    <galaxyspace:ingots:2>,
    <galaxyspace:compressed_plates>,
    <galaxyspace:compressed_plates:1>,
    <galaxyspace:compressed_plates:2>,
    <galaxyspace:compressed_plates:3>,
    <galaxyspace:marsores:2>,
    <galaxyspace:marsores:2>,
    <galaxyspace:marsores:3>,
    <galaxyspace:marsores:4>,
    <galaxyspace:titanblocks:6>,
    <galaxyspace:titanblocks:3>,
    <galaxyspace:titanblocks:4>,
    <galaxyspace:titanblocks:5>,
    <galaxyspace:gsores>,
    <galaxyspace:gsores:1>,
    <galaxyspace:gsores:2>,
    <galaxyspace:mirandablocks:5>,
    <galaxyspace:titanblocks:8>,
    <galaxyspace:ioblocks:3>,
    <galaxyspace:ioblocks:4>,
    <galaxyspace:ioblocks:5>,
    <galaxyspace:mercuryblocks:3>,
    <galaxyspace:mercuryblocks:4>,
    <galaxyspace:mercuryblocks:5>,
    <galaxyspace:mirandablocks:6>,
    <galaxyspace:titanblocks:7>,
    <galaxyspace:haumeablocks:3>,
    <galaxyspace:europablocks:3>,
    <galaxyspace:europablocks:4>,
    <galaxyspace:marsores>,
    <galaxyspace:marsores:1>,
    <galaxyspace:marsores:2>,
    <galaxyspace:marsores:5>,
    <galaxyspace:mirandablocks:7>,
    <galaxyspace:titanblocks:7>,
    <galaxyspace:ganymedeblocks:2>,
    <galaxyspace:ganymedeblocks:3>,
    <galaxyspace:europablocks:5>
] as IItemStack[];
for item in ItemsToRemoveGSJEI{
    mods.jei.JEI.removeAndHide(item);
}

/*
#########ADD##########
mods.galaxyspace.addAssemblyRecipe(output, inputs...);
mods.galaxyspace.addFuelGeneratorRecipe(luqidstack, burn_time, mod_energy);
mods.galaxyspace.addHydroponicFarmRecipe(seed, product, (Nullable) secondproduct, (0-100) secondchance, stages, block, (boolean) product_rand, (boolean) secproduct_rand);
mods.galaxyspace.addLiquidExtractorRecipe(block, liquid);
mods.galaxyspace.addRecyclerRecipe(input, output, (Nullable) liquid, (0-100) chance);
mods.galaxyspace.addRocketAssemblyRecipe(output, inputs...);
#########REMOVE########
mods.galaxyspace.removeAssemblyRecipe(output);
mods.galaxyspace.removeFuelGeneratorRecipe(liquid);
mods.galaxyspace.removeHydroponicFarmRecipe(seed);
mods.galaxyspace.removeRecyclerRecipe(result);
mods.galaxyspace.removeRocketAssemblyRecipe(result);
*/