import crafttweaker.item.IItemStack;

import mods.horsepower.Grindstone;
import mods.horsepower.ChoppingBlock;


// --- Добавление рецептов

// Дерево -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
    ChoppingBlock.add(TFC_Logs[i], TFC_Lumber * 10, 2, false);
}

// Другие рецепты
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 3, 5, false);
