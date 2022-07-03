import crafttweaker.item.IItemStack;

// --- Массивы

val ItemsToRemove as IItemStack[] = [
  <weather2:tornado_sensor>,
  <weather2:tornado_siren>,
  <weather2:tornado_siren_manual>,
  <weather2:weather_forecast>,
  <weather2:weather_deflector>,
  <weather2:sand_layer_placeable>,
  <weather2:pocket_sand>,
  <weather2:weather_item>,
  <weather2:weather_machine>,
  <weather2:anemometer>,
  <weather2:wind_vane>
];

// --- Удаление рецептов

// Удаление рецептов
for item in ItemsToRemove{
    recipes.remove(item);
}

// --- Добавление рецептов

// Анемометр
recipes.addShaped("tfg/weather2/anemometer", <weather2:anemometer>, [
    [<ore:screwIronAny>, <ore:gearIronAny>, <ore:screwIronAny>],
    [null, <ore:stickLongIronAny>, null],
    [<ore:screwIronAny>, <ore:gtce.tool.screwdrivers>, <ore:screwIronAny>]]);

// Флюгер
recipes.addShaped("tfg/weather2/wind_vane", <weather2:wind_vane>, [
    [<ore:stickLongIronAny>, <ore:gearIronAny>, <ore:stickLongIronAny>],
    [null, <ore:stickLongIronAny>, null],
    [<ore:screwIronAny>, <ore:gtce.tool.screwdrivers>, <ore:screwIronAny>]]);

// Датчик торнадо
assembler.recipeBuilder()
    .circuit(1)
    .inputs(<ore:rotorIronAny> * 2, <ore:circuitLv>, <ore:springIronAny> * 2, <metaitem:sensor.lv> * 2, <metaitem:stickRedAlloy>, <weather2:anemometer>, <weather2:wind_vane>)
    .outputs(<weather2:tornado_sensor>)
    .duration(100).EUt(30).buildAndRegister();

// Сирена торнадо
assembler.recipeBuilder()
    .circuit(2)
    .inputs(<ore:rotorIronAny> * 2, <weather2:tornado_sensor>, <ore:circuitMv>, <ore:rotorSteel> * 2, <metaitem:sensor.mv> * 2, <metaitem:stickRedAlloy>)
    .outputs(<weather2:tornado_siren>)
    .duration(200).EUt(90).buildAndRegister();

// Погодо-радар
assembler.recipeBuilder()
    .circuit(3)
    .inputs(<ore:rotorIronAny> * 2, <ore:circuitLv>, <ore:springIronAny> * 2, <ore:gearSmallIronAny> * 2, <metaitem:stickRedAlloy>, <minecraft:compass>)
    .outputs(<weather2:weather_forecast>)
    .duration(300).EUt(30).buildAndRegister();

// Отражатель погоды
assembler.recipeBuilder()
    .circuit(4)
    .inputs(<ore:rotorIronAny> * 2, <ore:circuitEv>, <metaitem:rotorTitanium> * 2, <metaitem:laserCarbonDioxide> * 2, <metaitem:stickRedAlloy>)
    .outputs(<weather2:weather_deflector>)
    .duration(100).EUt(1900).buildAndRegister();

// Ручная редстоун сирена
assembler.recipeBuilder()
    .circuit(5)
    .inputs(<ore:rotorIronAny> * 2, <ore:springIronAny> * 2, <ore:gearSmallIronAny> * 2, <metaitem:stickRedAlloy>, <weather2:tornado_sensor>, <minecraft:lever> * 2)
    .fluidInputs(<liquid:redstone> * 20)
    .outputs(<weather2:tornado_siren_manual>)
    .duration(100).EUt(7).buildAndRegister();
