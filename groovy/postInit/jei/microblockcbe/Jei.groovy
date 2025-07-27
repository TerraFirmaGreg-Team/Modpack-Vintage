// MODS_LOADED: microblockcbe


def removeAndHide = [
  item('microblockcbe:microblock:1'),
  item('microblockcbe:saw_stone'),
  item('microblockcbe:saw_iron'),
  item('microblockcbe:saw_diamond'),
  item('microblockcbe:stone_rod')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
