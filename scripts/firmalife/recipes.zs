import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

import mods.firmalife.Oven;
import mods.firmalife.Drying;


// --- Добавление рецептов


// Удобрение
Drying.addRecipe("firmalife/fertilizer", <tfc:wood_ash>, <tfc:powder/fertilizer>, 8000);

// Высушивание соли
Drying.addRecipe("firmalife/salt", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "salt_water", Amount: 1000}}), <tfg:meta_item:51>, 24000);

// Greenhouse Door
Anvil.addRecipe("firmalife/greenhouse_door", <metaitem:plateWroughtIron>, <firmalife:greenhouse_door> * 4, 3, "general", "HIT_NOT_LAST", "HIT_NOT_LAST", "PUNCH_LAST");

// Бафф крафта стен теплицы
Anvil.addRecipe("firmalife/greenhouse_wall", <metaitem:plateWroughtIron>, <firmalife:greenhouse_wall> * 4, 3, "general", "HIT_NOT_LAST", "PUNCH_NOT_LAST", "SHRINK_LAST");

// Бафф крафта крыши теплицы
Anvil.addRecipe("firmalife/greenhouse_roof", <metaitem:plateWroughtIron>, <firmalife:greenhouse_roof> * 4, 3, "general", "HIT_THIRD_LAST", "PUNCH_SECOND_LAST", "PUNCH_LAST");

// Treated Lumber
Barrel.addRecipe("firmalife/treated_lumber", <ore:lumber>, <liquid:olive_oil> * 500, <firmalife:treated_lumber>, 8);
