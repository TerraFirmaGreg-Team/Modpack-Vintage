# FoodRegistration

import mods.terrafirmacraft.ItemRegistry;
import crafttweaker.item.IItemStack;

print("Initializing 'FoodRegistration'...");

// ItemRegistry.registerFood(IIngredient input, int hunger, float water, float saturation, float decay, float grain, float veg, float fruit, float meat, float dairy);
// ItemRegistry.registerFood(Еда (название), Восстановление голода (макс 20 ед), Восстановление воды, Питательность, Скорость гниения, Восстановление зерновых, Восстановление овощных, Восстановление фруктовых, Восстановление белка, Восстановление молочных);


// Регистрация еды из форестри
// Бутерброд с медом
ItemRegistry.registerFood(<forestry:honeyed_slice>, 7, 0.0, 4.5, 0.45, 1.5, 0.0, 0.6, 0.0, 0.0);
// Горшочек меда
ItemRegistry.registerFood(<forestry:honey_pot>, 7, 0.0, 5.0, 0.1, 0.0, 0.0, 1.0, 0.0, 0.0);
// Амброзия
ItemRegistry.registerFood(<forestry:ambrosia>, 8, 0.0, 5.0, 0.2, 0.0, 0.0, 1.0, 0.3, 0.0);
// Папайя
ItemRegistry.registerFood(<forestry:fruits:6>, 2, 15.0, 1.0, 0.7, 0.0, 0.0, 1.5, 0.0, 0.0);
// Каштан 
ItemRegistry.registerFood(<forestry:fruits:2>, 2, 0.0, 2.0, 0.35, 0.1, 0.1, 0.0, 0.0, 0.0);


// Регистрация еды из майнкрафта
// Сырая треска
ItemRegistry.registerFood(<minecraft:fish>, 2, 0.0, 1.0, 3.0, 0.0, 0.0, 0.0, 1.0, 0.0);
// Сырой лосось
ItemRegistry.registerFood(<minecraft:fish:1>, 2, 0.0, 2.0, 3.0, 0.0, 0.0, 0.0, 1.5, 0.0);
// Рыба-клоун
ItemRegistry.registerFood(<minecraft:fish:2>, 2, 0.0, 3.0, 3.0, 0.0, 0.0, 0.0, 1.2, 0.0);
// Иглобрюх
ItemRegistry.registerFood(<minecraft:fish:3>, 1, 0.0, 1.0, 3.0, 0.0, 0.0, 0.0, 0.5, 0.0);
// Жареная треска
ItemRegistry.registerFood(<minecraft:cooked_fish>, 4, 0.0, 1.5, 2.5, 0.0, 0.0, 0.0, 2.0, 0.0);
// Жареный лосось
ItemRegistry.registerFood(<minecraft:cooked_fish:1>, 4, 0.0, 2.5, 2.5, 0.0, 0.0, 0.0, 2.5, 0.0);
// Арбуз
ItemRegistry.registerFood(<minecraft:melon>, 1, 12.0, 0.0, 3.0, 0.0, 0.0, 0.5, 0.0, 0.0);
// Тыквенный пирог
ItemRegistry.registerFood(<minecraft:pumpkin_pie>, 6, 0.0, 3.5, 3.0, 1.0, 1.0, 0.0, 0.0, 0.2);
// Золотое яблоко
ItemRegistry.registerFood(<minecraft:golden_apple>, 4, 0.0, 4.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0);
// Золотое зачарованное яблоко
ItemRegistry.registerFood(<minecraft:golden_apple:1>, 10, 0.0, 8.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0);
// Золотая морковь
ItemRegistry.registerFood(<minecraft:golden_carrot>, 4, 0.0, 2.2, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0);
// Печеный картофель
ItemRegistry.registerFood(<minecraft:baked_potato>, 5, 0.0, 2.7, 1.2, 0.0, 2.0, 0.0, 0.0, 0.0);
// Тушеные грибы
ItemRegistry.registerFood(<minecraft:mushroom_stew>, 4, 0.0, 3.0, 0.7, 0.0, 0.2, 0.0, 1.0, 0.1);
// Плод хоруса
ItemRegistry.registerFood(<minecraft:chorus_fruit>, 4, 0.0, 1.0, 0.9, 0.0, 0.0, 0.5, 0.0, 0.0);
// Печенье
ItemRegistry.registerFood(<minecraft:cookie>, 1, 0.0, 0.5, 0.2, 0.2, 0.0, 0.0, 0.0, 0.0);


print("Initialized 'FoodRegistration'");