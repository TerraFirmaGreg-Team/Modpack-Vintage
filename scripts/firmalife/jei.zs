#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.firmalife.Oven;


// --- Удаление рецептов


// Cooked Pizza
Oven.removeRecipe(<firmalife:cooked_pizza>);

// Treated Lumber
Barrel.removeRecipe(<firmalife:treated_lumber>);

// Бафф крафта крыши теплицы
Anvil.removeRecipe(<firmalife:greenhouse_roof> * 2);

// Бафф крафта стен теплицы
Anvil.removeRecipe(<firmalife:greenhouse_wall> * 2);

// Greenhouse Door
Anvil.removeRecipe(<firmalife:greenhouse_door>);
