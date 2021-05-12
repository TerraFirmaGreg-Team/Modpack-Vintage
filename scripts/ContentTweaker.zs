#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

//Смесь стекла
VanillaFactory.createItem("glassmix").register();

//Аквамариновый песок - андезит
var cock = VanillaFactory.createBlock("aquamarine_andesite_sand", <blockmaterial:sand>);
cock.setBlockHardness(1.0);
cock.setBlockResistance(1.0);
cock.setBlockSoundType(<soundtype:sand>);
cock.register();

//Печной блок
var cock1 = VanillaFactory.createBlock("furnaceblock", <blockmaterial:rock>);
cock1.setBlockHardness(1.0);
cock1.setBlockResistance(1.0);
cock1.setBlockSoundType(<soundtype:stone>);
cock1.register();

//Базовая пластина
VanillaFactory.createItem("part_plate_basic").register();

//Улучшенная пластина
VanillaFactory.createItem("part_plate_advanced").register();

//Совершенная пластина
VanillaFactory.createItem("part_plate_du").register();

//Элитная пластина
VanillaFactory.createItem("part_plate_elite").register();

//Луна
VanillaFactory.createItem("moonturf").register();
VanillaFactory.createItem("moonsoil").register();
VanillaFactory.createItem("moonstone").register();

//Марс
VanillaFactory.createItem("marsturf").register();
VanillaFactory.createItem("marssoil").register();
VanillaFactory.createItem("marsstone").register();

//Венера
VanillaFactory.createItem("venusturf").register();
VanillaFactory.createItem("venussoil").register();

//Меркурий
VanillaFactory.createItem("mercuryturf").register();
VanillaFactory.createItem("mercurysoil").register();
VanillaFactory.createItem("mercurystone").register();

//Астероиды
VanillaFactory.createItem("asteroidstone1").register();
VanillaFactory.createItem("asteroidstone2").register();
VanillaFactory.createItem("asteroidstone3").register();

//Фобос
VanillaFactory.createItem("phobosturf").register();
VanillaFactory.createItem("phobossoil").register();
VanillaFactory.createItem("phobosstone").register();

//Феймос(Деймос)
VanillaFactory.createItem("deimosturf").register();
VanillaFactory.createItem("deimossoil").register();
VanillaFactory.createItem("deimosstone").register();

//Юпитер
VanillaFactory.createItem("jupiterturf").register();
VanillaFactory.createItem("jupitersoil").register();
VanillaFactory.createItem("jupiterstone").register();

//Сатурн
VanillaFactory.createItem("saturnturf").register();
VanillaFactory.createItem("saturnsoil").register();
VanillaFactory.createItem("saturnstone").register();

//Уран
VanillaFactory.createItem("uranturf").register();
VanillaFactory.createItem("uransoil").register();
VanillaFactory.createItem("uranstone").register();

//Нептун
VanillaFactory.createItem("neptuneturf").register();
VanillaFactory.createItem("neptunesoil").register();
VanillaFactory.createItem("neptunestone").register();

//Плутон
VanillaFactory.createItem("plutoturf").register();
VanillaFactory.createItem("plutosoil").register();
VanillaFactory.createItem("plutostone").register();
