import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("extracpus");


// --- Добавление рецептов

// Crafting Storage 256k
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:0>
    ])
    .outputs([<extracpus:crafting_storage_256k>])
    .duration(40).EUt(480).buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_256k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:0>
    ])
    .duration(40).EUt(480).buildAndRegister();

// Crafting Storage 1024k
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:1>
    ])
    .outputs([<extracpus:crafting_storage_1024k>])
    .duration(40).EUt(480).buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_1024k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:1>
    ])
    .duration(40).EUt(480).buildAndRegister();

// Crafting Storage 4096k
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:2>
    ])
    .outputs([<extracpus:crafting_storage_4096k>])
    .duration(40).EUt(480).buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_4096k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:2>
    ])
    .duration(40).EUt(480).buildAndRegister();

// Crafting Storage 16384k
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:3>
    ])
    .outputs([<extracpus:crafting_storage_16384k>])
    .duration(40).EUt(480).buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_16384k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <extracells:storage.component:3>
    ])
    .duration(40).EUt(480).buildAndRegister();