import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Titania as IItemStack[] = [
	<extraplanets:titania:3>,
	<extraplanets:titania:4>,
	<extraplanets:titania:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Titania {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы