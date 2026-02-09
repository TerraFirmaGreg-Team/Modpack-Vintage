// MODS_LOADED: toolbelt
// ---- Добавление рецептов


// Поясная сумка
mods.minecraft.crafting.addShaped("toolbelt/pouch", item('toolbelt:pouch'), [
  [ore('string'), metaitem('ringGold'), ore('string')],
  [ore('leather'), null, ore('leather')],
  [ore('string'), ore('leather'), ore('string')]])

// Пояс
mods.minecraft.crafting.addShaped("toolbelt/belt", item('toolbelt:belt'), [
  [ore('string'), ore('leather'), ore('string')],
  [ore('leather'), null, ore('leather')],
  [ore('leather'), ore('ringIronAny'), ore('leather')]])
