// MODS_LOADED: theoneprobe


def removeAndHide = [
  item('theoneprobe:creativeprobe'),
  item('theoneprobe:probenote'),
  item('theoneprobe:diamond_helmet_probe'),
  item('theoneprobe:gold_helmet_probe'),
  item('theoneprobe:iron_helmet_probe')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
