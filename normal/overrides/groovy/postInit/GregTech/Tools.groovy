

def tongs_wood = item('gregtech:tongs').withNbt([DisallowContainerItem: (byte) 0, "GT.Tool": [Material: "wood", MaxDurability: 400, Durability: 0, AttackDamage: 5.0F, AttackSpeed: -2.4F], HideFlags: 2, "GT.Behaviours": []])

// --- Добавление рецептов

// Щипцы из дерева
crafting.addShaped('tfg/gt/tongs_wood', tongs_wood, [
        [null, ore('stickWood')],
        [ore('stickWood'), ore('string')]
])