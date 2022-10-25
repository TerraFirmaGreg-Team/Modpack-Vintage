import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Iapetus as IItemStack[] = [
   <extraplanets:iapetus:3>,
   <extraplanets:iapetus:4>,
   <extraplanets:iapetus:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Iapetus {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:iapetus>, <extraplanets:iapetus:1>, <extraplanets:iapetus:2>, <metaitem:dustStoneIapetus>, 5, 5);

// Пыль Япета
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneIapetus> * 3)
   .chancedOutput(<metaitem:dustElectrotine>, 3700, 1200)
   .chancedOutput(<metaitem:dustMagnetite>, 1100, 500)
   .chancedOutput(<metaitem:dustPitchblende>, 1150, 500)
   .chancedOutput(<metaitem:dustTinyVanadium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Лед Япета
macerator.recipeBuilder()
   .inputs(<extraplanets:iapetus:6>)
   .outputs(<metaitem:dustDryIce> * 7)
   .duration(200).EUt(480).buildAndRegister();