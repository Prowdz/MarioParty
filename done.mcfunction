# Impulse
tag @e[type=armor_stand,name=Mushroom,tag=mmSelected] remove mmSelected
tp @e[type=armor_stand,name=Mushroom] ~ 70.5 ~
tag @a remove Dead
execute if entity @e[type=armor_stand,name=Global,tag=mmRepeat] run function minigame:mm/start
