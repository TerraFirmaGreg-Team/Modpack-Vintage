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

//ПЛАНЕТЫ
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

//СПУТНИКИ
//Луна
VanillaFactory.createItem("moonturf").register();
VanillaFactory.createItem("moonsoil").register();
VanillaFactory.createItem("moonstone").register();
//Фобос
VanillaFactory.createItem("phobosturf").register();
VanillaFactory.createItem("phobossoil").register();
VanillaFactory.createItem("phobosstone").register();
//Деймос
VanillaFactory.createItem("deimosturf").register();
VanillaFactory.createItem("deimossoil").register();
VanillaFactory.createItem("deimosstone").register();
//Ио
VanillaFactory.createItem("IOturf").register();
VanillaFactory.createItem("IOsoil").register();
VanillaFactory.createItem("IOstone").register();
//Европа(Юпитер)
VanillaFactory.createItem("Europaturf").register();
VanillaFactory.createItem("Europasoil").register();
VanillaFactory.createItem("Europastone").register();
//Ганимед(Юпитер)
VanillaFactory.createItem("Ganymedeturf").register();
VanillaFactory.createItem("Ganymedesoil").register();
VanillaFactory.createItem("Ganymedestone").register();
//Каллисто(Юпитер)
VanillaFactory.createItem("Callistoturf").register();
VanillaFactory.createItem("Callistosoil").register();
VanillaFactory.createItem("Callistostone").register();
//Рея(Сатурн)
VanillaFactory.createItem("Rheaturf").register();
VanillaFactory.createItem("Rheasoil").register();
VanillaFactory.createItem("Rheastone").register();
//Титан(Сатурн)
VanillaFactory.createItem("Titanturf").register();
VanillaFactory.createItem("Titansoil").register();
VanillaFactory.createItem("Titanstone").register();
//Япетус(Сатурн)
VanillaFactory.createItem("Iapetusturf").register();
VanillaFactory.createItem("Iapetussoil").register();
VanillaFactory.createItem("Iapetusstone").register();
//Титания(Уран)
VanillaFactory.createItem("Titaniaturf").register();
VanillaFactory.createItem("Titaniasoil").register();
VanillaFactory.createItem("Titaniastone").register();
//Оберон(Уран)
VanillaFactory.createItem("Oberonturf").register();
VanillaFactory.createItem("Oberonsoil").register();
VanillaFactory.createItem("Oberonstone").register();
//Тритон(Нептун)
VanillaFactory.createItem("Tritoneturf").register();
VanillaFactory.createItem("Tritonesoil").register();
VanillaFactory.createItem("Tritonestone").register();
