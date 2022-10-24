# Lazy AE2

import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;
import crafttweaker.item.IItemStack;

print("Initializing 'Lazy AE2'...");


// Удаление рецептов из NEI
var items = [<threng:material:2>, <threng:material:3>, <threng:material:7>, <threng:material:8>, <threng:material:9>, <threng:material:10>, <threng:material:11>, <threng:material:12>, <threng:material:13>, <threng:material:1>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Материалы
// Изменчивая логическая единица
recipes.remove(<threng:material:4>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:9> * 2, <appliedenergistics2:material:24> * 2, <ore:wireFinePlatinum> * 8, <gregtech:meta_item_1:594>)
    .outputs(<threng:material:4>)
    .duration(30 * 20)
    .EUt(768)
    .buildAndRegister();

// Процессоры
// Массивный параллельный процессор
Etcher.removeRecipe(<threng:material:6>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <ore:wireFineRedAlloy> * 2, <ore:wireFinePlatinum> * 2, <ore:wireFineBorosilicateGlass> * 2, <threng:material:5>, <appliedenergistics2:material:9>, <gregtech:meta_item_1:594>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<threng:material:6>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <ore:wireFineRedAlloy> * 2, <ore:wireFinePlatinum> * 2, <ore:wireFineBorosilicateGlass> * 2, <threng:material:5>, <appliedenergistics2:material:9>, <gregtech:meta_item_1:594>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<threng:material:6>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Спекулятивный процессор
Etcher.removeRecipe(<threng:material:14>); 
assembler.recipeBuilder()
    .inputs(<threng:material:6>, <appliedenergistics2:material:24>, <ore:wireFineRedAlloy> * 2, <ore:wireFinePlatinum> * 2, <gregtech:meta_item_1:600>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<threng:material:14>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<threng:material:6>, <appliedenergistics2:material:24>, <ore:wireFineRedAlloy> * 2, <ore:wireFinePlatinum> * 2, <gregtech:meta_item_1:600>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<threng:material:14>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();

// Механизмы
// Изменчивый агрегатор
recipes.remove(<threng:machine>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:988>, <minecraft:hopper> * 3, <threng:material:4>, <appliedenergistics2:material:22> * 2, <ore:plateRedAlloy> * 2, <ore:plateSteel> * 6)
    .outputs(<threng:machine>)
    .duration(25 * 20)
    .EUt(512)
    .buildAndRegister();

// Пульсирующая центриуга
recipes.remove(<threng:machine:1>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:molecular_assembler>, <threng:material> * 4, <threng:material:4>, <appliedenergistics2:material:22> * 2, <threng:material:6>, <ore:plateSteel> * 6)
    .outputs(<threng:machine:1>)
    .duration(25 * 20)
    .EUt(512)
    .buildAndRegister();

// Вытяжная сборочная единица
recipes.remove(<threng:machine:3>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:interface>, <appliedenergistics2:crafting_accelerator> * 2, <threng:material> * 4, <threng:material:4>, <threng:material:14>, <ore:plateSteel> * 6)
    .outputs(<threng:machine:3>)
    .duration(25 * 20)
    .EUt(512)
    .buildAndRegister();

// МЭ поддержатель уровня
recipes.remove(<threng:machine:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:988>, <threng:material> * 4, <threng:material:4>, <appliedenergistics2:material:22> * 2, <appliedenergistics2:material:53>, <appliedenergistics2:part:280>, <ore:plateSteel> * 6)
    .outputs(<threng:machine:4>)
    .duration(25 * 20)
    .EUt(512)
    .buildAndRegister();

// Зарядник кристаллов
recipes.remove(<threng:machine:5>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:charger>, <threng:material> * 4, <threng:material:4>, <appliedenergistics2:part:16> * 2, <ore:plateSteel> * 6)
    .outputs(<threng:machine:5>)
    .duration(25 * 20)
    .EUt(512)
    .buildAndRegister();

// Массивный сборщик
// Рамка массивного сборщика
recipes.remove(<threng:big_assembler>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:989>, <appliedenergistics2:smooth_sky_stone_block> * 4, <threng:material> * 4, <ore:foilAluminium> * 6)
    .outputs(<threng:big_assembler>)
    .duration(20 * 20)
    .EUt(1024)
    .buildAndRegister();

// Выход массивного сборщика
recipes.remove(<threng:big_assembler:1>);
assembler.recipeBuilder()
    .inputs(<threng:big_assembler>, <ore:plateSteel> * 6, <minecraft:iron_bars> * 6)
    .outputs(<threng:big_assembler:1>)
    .duration(15 * 20)
    .EUt(1024)
    .buildAndRegister();

// Контроллер массивного сборщика
recipes.remove(<threng:big_assembler:2>);
assembler.recipeBuilder()
    .inputs(<threng:big_assembler> * 4, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:interface>, <threng:material:4>, <appliedenergistics2:part:16> * 2, <ore:plateTitanium> * 6)
    .outputs(<threng:big_assembler:2>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();

// МС шаблон провайдера
recipes.remove(<threng:big_assembler:3>);
assembler.recipeBuilder()
    .inputs(<threng:big_assembler> * 4, <appliedenergistics2:interface> * 4, <appliedenergistics2:material:24>, <appliedenergistics2:material:35>, <appliedenergistics2:part:16> * 2, <ore:plateSteel> * 6)
    .outputs(<threng:big_assembler:3>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();

// МС крафт-сопроцессор
recipes.remove(<threng:big_assembler:4>);
assembler.recipeBuilder()
    .inputs(<threng:big_assembler> * 4, <appliedenergistics2:molecular_assembler> * 4, <appliedenergistics2:crafting_accelerator>, <threng:material:6>, <appliedenergistics2:part:16> * 2, <ore:plateSteel> * 6)
    .outputs(<threng:big_assembler:4>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();

// МС порт ввода-вывода
recipes.remove(<threng:big_assembler:5>);
assembler.recipeBuilder()
    .inputs(<threng:big_assembler> * 4, <appliedenergistics2:io_port>, <minecraft:chest>, <threng:material:4>, <appliedenergistics2:part:16> * 2, <ore:plateSteel> * 6)
    .outputs(<threng:big_assembler:5>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();


print("Initialized 'Lazy AE2'");