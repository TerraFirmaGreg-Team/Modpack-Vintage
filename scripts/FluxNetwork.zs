//Отключение рецептов
recipes.remove(<fluxnetworks:fluxblock>);
recipes.remove(<fluxnetworks:fluxcontroller>);
recipes.remove(<fluxnetworks:fluxcore>);
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.remove(<fluxnetworks:fluxplug>);
recipes.remove(<fluxnetworks:fluxpoint>);

//Конфигуратор сети
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.addShaped(<fluxnetworks:fluxconfigurator>,
[[null, <ore:plateIron>, <ore:plateIron>],
 [<ore:plateIron>, <minecraft:ender_eye>, <ore:plateIron>],
 [<gregtech:meta_item_2:19231>, <ore:plateIron>, null]]);