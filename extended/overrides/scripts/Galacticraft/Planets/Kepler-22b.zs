import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Kepler22b as IItemStack[] = [
	<extraplanets:kepler22b:2>,
	<extraplanets:kepler22b:3>,
	<extraplanets:kepler22b:4>,
	<extraplanets:kepler22b:5>,
	<extraplanets:kepler22b:6>,
	<extraplanets:kepler22b:7>,
	<extraplanets:kepler22b:8>,
	<extraplanets:kepler22b:9>,
	<extraplanets:kepler22b:10>,
	<extraplanets:kepler22b:13>,
	<extraplanets:kepler22b:14>,
	<extraplanets:kepler22b_maple_saplings:*>,
	<extraplanets:kepler22b_flowers:*>,
];

// --- Удаление рецептов

// Удаление рецептов
for item in Kepler22b {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы