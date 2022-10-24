#priority 1
# Applied Energistics 2

import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;
import crafttweaker.item.IItemStack;

print("Initializing 'Applied Energistics 2'...");


// Удаление рецептов из NEI
var items = [<appliedenergistics2:certus_quartz_spade>, <appliedenergistics2:certus_quartz_axe>, <appliedenergistics2:certus_quartz_hoe>, <appliedenergistics2:certus_quartz_sword>, <appliedenergistics2:nether_quartz_pickaxe>, <appliedenergistics2:nether_quartz_spade>, <appliedenergistics2:nether_quartz_axe>, <appliedenergistics2:nether_quartz_hoe>, <appliedenergistics2:nether_quartz_sword>, <appliedenergistics2:certus_quartz_pickaxe>, <appliedenergistics2:inscriber>, <appliedenergistics2:entropy_manipulator>, <appliedenergistics2:charged_staff>, <appliedenergistics2:color_applicator>, <threng:machine:2>, <appliedenergistics2:material:40>, <appliedenergistics2:material:5>, <appliedenergistics2:view_cell>, <appliedenergistics2:material:32>, <appliedenergistics2:material:33>, <appliedenergistics2:material:34>, <appliedenergistics2:material:46>, <appliedenergistics2:material:51>, <appliedenergistics2:material:49>, <appliedenergistics2:material:3>, <appliedenergistics2:part:300>, <appliedenergistics2:part:320>, <appliedenergistics2:part:301>, <appliedenergistics2:part:221>, <appliedenergistics2:part:222>, <appliedenergistics2:part:470>, <appliedenergistics2:part:220>, <appliedenergistics2:part:302>, <appliedenergistics2:part:321>, <appliedenergistics2:material:4>, <appliedenergistics2:part:467>, <appliedenergistics2:part:462>, <appliedenergistics2:part:463>, <appliedenergistics2:part:469>, <appliedenergistics2:part:461>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Материалы
// Небесный камень
assembler.recipeBuilder()
    .inputs(<tfc:raw/basalt> * 8, <ore:dustEnderPearl> * 2)
    .fluidInputs([<liquid:phosphoric_acid> * 1000])
    .outputs(<appliedenergistics2:sky_stone_block> * 8)
    .duration(35 * 20)
    .EUt(30)
    .buildAndRegister();

// Обжарка небесного камня
furnace.addRecipe(<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:sky_stone_block>);

// Кристалл истинного кварца
chemical_reactor.recipeBuilder()
    .inputs(<gregtech:meta_gem:214>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<appliedenergistics2:material>)
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Чистый кристалл истинного кварца
chemical_reactor.recipeBuilder()
    .inputs(<appliedenergistics2:material>, <ore:dustSodium>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<appliedenergistics2:material:10> * 2)
    .duration(30 * 20)
    .EUt(64)
    .buildAndRegister();

// Заряженный кристалл истинного кварца
mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material>, <minecraft:redstone>)
    .fluidInputs([<liquid:water> * 200])
    .outputs(<appliedenergistics2:material:1>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Изменчивый кристалл
mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <ore:dustNetherQuartz>, <minecraft:redstone>)
    .fluidInputs([<liquid:water> * 200])
    .outputs(<appliedenergistics2:material:7> * 2)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Чистый изменчивый кристалл
chemical_reactor.recipeBuilder()
    .inputs(<appliedenergistics2:material:7>, <ore:dustSodium>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<appliedenergistics2:material:12> * 2)
    .duration(30 * 20)
    .EUt(64)
    .buildAndRegister();

// Чистый кристалл кварца нижнего мира
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:quartz>, <ore:dustSodium>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<appliedenergistics2:material:11> * 2)
    .duration(30 * 20)
    .EUt(64)
    .buildAndRegister();

// Изменчивая жемчужина
recipes.remove(<appliedenergistics2:material:9>);
electric_blast_furnace.recipeBuilder()
    .inputs(<appliedenergistics2:material:8> * 8, <minecraft:ender_pearl>)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<appliedenergistics2:material:9>)
    .property("temperature", 1500)
    .duration(60 * 20)
    .EUt(120)
    .buildAndRegister();

// Ядро формирования
recipes.remove(<appliedenergistics2:material:43>); 
assembler.recipeBuilder()
    .inputs(<ore:foilCopper> * 2, <ore:foilGold> * 2, <appliedenergistics2:material:22>, <appliedenergistics2:material>, <appliedenergistics2:material:8>, <ore:plateTin>)
    .outputs(<appliedenergistics2:material:43>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

// Ядро истребления
recipes.remove(<appliedenergistics2:material:44>); 
assembler.recipeBuilder()
    .inputs(<ore:foilAluminium> * 2, <ore:foilGold> * 2, <appliedenergistics2:material:22>, <ore:gemNetherQuartz>, <appliedenergistics2:material:8>, <ore:plateTin>)
    .outputs(<appliedenergistics2:material:44>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

// Процессоры
// Отпечатанный вычислительный контур
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 
bender.recipeBuilder()
    .inputs(<ore:plateCertusQuartz>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:16>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный инженерный контур
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
bender.recipeBuilder()
    .inputs(<ore:plateDiamond>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:17>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный логический контур
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 
bender.recipeBuilder()
    .inputs(<ore:plateGold>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:18>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный кремний
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
bender.recipeBuilder()
    .inputs(<ore:plateSilicon>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:20>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Логический процессор
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 
Etcher.removeRecipe(<appliedenergistics2:material:22>); 
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFineCopper> * 4, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:22>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFineCopper> * 4, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:22>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

// Вычислительный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 
Etcher.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFineGold> * 4, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:23>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFineGold> * 4, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:23>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Инженерный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 
Etcher.removeRecipe(<appliedenergistics2:material:24>); 
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFinePlatinum> * 4, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:24>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 4, <ore:wireFinePlatinum> * 4, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:24>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

// Компоненты хранения
// 1К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
    .inputs(<ore:crystalCertusQuartz> * 4, <ore:plateRedAlloy> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:35>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:crystalCertusQuartz> * 4, <ore:plateRedAlloy> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:35>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:35> * 4, <ore:plateRedAlloy> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:36>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:35> * 4, <ore:plateRedAlloy> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:36>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36> * 4, <ore:plateGlowstone> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:37>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36> * 4, <ore:plateGlowstone> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:37>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:37> * 4, <ore:plateGlowstone> * 4, <appliedenergistics2:material:24>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:38>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:37> * 4, <ore:plateGlowstone> * 4, <appliedenergistics2:material:24>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:38>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 1К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:10> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:54>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:10> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:54>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:54> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:55>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:54> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:55>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:55> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:56>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:55> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:23>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:56>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:56> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:24>, <ore:plateGlass>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:57>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:56> * 4, <ore:plateLapis> * 4, <appliedenergistics2:material:24>, <ore:plateGlass>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:57>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Терминалы
// Осветительная панель
recipes.remove(<appliedenergistics2:part:180>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 4, <ore:plateIron>, <ore:plateRedAlloy>, <ore:plateGlowstone>, <ore:plateGlass>)
    .outputs(<appliedenergistics2:part:180>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ монитор хранения
recipes.remove(<appliedenergistics2:part:400>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:part:280>, <ore:wireGtSingleRedAlloy>)
    .outputs(<appliedenergistics2:part:400>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();
    
// МЭ монитор преобразования
recipes.remove(<appliedenergistics2:part:420>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:400>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <ore:wireGtSingleCopper> * 2)
    .outputs(<appliedenergistics2:part:420>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал
recipes.remove(<appliedenergistics2:part:380>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:material:22>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <ore:wireGtSingleCopper> * 4)
    .outputs(<appliedenergistics2:part:380>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал крафта
recipes.remove(<appliedenergistics2:part:360>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:380>, <appliedenergistics2:material:23>, <appliedenergistics2:material:53>, <ore:wireGtSingleCopper> * 2)
    .outputs(<appliedenergistics2:part:360>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал интерфейсов
recipes.remove(<appliedenergistics2:part:480>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:material:24>, <appliedenergistics2:interface>, <ore:wireGtSingleGold> * 2)
    .outputs(<appliedenergistics2:part:480>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал шаблонов
recipes.remove(<appliedenergistics2:part:340>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:360>, <appliedenergistics2:material:24>, <ore:wireGtSingleGold>)
    .outputs(<appliedenergistics2:part:340>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ жидкостный терминал интерфейсов 
recipes.remove(<appliedenergistics2:part:520>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:380>, <appliedenergistics2:part:420>, <appliedenergistics2:material:22>, <ore:plateLapis>, <ore:wireGtSingleCopper> * 4)
    .outputs(<appliedenergistics2:part:520>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// Беспроводной терминал
recipes.remove(<appliedenergistics2:wireless_terminal>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>, <appliedenergistics2:part:16> * 2, <ore:wireGtSingleGold> * 2, <ore:plateTin> * 2)
    .outputs(<appliedenergistics2:wireless_terminal>)
    .duration(20 * 20)
    .EUt(1024)
    .buildAndRegister();

// Кабели
// Кварцевое оптическое волокно
recipes.remove(<appliedenergistics2:part:140>);
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:wireFineBorosilicateGlass>, <ore:dustNetherQuartz>)
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<appliedenergistics2:part:140>)
    .property("temperature", 1200)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ стеклянный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:16>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140>, <appliedenergistics2:material:8>)
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<appliedenergistics2:part:16>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ закрытый кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:36>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>, <minecraft:string> * 8, <ore:ringRubber> * 2)
    .outputs(<appliedenergistics2:part:36>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ умный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:56>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36>, <minecraft:redstone>, <minecraft:glowstone_dust>)
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<appliedenergistics2:part:56>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ плотный закрытый кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:516>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36> * 4, <ore:ringRubber> * 2)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:516>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ плотный умный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:76>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:56> * 4, <ore:ringRubber> * 2)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:76>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:516>, <minecraft:redstone> * 2, <minecraft:glowstone_dust> * 2)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:76>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Шины
// МЭ шина экспорта
recipes.remove(<appliedenergistics2:part:260>);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 4, <appliedenergistics2:material:43>, <gregtech:meta_item_1:159>)
    .outputs(<appliedenergistics2:part:260>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостная шина экспорта
recipes.remove(<appliedenergistics2:part:261>);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 2, <ore:plateLapis> * 2, <appliedenergistics2:material:43>, <gregtech:meta_item_1:144>)
    .outputs(<appliedenergistics2:part:261>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ шина импорта
recipes.remove(<appliedenergistics2:part:240>);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 4, <appliedenergistics2:material:44>, <gregtech:meta_item_1:159>)
    .outputs(<appliedenergistics2:part:240>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостная шина импорта
recipes.remove(<appliedenergistics2:part:241>);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 2, <ore:plateLapis> * 2, <appliedenergistics2:material:44>, <gregtech:meta_item_1:144>)
    .outputs(<appliedenergistics2:part:241>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ излучатель уровня
recipes.remove(<appliedenergistics2:part:280>);
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 2, <ore:foilRedAlloy> * 2, <appliedenergistics2:part:140>, <appliedenergistics2:material:23>, <ore:circuitUlv>, <ore:lensRuby>)
    .outputs(<appliedenergistics2:part:280>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостный излучатель уровня
recipes.remove(<appliedenergistics2:part:281>);
assembler.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> * 2, <ore:foilRedAlloy> * 2, <appliedenergistics2:part:140>, <appliedenergistics2:material:23>, <ore:circuitUlv>, <ore:lensSapphire>)
    .outputs(<appliedenergistics2:part:281>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ шина переключения
recipes.remove(<appliedenergistics2:part:80>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16> * 2, <ore:foilRedAlloy> * 2, <ore:wireFineRedAlloy>)
    .outputs(<appliedenergistics2:part:80>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// Карты улучшений
// Базовая карта
recipes.remove(<appliedenergistics2:material:25>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 3, <ore:wireGtSingleRedAlloy> * 3, <appliedenergistics2:material:23>, <ore:plateGold>, <ore:plateTinAlloy>, <ore:foilTin>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:25>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 3, <ore:wireGtSingleRedAlloy> * 3, <appliedenergistics2:material:23>, <ore:plateGold>, <ore:plateTinAlloy>, <ore:foilTin>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:25>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Продвинутая карта
recipes.remove(<appliedenergistics2:material:28>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleAluminium> * 3, <ore:wireGtSingleRedAlloy> * 3, <appliedenergistics2:material:23>, <ore:plateDiamond>, <ore:plateTinAlloy>, <ore:foilTin>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:28>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleAluminium> * 3, <ore:wireGtSingleRedAlloy> * 3, <appliedenergistics2:material:23>, <ore:plateDiamond>, <ore:plateTinAlloy>, <ore:foilTin>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:28>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта емкости
recipes.remove(<appliedenergistics2:material:27>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:plateNetherQuartz>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:27>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:plateNetherQuartz>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:27>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта крафта
recipes.remove(<appliedenergistics2:material:53>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:craftingTableWood>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:53>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:craftingTableWood>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:53>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта красного камня
recipes.remove(<appliedenergistics2:material:26>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:plateRedAlloy>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:26>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <ore:plateRedAlloy>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleGold>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:26>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта инвертирования
recipes.remove(<appliedenergistics2:material:31>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <ore:plateRedAlloy>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:31>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <ore:plateRedAlloy>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:31>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта нечеткости
recipes.remove(<appliedenergistics2:material:29>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <forestry:crafting_material:1>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:29>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <forestry:crafting_material:1>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:29>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта ускорения
recipes.remove(<appliedenergistics2:material:30>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <appliedenergistics2:material:9>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleAluminium>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:30>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <appliedenergistics2:material:9>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleAluminium>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:30>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Ячейки хранения
// 1К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_1k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>, <ore:wireGtSingleTin> * 4, <ore:plateCopper> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>, <ore:wireGtSingleTin> * 4, <ore:plateCopper> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 4К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_4k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36>, <appliedenergistics2:material:39>, <ore:wireGtSingleCopper> * 4, <ore:plateGold> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36>, <appliedenergistics2:material:39>, <ore:wireGtSingleCopper> * 4, <ore:plateGold> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 16К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_16k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>, <ore:wireGtSingleGold> * 4, <ore:plateEmerald> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>, <ore:wireGtSingleGold> * 4, <ore:plateEmerald> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 64К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_64k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>, <ore:wireGtSingleAluminium> * 4, <ore:plateDiamond> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>, <ore:wireGtSingleAluminium> * 4, <ore:plateDiamond> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 1К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:54>, <ore:wireGtSingleTin> * 4, <ore:plateCopper> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:54>, <ore:wireGtSingleTin> * 4, <ore:plateCopper> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 4К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:55>, <ore:wireGtSingleCopper> * 4, <ore:plateGold> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:55>, <ore:wireGtSingleCopper> * 4, <ore:plateGold> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 16К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:56>, <ore:wireGtSingleGold> * 4, <ore:plateEmerald> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:56>, <ore:wireGtSingleGold> * 4, <ore:plateEmerald> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 64К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:57>, <ore:wireGtSingleAluminium> * 4, <ore:plateDiamond> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:57>, <ore:wireGtSingleAluminium> * 4, <ore:plateDiamond> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// Механизмы
// Кварцевый дробитель
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("appliedenergistics2_grindstone", <appliedenergistics2:grindstone>,
	[[<ore:stone>, <ore:gearBlackSteel>, <ore:stone>],
	[<ore:gearBlackSteel>, <tfc:handstone>, <ore:gearBlackSteel>],
	[<ore:stone>, <tfc:quern>, <ore:stone>]]);

// Вибрационная камера
recipes.remove(<appliedenergistics2:vibration_chamber>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 6, <minecraft:furnace>, <appliedenergistics2:energy_acceptor>)
    .outputs(<appliedenergistics2:vibration_chamber>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// МЭ интерфейс
recipes.remove(<appliedenergistics2:interface>);
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 6, <gregtech:machine:988>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:159>)
    .outputs(<appliedenergistics2:interface>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Конденсатор материи
recipes.remove(<appliedenergistics2:condenser>);
assembler.recipeBuilder()
    .inputs(<ore:foilIridium> * 18, <ore:plateAmethyst> * 6, <gregtech:meta_item_1:205> * 4, <gregtech:machine:989>)
    .outputs(<appliedenergistics2:condenser>)
    .duration(70 * 20)
    .EUt(2048)
    .buildAndRegister();

// Квантовое кольцо
recipes.remove(<appliedenergistics2:quantum_ring>);
assembler.recipeBuilder()
    .inputs(<threng:material:4> * 4, <threng:material:14> * 4, <appliedenergistics2:dense_energy_cell>)
    .outputs(<appliedenergistics2:quantum_ring>)
    .duration(120 * 20)
    .EUt(2048)
    .buildAndRegister();

// Камера квантовой связи
recipes.remove(<appliedenergistics2:quantum_link>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:281> * 6, <ore:circuitHv> * 4)
    .fluidInputs([<liquid:radon> * 100])
    .outputs(<appliedenergistics2:quantum_link>)
    .duration(180 * 20)
    .EUt(2048)
    .buildAndRegister();

// МЭ контроллер
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 16, <appliedenergistics2:part:16> * 8, <ore:plateGlowstone> * 6, <ore:plateSteel> * 6, <ore:circuitHv> * 4, <appliedenergistics2:energy_acceptor>)
    .outputs(<appliedenergistics2:controller>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// МЭ накопитель
recipes.remove(<appliedenergistics2:drive>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:501> * 10, <ore:plateRubber> * 10, <ore:plateStainlessSteel> * 5, <appliedenergistics2:part:16> * 4, <appliedenergistics2:material:24> * 2, <ore:circuitHv> * 4, <gregtech:machine:988>)
    .outputs(<appliedenergistics2:drive>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// Приемщик энергии
recipes.remove(<appliedenergistics2:energy_acceptor>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 32, <ore:plateStainlessSteel> * 6, <ore:wireGtSingleGold> * 2, <gregtech:machine:988>)
    .outputs(<appliedenergistics2:energy_acceptor>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// МЭ сундук
recipes.remove(<appliedenergistics2:chest>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 5, <appliedenergistics2:part:16> * 4, <ore:circuitHv> * 2, <gregtech:machine:988>, <appliedenergistics2:part:380>, <gregtech:meta_item_1:501>, <ore:plateRubber>)
    .outputs(<appliedenergistics2:chest>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();
    
// МЭ жидкостный интерфейс
recipes.remove(<appliedenergistics2:fluid_interface>);
assembler.recipeBuilder()
    .inputs(<ore:plateLapis> * 6, <ore:wireGtSingleGold> * 6, <gregtech:machine:988>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:144>)
    .outputs(<appliedenergistics2:fluid_interface>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Молекулярный сборщик
recipes.remove(<appliedenergistics2:molecular_assembler>);
assembler.recipeBuilder()
    .inputs(<ore:stickSteel> * 12, <ore:wireGtSingleGold> * 4, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:53>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>)
    .outputs(<appliedenergistics2:molecular_assembler>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// МЭ терминал безопасности
recipes.remove(<appliedenergistics2:security_station>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 4, <appliedenergistics2:part:16> * 4, <ore:foilCopper> * 4, <appliedenergistics2:chest>, <appliedenergistics2:material:24>, <ore:circuitHv>)
    .outputs(<appliedenergistics2:security_station>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();

// МЭ порт ввода-вывода
recipes.remove(<appliedenergistics2:io_port>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16> * 4, <ore:wireGtSingleAluminium> * 4, <ore:plateStainlessSteel> * 4, <appliedenergistics2:drive>, <appliedenergistics2:material:22>)
    .outputs(<appliedenergistics2:io_port>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();

// Верстак для ячеек
recipes.remove(<appliedenergistics2:cell_workbench>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 4, <ore:foilAluminium> * 4, <ore:wireGtSingleCopper> * 2, <gregtech:machine:988>, <ore:chestWood>, <appliedenergistics2:material:23>)
    .outputs(<appliedenergistics2:cell_workbench>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Ускоритель роста кристаллов
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16> * 4, <minecraft:iron_bars> * 4, <ore:plateSteel> * 4, <appliedenergistics2:fluix_block>)
    .outputs(<appliedenergistics2:quartz_growth_accelerator>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Энергетическая ячейка
recipes.remove(<appliedenergistics2:energy_cell>);
assembler.recipeBuilder()
    .inputs(<ore:foilAluminium> * 8, <ore:crystalPureCertusQuartz> * 4, <ore:crystalPureFluix> * 4, <gregtech:machine:988>)
    .outputs(<appliedenergistics2:energy_cell>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Плотная энергетическая ячейка
recipes.remove(<appliedenergistics2:dense_energy_cell>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:energy_cell> * 8, <appliedenergistics2:material:23>, <appliedenergistics2:part:16> * 8, <ore:wireGtSingleCopper> * 2)
    .outputs(<appliedenergistics2:dense_energy_cell>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Зарядник
recipes.remove(<appliedenergistics2:charger>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 6, <ore:stickSteel> * 4, <ore:wireGtSingleGold> * 4, <gregtech:meta_item_1:219> * 2, <ore:circuitHv>)
    .outputs(<appliedenergistics2:charger>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Обработчики крафта
// Блок крафта
recipes.remove(<appliedenergistics2:crafting_unit>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 6, <ore:wireGtSingleCopper> * 4, <appliedenergistics2:material:23> * 2, <appliedenergistics2:part:16> * 2, <gregtech:machine:988>, <appliedenergistics2:material:22>)
    .outputs(<appliedenergistics2:crafting_unit>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// Блок обработки крафта
recipes.remove(<appliedenergistics2:crafting_accelerator>);
assembler.recipeBuilder()
    .inputs(<ore:plateAmethyst> * 6, <ore:wireGtSingleGold> * 2, <appliedenergistics2:crafting_unit>, <appliedenergistics2:material:24>)
    .outputs(<appliedenergistics2:crafting_accelerator>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 1К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper> * 6, <ore:wireGtSingleTin> * 2, <appliedenergistics2:crafting_unit>, <appliedenergistics2:material:35>)
    .outputs(<appliedenergistics2:crafting_storage_1k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
assembler.recipeBuilder()
    .inputs(<ore:plateGold> * 6, <ore:wireGtSingleCopper> * 2, <appliedenergistics2:crafting_unit>, <appliedenergistics2:material:36>)
    .outputs(<appliedenergistics2:crafting_storage_4k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
assembler.recipeBuilder()
    .inputs(<ore:plateEmerald> * 6, <ore:wireGtSingleGold> * 2, <appliedenergistics2:crafting_unit>, <appliedenergistics2:material:37>)
    .outputs(<appliedenergistics2:crafting_storage_16k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond> * 6, <ore:wireGtSingleAluminium> * 2, <appliedenergistics2:crafting_unit>, <appliedenergistics2:material:38>)
    .outputs(<appliedenergistics2:crafting_storage_64k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// Монитор крафта
recipes.remove(<appliedenergistics2:crafting_monitor>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:part:400>, <ore:wireGtSingleCopper> * 2)
    .outputs(<appliedenergistics2:crafting_monitor>)
    .duration(5 * 20)
    .EUt(128)
    .buildAndRegister();

// Инструменты
// Гаечный ключ из незер-кварца
recipes.remove(<appliedenergistics2:nether_quartz_wrench>);
recipes.addShaped("appliedenergistics2_nether_quartz_wrench", <appliedenergistics2:nether_quartz_wrench>,
 [[<ore:plateNetherQuartz>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateNetherQuartz>],
  [null, <ore:plateNetherQuartz>, null],
  [<ore:plateNetherQuartz>, null, <ore:plateNetherQuartz>]]);

// Гаечный ключ из истинного кварца
recipes.remove(<appliedenergistics2:certus_quartz_wrench>);
recipes.addShaped("appliedenergistics2_certus_quartz_wrench", <appliedenergistics2:certus_quartz_wrench>,
 [[<ore:plateCertusQuartz>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateCertusQuartz>],
  [null, <ore:plateCertusQuartz>, null],
  [<ore:plateCertusQuartz>, null, <ore:plateCertusQuartz>]]);

// Сетевой инструмент
recipes.remove(<appliedenergistics2:network_tool>);
assembler.recipeBuilder()
    .inputs(<ore:itemQuartzWrench>, <appliedenergistics2:part:180>, <appliedenergistics2:material:23>, <ore:wireGtSingleCopper> * 2)
    .outputs(<appliedenergistics2:network_tool>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Пустой шаблон
recipes.remove(<appliedenergistics2:material:52>);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 4, <ore:plateGlowstone> * 4, <appliedenergistics2:quartz_glass>, <ore:crystalCertusQuartz>)
    .outputs(<appliedenergistics2:material:52>)
    .duration(5 * 20)
    .EUt(96)
    .buildAndRegister();

// Другое
// МЭ корпус ячейки хранения
recipes.remove(<appliedenergistics2:material:39>);
assembler.recipeBuilder()
    .inputs(<ore:plateRedAlloy> * 4, <ore:plateSteel> * 4, <appliedenergistics2:quartz_glass>)
    .outputs(<appliedenergistics2:material:39>)
    .duration(5 * 20)
    .EUt(96)
    .buildAndRegister();

// Биометрическая карта
recipes.remove(<appliedenergistics2:biometric_card>);
assembler.recipeBuilder()
    .inputs(<ore:foilTin> * 4, <ore:wireFineGold> * 2, <ore:wireFineRedAlloy> * 2, <appliedenergistics2:material:24>, <ore:wireGtSingleGold>, <ore:wireGtSingleRedAlloy>)
    .outputs(<appliedenergistics2:biometric_card>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Карта памяти
recipes.remove(<appliedenergistics2:memory_card>);
assembler.recipeBuilder()
    .inputs(<ore:foilTin> * 4, <ore:wireFineElectrum> * 2, <ore:wireFineRedAlloy> * 2, <appliedenergistics2:material:24>, <ore:wireGtSingleElectrum>, <ore:wireGtSingleRedAlloy>)
    .outputs(<appliedenergistics2:memory_card>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Светильник из заряженного кварца
recipes.remove(<appliedenergistics2:quartz_fixture>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <ore:ringIron>, <ore:boltIron>)
    .outputs(<appliedenergistics2:quartz_fixture>)
    .duration(3 * 20)
    .EUt(24)
    .buildAndRegister();

// Светильник обнаружения света
recipes.remove(<appliedenergistics2:light_detector>);
assembler.recipeBuilder()
    .inputs(<minecraft:quartz>, <ore:ringIron>, <ore:boltIron>)
    .outputs(<appliedenergistics2:light_detector>)
    .duration(3 * 20)
    .EUt(24)
    .buildAndRegister();

// Изменчивая пыль
macerator.recipeBuilder()
    .inputs(<appliedenergistics2:material:7>)
    .outputs(<appliedenergistics2:material:8>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Кристалла истинного кварца пыль
macerator.recipeBuilder()
    .inputs(<appliedenergistics2:material>)
    .outputs(<appliedenergistics2:material:2>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Пыль небесного камня
macerator.recipeBuilder()
    .inputs(<appliedenergistics2:sky_stone_block>)
    .outputs(<appliedenergistics2:material:45>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Беспроводной приемник
recipes.remove(<appliedenergistics2:material:41>);
assembler.recipeBuilder()
    .inputs(<ore:stickSteel> * 3, <appliedenergistics2:part:16> * 2, <ore:wireGtSingleGold> * 2, <ore:ringSteel> * 2, <ore:screwSteel> * 2, <ore:foilTin> * 2, <gregtech:meta_item_1:234>, <appliedenergistics2:material:9>)
    .outputs(<appliedenergistics2:material:41>)
    .duration(15 * 20)
    .EUt(320)
    .buildAndRegister();

// МЭ беспроводная точка доступа
recipes.remove(<appliedenergistics2:wireless_access_point>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 4, <appliedenergistics2:part:16> * 2, <ore:wireGtSingleGold> * 2, <ore:ringRubber> * 2, <appliedenergistics2:material:41>, <appliedenergistics2:material:23>)
    .outputs(<appliedenergistics2:wireless_access_point>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Беспроводной усилитель
recipes.remove(<appliedenergistics2:material:42>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 4, <ore:foilSteel> * 4, <ore:foilRedAlloy> * 4, <gregtech:meta_item_1:234>, <ore:plateStainlessSteel>, <ore:lensDiamond>)
    .outputs(<appliedenergistics2:material:42> * 4)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// Туннель МЭ
recipes.remove(<appliedenergistics2:part:460>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 4, <gregtech:meta_item_1:501> * 2, <appliedenergistics2:material:41>, <appliedenergistics2:part:440>, <appliedenergistics2:material:42>)
    .outputs(<appliedenergistics2:part:460>)
    .duration(15 * 20)
    .EUt(256)
    .buildAndRegister();

// Удаление рецептов из ручного дробителя
Grinder.removeRecipe(<minecraft:coal:1>);
Grinder.removeRecipe(<minecraft:gold_ingot>);
Grinder.removeRecipe(<ore:ingotPlatinum>);
Grinder.removeRecipe(<ore:ingotNickel>);
Grinder.removeRecipe(<minecraft:iron_ingot>);
Grinder.removeRecipe(<ore:oreSilver>);
Grinder.removeRecipe(<ore:ingotCopper>);
Grinder.removeRecipe(<ore:ingotBronze>);
Grinder.removeRecipe(<ore:orePlatinum>);
Grinder.removeRecipe(<ore:oreIron>);
Grinder.removeRecipe(<ore:oreLead>);
Grinder.removeRecipe(<ore:oreNetherQuartz>);
Grinder.removeRecipe(<ore:oreCoal>);
Grinder.removeRecipe(<ore:ingotBrass>);
Grinder.removeRecipe(<ore:oreCertusQuartz>);
Grinder.removeRecipe(<minecraft:wheat>);
Grinder.removeRecipe(<ore:ingotElectrum>);
Grinder.removeRecipe(<minecraft:bone>);
Grinder.removeRecipe(<minecraft:obsidian>);
Grinder.removeRecipe(<ore:oreCopper>);
Grinder.removeRecipe(<ore:oreNickel>);
Grinder.removeRecipe(<ore:oreTin>);
Grinder.removeRecipe(<ore:ingotSilver>);
Grinder.removeRecipe(<ore:oreAluminium>);
Grinder.removeRecipe(<ore:ingotInvar>);
Grinder.removeRecipe(<ore:ingotZinc>);
Grinder.removeRecipe(<minecraft:ender_pearl>);
Grinder.removeRecipe(<ore:oreGold>);
Grinder.removeRecipe(<ore:ingotAluminium>);
Grinder.removeRecipe(<minecraft:quartz>);
Grinder.removeRecipe(<minecraft:coal>);
Grinder.removeRecipe(<ore:ingotOsmium>);
Grinder.removeRecipe(<ore:ingotTin>);
Grinder.removeRecipe(<ore:ingotLead>);
Grinder.removeRecipe(<ore:crystalCertusQuartz>);
Grinder.removeRecipe(<appliedenergistics2:material:7>);
Grinder.removeRecipe(<appliedenergistics2:sky_stone_block>);
Grinder.removeRecipe(<minecraft:gravel>);

// Добавление рецептов в ручной дробитель
// Переработка руды
Grinder.addRecipe(<gregtech:meta_crushed:2> * 2, <gregtech:ore_aluminium_0>, 4, <gregtech:meta_dust_impure:2>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:255> * 2, <gregtech:ore_banded_iron_0>, 4, <gregtech:meta_dust_impure:255>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:112> * 2, <gregtech:ore_tin_0>, 4, <gregtech:meta_dust_impure:112>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:25> * 2, <gregtech:ore_copper_0>, 4, <gregtech:meta_dust_impure:25>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:305> * 2, <gregtech:ore_powellite_0>, 4, <gregtech:meta_dust_impure:305>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:273> * 2, <gregtech:ore_cooperite_0>, 4, <gregtech:meta_dust_impure:273>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:272> * 2, <gregtech:ore_cobaltite_0>, 4, <gregtech:meta_dust_impure:272>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:286> * 2, <gregtech:ore_bauxite_0>, 4, <gregtech:meta_dust_impure:286>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:292> * 2, <gregtech:ore_magnetite_0>, 4, <gregtech:meta_dust_impure:292>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:267> * 2, <gregtech:ore_chromite_0>, 4, <gregtech:meta_dust_impure:267>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:268> * 2, <gregtech:ore_cinnabar_0>, 4, <gregtech:meta_dust_impure:268>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:280> * 2, <gregtech:ore_garnierite_0>, 4, <gregtech:meta_dust_impure:280>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:284> * 2, <gregtech:ore_ilmenite_0>, 4, <gregtech:meta_dust_impure:284>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:291> * 2, <gregtech:ore_magnesite_0>, 4, <gregtech:meta_dust_impure:291>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:306> * 2, <gregtech:ore_pyrite_0>, 4, <gregtech:meta_dust_impure:306>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:276> * 2, <gregtech:ore_diamond_0>, 4, <gregtech:meta_dust_impure:276>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:271> * 2, <gregtech:ore_coal_0>, 4, <gregtech:meta_dust_impure:271>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:103> * 2, <gregtech:ore_sulfur_0>, 4, <gregtech:meta_dust_impure:103>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:307> * 2, <gregtech:ore_pyrolusite_0>, 4, <gregtech:meta_dust_impure:307>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:311> * 2, <gregtech:ore_ruby_0>, 8, <gregtech:meta_dust_impure:311>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:281> * 2, <gregtech:ore_green_sapphire_0>, 4, <gregtech:meta_dust_impure:281>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:293> * 2, <gregtech:ore_molybdenite_0>, 4, <gregtech:meta_dust_impure:293>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:66> * 2, <gregtech:ore_neodymium_0>, 4, <gregtech:meta_dust_impure:66>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:56> * 2, <gregtech:ore_lithium_0>, 4, <gregtech:meta_dust_impure:56>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:64> * 2, <gregtech:ore_molybdenum_0>, 4, <gregtech:meta_dust_impure:64>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:77> * 2, <gregtech:ore_palladium_0>, 4, <gregtech:meta_dust_impure:77>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:55> * 2, <gregtech:ore_lead_0>, 4, <gregtech:meta_dust_impure:55>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:262> * 2, <gregtech:ore_calcite_0>, 4, <gregtech:meta_dust_impure:262>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:51> * 2, <gregtech:ore_iron_0>, 4, <gregtech:meta_dust_impure:51>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:261> * 2, <gregtech:ore_brown_limonite_0>, 8, <gregtech:meta_dust_impure:261>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:109> * 2, <gregtech:ore_thorium_0>, 4, <gregtech:meta_dust_impure:109>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:100> * 2, <gregtech:ore_silver_0>, 4, <gregtech:meta_dust_impure:100>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:80> * 2, <gregtech:ore_platinum_0>, 4, <gregtech:meta_dust_impure:80>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:69> * 2, <gregtech:ore_nickel_0>, 4, <gregtech:meta_dust_impure:69>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:41> * 2, <gregtech:ore_gold_0>, 4, <gregtech:meta_dust_impure:41>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:10> * 2, <gregtech:ore_beryllium_0>, 4, <gregtech:meta_dust_impure:10>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:315> * 2, <gregtech:ore_scheelite_0>, 4, <gregtech:meta_dust_impure:315>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:314> * 2, <gregtech:ore_sapphire_0>, 4, <gregtech:meta_dust_impure:314>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:387> * 2, <gregtech:ore_barite_0>, 4, <gregtech:meta_dust_impure:387>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:365> * 2, <gregtech:ore_realgar_0>, 4, <gregtech:meta_dust_impure:365>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:330> * 2, <gregtech:ore_tungstate_0>, 4, <gregtech:meta_dust_impure:330>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:347> * 2, <gregtech:ore_bornite_0>, 4, <gregtech:meta_dust_impure:347>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:380> * 2, <gregtech:ore_pentlandite_0>, 4, <gregtech:meta_dust_impure:380>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:279> * 2, <gregtech:ore_galena_0>, 4, <gregtech:meta_dust_impure:279>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:265> * 2, <gregtech:ore_chalcopyrite_0>, 4, <gregtech:meta_dust_impure:265>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:322> * 2, <gregtech:ore_sphalerite_0>, 4, <gregtech:meta_dust_impure:322>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:336> * 2, <gregtech:ore_wulfenite_0>, 4, <gregtech:meta_dust_impure:336>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:318> * 2, <gregtech:ore_tantalite_0>, 4, <gregtech:meta_dust_impure:318>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:337> * 2, <gregtech:ore_yellow_limonite_0>, 4, <gregtech:meta_dust_impure:337>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:329> * 2, <gregtech:ore_topaz_0>, 4, <gregtech:meta_dust_impure:329>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:325> * 2, <gregtech:ore_stibnite_0>, 4, <gregtech:meta_dust_impure:325>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:348> * 2, <gregtech:ore_chalcocite_0>, 4, <gregtech:meta_dust_impure:348>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:341> * 2, <gregtech:ore_graphite_0>, 4, <gregtech:meta_dust_impure:341>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:332> * 2, <gregtech:ore_uraninite_0>, 4, <gregtech:meta_dust_impure:332>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2518> * 2, <gregtech:ore_basaltic_mineral_sand_0>, 4, <gregtech:meta_dust_impure:2518>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2509> * 2, <gregtech:ore_diatomite_0>, 4, <gregtech:meta_dust_impure:2509>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:449> * 2, <gregtech:ore_pyrochlore_0>, 4, <gregtech:meta_dust_impure:449>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2513> * 2, <gregtech:ore_granitic_mineral_sand_0>, 4, <gregtech:meta_dust_impure:2513>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2005> * 2, <gregtech:ore_opal_0>, 4, <gregtech:meta_dust_impure:2005>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2022> * 2, <gregtech:ore_vanadium_magnetite_0>, 4, <gregtech:meta_dust_impure:2022>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:327> * 2, <gregtech:ore_tetrahedrite_0>, 4, <gregtech:meta_dust_impure:327>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:385> * 2, <gregtech:ore_malachite_0>, 4, <gregtech:meta_dust_impure:385>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:381> * 2, <gregtech:ore_spodumene_0>, 4, <gregtech:meta_dust_impure:381>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2024> * 2, <gregtech:ore_pollucite_0>, 4, <gregtech:meta_dust_impure:2024>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:1597> * 2, <gregtech:ore_oilsands_0>, 4, <gregtech:meta_dust_impure:1597>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2006> * 2, <gregtech:ore_amethyst_0>, 4, <gregtech:meta_dust_impure:2006>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:394> * 2, <gregtech:ore_kyanite_0>, 4, <gregtech:meta_dust_impure:394>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2032> * 2, <gregtech:ore_gypsum_0>, 4, <gregtech:meta_dust_impure:2032>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2028> * 2, <gregtech:ore_pitchblende_0>, 4, <gregtech:meta_dust_impure:2028>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2515> * 2, <gregtech:ore_garnet_sand_0>, 4, <gregtech:meta_dust_impure:2515>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:340> * 4, <gregtech:ore_quartzite_0>, 4, <gregtech:meta_dust_impure:340>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:339> * 4, <gregtech:ore_nether_quartz_0>, 4, <gregtech:meta_dust_impure:339>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:214> * 4, <gregtech:ore_certus_quartz_0>, 4, <gregtech:meta_dust_impure:214>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:309> * 4, <gregtech:ore_rock_salt_0>, 4, <gregtech:meta_dust_impure:309>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:386> * 4, <gregtech:ore_mica_0>, 4, <gregtech:meta_dust_impure:386>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:313> * 4, <gregtech:ore_saltpeter_0>, 4, <gregtech:meta_dust_impure:313>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:312> * 4, <gregtech:ore_salt_0>, 4, <gregtech:meta_dust_impure:312>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:264> * 4, <gregtech:ore_cassiterite_sand_0>, 4, <gregtech:meta_dust_impure:264>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:263> * 4, <gregtech:ore_cassiterite_0>, 4, <gregtech:meta_dust_impure:263>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:257> * 4, <gregtech:ore_blue_topaz_0>, 4, <gregtech:meta_dust_impure:257>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2004> * 4, <gregtech:ore_olivine_0>, 4, <gregtech:meta_dust_impure:2004>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:278> * 4, <gregtech:ore_emerald_0>, 4, <gregtech:meta_dust_impure:278>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2031> * 4, <gregtech:ore_trona_0>, 4, <gregtech:meta_dust_impure:2031>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2027> * 4, <gregtech:ore_fullers_earth_0>, 4, <gregtech:meta_dust_impure:2027>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:392> * 4, <gregtech:ore_talc_0>, 4, <gregtech:meta_dust_impure:392>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:382> * 4, <gregtech:ore_lepidolite_0>, 4, <gregtech:meta_dust_impure:382>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:379> * 4, <gregtech:ore_bastnasite_0>, 4, <gregtech:meta_dust_impure:379>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2015> * 6, <gregtech:ore_tricalcium_phosphate_0>, 4, <gregtech:meta_dust_impure:2015>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:393> * 6, <gregtech:ore_soapstone_0>, 4, <gregtech:meta_dust_impure:393>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:384> * 6, <gregtech:ore_glauconite_sand_0>, 4, <gregtech:meta_dust_impure:384>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:321> * 6, <gregtech:ore_spessartine_0>, 4, <gregtech:meta_dust_impure:321>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:250> * 6, <gregtech:ore_almandine_0>, 4, <gregtech:meta_dust_impure:250>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:253> * 6, <gregtech:ore_asbestos_0>, 4, <gregtech:meta_dust_impure:253>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:388> * 6, <gregtech:ore_alunite_0>, 4, <gregtech:meta_dust_impure:388>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:308> * 6, <gregtech:ore_pyrope_0>, 4, <gregtech:meta_dust_impure:308>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:282> * 6, <gregtech:ore_grossular_0>, 4, <gregtech:meta_dust_impure:282>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2026> * 6, <gregtech:ore_bentonite_0>, 4, <gregtech:meta_dust_impure:2026>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2033> * 6, <gregtech:ore_zeolite_0>, 4, <gregtech:meta_dust_impure:2033>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2017> * 8, <gregtech:ore_garnet_yellow_0>, 4, <gregtech:meta_dust_impure:2017>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2016> * 8, <gregtech:ore_garnet_red_0>, 4, <gregtech:meta_dust_impure:2016>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2029> * 8, <gregtech:ore_monazite_0>, 4, <gregtech:meta_dust_impure:2029>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2010> * 8, <gregtech:ore_apatite_0>, 4, <gregtech:meta_dust_impure:2010>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2064> * 10, <gregtech:ore_redstone_0>, 4, <gregtech:meta_dust_impure:2064>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2507> * 10, <gregtech:ore_electrotine_0>, 4, <gregtech:meta_dust_impure:2507>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:316> * 12, <gregtech:ore_sodalite_0>, 4, <gregtech:meta_dust_impure:316>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:2007> * 12, <gregtech:ore_lapis_0>, 4, <gregtech:meta_dust_impure:2007>, 0.05);
Grinder.addRecipe(<gregtech:meta_crushed:289> * 12, <gregtech:ore_lazurite_0>, 4, <gregtech:meta_dust_impure:289>, 0.05);
// Переработка дробленной руды
Grinder.addRecipe(<gregtech:meta_dust_impure:2>, <ore:crushedAluminium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:10>, <ore:crushedBeryllium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:11>, <ore:crushedBismuth>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:23>, <ore:crushedCobalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:25>, <ore:crushedCopper>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:41>, <ore:crushedGold>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:51>, <ore:crushedIron>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:55>, <ore:crushedLead>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:56>, <ore:crushedLithium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:64>, <ore:crushedMolybdenum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:66>, <ore:crushedNeodymium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:69>, <ore:crushedNickel>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:77>, <ore:crushedPalladium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:80>, <ore:crushedPlatinum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:81>, <ore:crushedPlutonium239>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:100>, <ore:crushedSilver>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:103>, <ore:crushedSulfur>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:109>, <ore:crushedThorium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:112>, <ore:crushedTin>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:124>, <ore:crushedNaquadah>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:214>, <ore:crushedCertusQuartz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:250>, <ore:crushedAlmandine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:253>, <ore:crushedAsbestos>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:255>, <ore:crushedBandedIron>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:257>, <ore:crushedBlueTopaz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:261>, <ore:crushedBrownLimonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:262>, <ore:crushedCalcite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:263>, <ore:crushedCassiterite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:264>, <ore:crushedCassiteriteSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:265>, <ore:crushedChalcopyrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:267>, <ore:crushedChromite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:268>, <ore:crushedCinnabar>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:271>, <ore:crushedCoal>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:272>, <ore:crushedCobaltite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:273>, <ore:crushedCooperite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:276>, <ore:crushedDiamond>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:278>, <ore:crushedEmerald>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:279>, <ore:crushedGalena>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:280>, <ore:crushedGarnierite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:281>, <ore:crushedGreenSapphire>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:282>, <ore:crushedGrossular>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:284>, <ore:crushedIlmenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:286>, <ore:crushedBauxite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:289>, <ore:crushedLazurite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:291>, <ore:crushedMagnesite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:292>, <ore:crushedMagnetite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:293>, <ore:crushedMolybdenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:305>, <ore:crushedPowellite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:306>, <ore:crushedPyrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:307>, <ore:crushedPyrolusite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:308>, <ore:crushedPyrope>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:309>, <ore:crushedRockSalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:311>, <ore:crushedRuby>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:312>, <ore:crushedSalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:313>, <ore:crushedSaltpeter>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:314>, <ore:crushedSapphire>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:315>, <ore:crushedScheelite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:316>, <ore:crushedSodalite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:318>, <ore:crushedTantalite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:321>, <ore:crushedSpessartine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:322>, <ore:crushedSphalerite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:325>, <ore:crushedStibnite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:327>, <ore:crushedTetrahedrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:329>, <ore:crushedTopaz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:330>, <ore:crushedTungstate>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:332>, <ore:crushedUraninite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:336>, <ore:crushedWulfenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:337>, <ore:crushedYellowLimonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:339>, <ore:crushedNetherQuartz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:340>, <ore:crushedQuartzite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:341>, <ore:crushedGraphite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:347>, <ore:crushedBornite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:348>, <ore:crushedChalcocite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:365>, <ore:crushedRealgar>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:379>, <ore:crushedBastnasite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:380>, <ore:crushedPentlandite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:381>, <ore:crushedSpodumene>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:382>, <ore:crushedLepidolite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:384>, <ore:crushedGlauconiteSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:385>, <ore:crushedMalachite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:386>, <ore:crushedMica>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:387>, <ore:crushedBarite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:388>, <ore:crushedAlunite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:392>, <ore:crushedTalc>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:393>, <ore:crushedSoapstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:394>, <ore:crushedKyanite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:449>, <ore:crushedPyrochlore>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:1597>, <ore:crushedOilsands>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:1601>, <ore:crushedGlowstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2004>, <ore:crushedOlivine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2005>, <ore:crushedOpal>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2006>, <ore:crushedAmethyst>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2007>, <ore:crushedLapis>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2010>, <ore:crushedApatite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2015>, <ore:crushedTricalciumPhosphate>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2016>, <ore:crushedGarnetRed>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2017>, <ore:crushedGarnetYellow>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2022>, <ore:crushedVanadiumMagnetite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2024>, <ore:crushedPollucite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2026>, <ore:crushedBentonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2027>, <ore:crushedFullersEarth>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2028>, <ore:crushedPitchblende>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2029>, <ore:crushedMonazite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2031>, <ore:crushedTrona>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2032>, <ore:crushedGypsum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2033>, <ore:crushedZeolite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2064>, <ore:crushedRedstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2507>, <ore:crushedElectrotine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2509>, <ore:crushedDiatomite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2513>, <ore:crushedGraniticMineralSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2515>, <ore:crushedGarnetSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_impure:2518>, <ore:crushedBasalticMineralSand>, 2, null, 0);
// Переработка дробленной руды очищенной руды
Grinder.addRecipe(<gregtech:meta_dust_pure:2>, <ore:crushedPurifiedAluminium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:10>, <ore:crushedPurifiedBeryllium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:11>, <ore:crushedPurifiedBismuth>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:23>, <ore:crushedPurifiedCobalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:25>, <ore:crushedPurifiedCopper>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:41>, <ore:crushedPurifiedGold>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:51>, <ore:crushedPurifiedIron>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:55>, <ore:crushedPurifiedLead>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:56>, <ore:crushedPurifiedLithium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:64>, <ore:crushedPurifiedMolybdenum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:66>, <ore:crushedPurifiedNeodymium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:69>, <ore:crushedPurifiedNickel>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:77>, <ore:crushedPurifiedPalladium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:80>, <ore:crushedPurifiedPlatinum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:81>, <ore:crushedPurifiedPlutonium239>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:100>, <ore:crushedPurifiedSilver>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:103>, <ore:crushedPurifiedSulfur>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:109>, <ore:crushedPurifiedThorium>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:112>, <ore:crushedPurifiedTin>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:124>, <ore:crushedPurifiedNaquadah>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:214>, <ore:crushedPurifiedCertusQuartz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:250>, <ore:crushedPurifiedAlmandine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:253>, <ore:crushedPurifiedAsbestos>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:255>, <ore:crushedPurifiedBandedIron>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:257>, <ore:crushedPurifiedBlueTopaz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:261>, <ore:crushedPurifiedBrownLimonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:262>, <ore:crushedPurifiedCalcite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:263>, <ore:crushedPurifiedCassiterite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:264>, <ore:crushedPurifiedCassiteriteSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:265>, <ore:crushedPurifiedChalcopyrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:267>, <ore:crushedPurifiedChromite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:268>, <ore:crushedPurifiedCinnabar>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:271>, <ore:crushedPurifiedCoal>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:272>, <ore:crushedPurifiedCobaltite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:273>, <ore:crushedPurifiedCooperite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:276>, <ore:crushedPurifiedDiamond>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:278>, <ore:crushedPurifiedEmerald>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:279>, <ore:crushedPurifiedGalena>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:280>, <ore:crushedPurifiedGarnierite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:281>, <ore:crushedPurifiedGreenSapphire>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:282>, <ore:crushedPurifiedGrossular>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:284>, <ore:crushedPurifiedIlmenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:286>, <ore:crushedPurifiedBauxite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:289>, <ore:crushedPurifiedLazurite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:291>, <ore:crushedPurifiedMagnesite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:292>, <ore:crushedPurifiedMagnetite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:293>, <ore:crushedPurifiedMolybdenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:305>, <ore:crushedPurifiedPowellite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:306>, <ore:crushedPurifiedPyrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:307>, <ore:crushedPurifiedPyrolusite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:308>, <ore:crushedPurifiedPyrope>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:309>, <ore:crushedPurifiedRockSalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:311>, <ore:crushedPurifiedRuby>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:312>, <ore:crushedPurifiedSalt>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:313>, <ore:crushedPurifiedSaltpeter>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:314>, <ore:crushedPurifiedSapphire>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:315>, <ore:crushedPurifiedScheelite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:316>, <ore:crushedPurifiedSodalite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:318>, <ore:crushedPurifiedTantalite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:321>, <ore:crushedPurifiedSpessartine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:322>, <ore:crushedPurifiedSphalerite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:325>, <ore:crushedPurifiedStibnite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:327>, <ore:crushedPurifiedTetrahedrite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:329>, <ore:crushedPurifiedTopaz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:330>, <ore:crushedPurifiedTungstate>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:332>, <ore:crushedPurifiedUraninite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:336>, <ore:crushedPurifiedWulfenite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:337>, <ore:crushedPurifiedYellowLimonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:339>, <ore:crushedPurifiedNetherQuartz>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:340>, <ore:crushedPurifiedQuartzite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:341>, <ore:crushedPurifiedGraphite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:347>, <ore:crushedPurifiedBornite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:348>, <ore:crushedPurifiedChalcocite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:365>, <ore:crushedPurifiedRealgar>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:379>, <ore:crushedPurifiedBastnasite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:380>, <ore:crushedPurifiedPentlandite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:381>, <ore:crushedPurifiedSpodumene>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:382>, <ore:crushedPurifiedLepidolite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:384>, <ore:crushedPurifiedGlauconiteSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:385>, <ore:crushedPurifiedMalachite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:386>, <ore:crushedPurifiedMica>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:387>, <ore:crushedPurifiedBarite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:388>, <ore:crushedPurifiedAlunite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:392>, <ore:crushedPurifiedTalc>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:393>, <ore:crushedPurifiedSoapstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:394>, <ore:crushedPurifiedKyanite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:449>, <ore:crushedPurifiedPyrochlore>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:1597>, <ore:crushedPurifiedOilsands>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:1601>, <ore:crushedPurifiedGlowstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2004>, <ore:crushedPurifiedOlivine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2005>, <ore:crushedPurifiedOpal>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2006>, <ore:crushedPurifiedAmethyst>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2007>, <ore:crushedPurifiedLapis>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2010>, <ore:crushedPurifiedApatite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2015>, <ore:crushedPurifiedTricalciumPhosphate>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2016>, <ore:crushedPurifiedGarnetRed>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2017>, <ore:crushedPurifiedGarnetYellow>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2022>, <ore:crushedPurifiedVanadiumMagnetite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2024>, <ore:crushedPurifiedPollucite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2026>, <ore:crushedPurifiedBentonite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2027>, <ore:crushedPurifiedFullersEarth>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2028>, <ore:crushedPurifiedPitchblende>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2029>, <ore:crushedPurifiedMonazite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2031>, <ore:crushedPurifiedTrona>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2032>, <ore:crushedPurifiedGypsum>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2033>, <ore:crushedPurifiedZeolite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2064>, <ore:crushedPurifiedRedstone>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2507>, <ore:crushedPurifiedElectrotine>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2509>, <ore:crushedPurifiedDiatomite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2513>, <ore:crushedPurifiedGraniticMineralSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2515>, <ore:crushedPurifiedGarnetSand>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust_pure:2518>, <ore:crushedPurifiedBasalticMineralSand>, 2, null, 0);
// Переработка прочих предметов
Grinder.addRecipe(<minecraft:flint>, <ore:gravel>, 3, <minecraft:flint>, 0.1);
Grinder.addRecipe(<gregtech:meta_dust:271>, <minecraft:coal>, 3, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:266>, <minecraft:coal:1>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:271>, <tfc:ore/lignite>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:2002>, <tfc:ore/borax>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:103>, <tfc:ore/sulfur>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:313>, <tfc:ore/saltpeter>, 2, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:3120>, <tfc:ore/kaolinite>, 3, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:341>, <tfc:ore/graphite>, 3, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:2032>, <tfc:ore/gypsum>, 2, null, 0);
Grinder.addRecipe(<tfc:gem/diamond:2>, <tfc:ore/kimberlite>, 4, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:2007>, <tfc:ore/lapis_lazuli>, 3, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:268>, <tfc:ore/cinnabar>, 3, null, 0);
Grinder.addRecipe(<gregtech:meta_dust:1617>, <ore:plankWood>, 2, null, 0);
Grinder.addRecipe(<ca:coffee_beans_green>, <ca:coffee_cherries_dried>, 2, <ca:coffee_beans_green>, 0.05);
Grinder.addRecipe(<ca:coffee_ground>, <ca:coffee_beans>, 2, <ca:coffee_ground>, 0.05);

// Получение оливковой пасты
Grinder.addRecipe(<tfc:food/olive_paste> * 2, <tfc:food/olive>, 2, null, 0);


print("Initialized 'Applied Energistics 2'");