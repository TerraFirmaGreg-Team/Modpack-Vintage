#priority 1
# Honeycomb

import mods.forestry.Centrifuge;
import crafttweaker.item.IItemStack;

print("Initializing 'Honeycomb'...");


// Удаление рецептов пчелиных сот из центрифуги Forestry
Centrifuge.removeRecipe(<forestry:bee_combs:*>);
Centrifuge.removeRecipe(<extrabees:honey_comb:*>);

// Новые рецепты в центрифуге
// Соты из Forestry и Extra Bees
// Пирит
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:48>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:51>, 4500, 1000)
    .chancedOutput(<gregtech:meta_dust:306>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Сфалерит
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:51>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:122>, 4500, 1000)
    .chancedOutput(<gregtech:meta_dust:322>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Киноварь
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:50>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:268>, 4500, 1000)
    .chancedOutput(<minecraft:redstone>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Медь
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:17>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:25>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Железо
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:15>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:51>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Олово
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:18>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:112>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Никель
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:73>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:69>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Цинк
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:40>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:122>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Серебро
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:19>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:100>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Золото
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:16>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:41>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Свинец
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:37>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:55>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Платина
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:45>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:80>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Радиоактивный
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:21>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:117>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Облученный
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:9>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:116>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Вольфрам
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:42>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:115>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Титан
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:41>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:113>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Изумруд
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:52>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:278>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Рубин
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:53>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:311>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Сапфир
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:54>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:314>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Алмаз
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:56>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:276>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Лазурит
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:46>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:2007>, 4500, 1000)
    .chancedOutput(<gregtech:meta_dust:289>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Окаменевший
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:4>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:271>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Мерцающий
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:82>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:416>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Цертусовый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:81>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:214>, 4500, 1000)
    .chancedOutput(<gregtech:meta_dust:339>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Серная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:27>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:103>, 4500, 1000)
    .chancedOutput(<extrabees:honey_drop:1>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Теневая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:36>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:297>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Неустойчивая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:76>)
    .chancedOutput(<forestry:honey_drop>, 3500, 1000)
    .chancedOutput(<forestry:beeswax>, 3500, 1000)
    .chancedOutput(<gregtech:meta_dust:313>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Медовые
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:0>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Кипящие
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:2>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:refractory_wax>, 8500, 1000)
    .chancedOutput(<forestry:phosphor>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Вязкие 
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:3>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:propolis>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Морозные
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:4>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:pollen:1>, 2500, 1000)
    .chancedOutput(<minecraft:snowball>, 2500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Капающие
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:5>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:honeydew>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Шелковистые
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:6>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:propolis:3>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Пересохшие
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:7>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Замшелые
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:15>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Спелые
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:16>)
    .chancedOutput(<forestry:honeydew>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:quartz>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Пшеничные
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:14>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<tfc:food/wheat>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Рыхлые
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:10>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:gunpowder>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Какао
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:1>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:dye:3>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Таинственные
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:8>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:propolis:2>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Бесплодная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:0>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Гнилая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:1>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:rotten_flesh>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Костяная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:2>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:dye:15>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Масляная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:3>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:propolis:1>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Сырая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:6>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:propolis>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Молочная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:7>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:6>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Фруктовая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:8>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:3>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Наполненая семенами
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:9>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:7>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Алкогольная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:10>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:8>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Скалистая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:11>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Энергетическая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:12>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:redstone>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Статическая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:14>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop>, 3500, 1000)
    .chancedOutput(<minecraft:redstone>, 4500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Глиняная 
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:22>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:clay_ball>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Старая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:23>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Грибковая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:24>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<tfc:plants/porcini>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Смолянистая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:25>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:propolis:7>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ядовитая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:28>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:2>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Слизистая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:29>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:slime_ball>, 3500, 1000)
    .chancedOutput(<forestry:propolis:1>, 3500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Полыхающая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:30>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:blaze_powder>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ледниковая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:32>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:5>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Красная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:57>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:13>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Желтая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:58>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:14>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Синяя
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:59>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:15>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Зеленая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:60>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:16>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Черная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:61>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:17>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Белая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:62>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:18>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Коричневая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:63>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:19>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Оранжевая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:64>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:20>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Голубой
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:65>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:21>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Пурпурная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:66>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:22>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Серая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:67>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:23>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Светло-синяя
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:68>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:24>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Розовая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:69>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:25>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Лаймовая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:70>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:26>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Фуксия
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:71>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:27>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Светло-серая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:72>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<extrabees:honey_drop:28>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Светящаяся
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:75>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<minecraft:glowstone_dust>, 7500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Разлагающаяся
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:79>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<forestry:fertilizer_bio>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Кофейная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:31>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<ca:coffee_cherries>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Латексовая
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_comb:26>)
    .chancedOutput(<forestry:honey_drop>, 8500, 1000)
    .chancedOutput(<forestry:beeswax>, 8500, 1000)
    .chancedOutput(<gregtech:meta_item_1:438>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Капли меда и прочее из Forestry и Extra Bees
// Ореховая капля -> Растительное масло
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:7>)
    .fluidOutputs([<liquid:seed.oil> * 200])
    .chancedOutput(<forestry:mulch>, 1000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ледяная капля -> Молотый лед
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:5>)
    .fluidOutputs([<liquid:ice> * 200])
    .chancedOutput(<forestry:crafting_material:5>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Сочная
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:3>)
    .fluidOutputs([<liquid:juice> * 200])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Молоко
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:6>)
    .fluidOutputs([<liquid:milk> * 200])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Алкоголь
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:8>)
    .fluidOutputs([<liquid:short.mead> * 200])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Красный
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:13>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:435>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Желтый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:14>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:425>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Синий
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:15>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:432>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Зеленый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:16>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:434>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Черный
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:17>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:436>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Белый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:18>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:421>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Коричневый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:19>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:433>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Оранжевый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:20>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:422>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Голубой
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:21>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:430>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Пурпурный
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:22>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:431>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Серый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:23>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:428>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Светло синий
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:24>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:424>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Розовый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:25>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:427>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Лаймовый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:26>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:426>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Малиновый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:27>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<gregtech:meta_item_1:423>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Светло-серый
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:28>)
    .fluidOutputs([<liquid:for.honey> * 200])
    .chancedOutput(<minecraft:dye:7>, 9000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Медвяная роса
centrifuge.recipeBuilder()
    .inputs(<forestry:honeydew>)
    .fluidOutputs([<liquid:for.honey> * 100])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Капля меда
centrifuge.recipeBuilder()
    .inputs(<forestry:honey_drop>)
    .fluidOutputs([<liquid:for.honey> * 100])
    .chancedOutput(<forestry:propolis>, 1000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Кислотная капля -> Серная кислота
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:1>)
    .fluidOutputs([<liquid:sulfuric_acid> * 200])
    .chancedOutput(<gregtech:meta_dust:103>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Энергетическая капля -> Дестабилизированный красный камень
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop>)
    .fluidOutputs([<liquid:redstone> * 200])
    .chancedOutput(<minecraft:redstone>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ядовитая капля -> Радон
centrifuge.recipeBuilder()
    .inputs(<extrabees:honey_drop:2>)
    .fluidOutputs([<liquid:radon> * 200])
    .duration(240 * 20)
    .EUt(512)
    .buildAndRegister();

// Водянистый прополис
centrifuge.recipeBuilder()
    .inputs(<extrabees:propolis>)
    .fluidOutputs([<liquid:water> * 500])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Маслянистый прополис
centrifuge.recipeBuilder()
    .inputs(<extrabees:propolis:1>)
    .fluidOutputs([<liquid:oil> * 500])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Креозотовый прополис
centrifuge.recipeBuilder()
    .inputs(<extrabees:propolis:7>)
    .fluidOutputs([<liquid:creosote> * 500])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Прополис
centrifuge.recipeBuilder()
    .inputs(<forestry:propolis>)
    .fluidOutputs([<liquid:glue> * 200])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Липкий прополис
centrifuge.recipeBuilder()
    .inputs(<forestry:propolis:1>)
    .fluidOutputs([<liquid:glue> * 500])
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Шелковистый прополис
centrifuge.recipeBuilder()
    .inputs(<forestry:propolis:3>)
    .chancedOutput(<forestry:crafting_material:2>, 6000, 1000)
    .chancedOutput(<forestry:propolis>, 1000, 500)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();


print("Initialized 'Honeycomb'");