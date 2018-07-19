# Impulse
effect @e[type=shulker,tag=mm] minecraft:invisibility 999999 0 true
tag @e[type=armor_stand,tag=mmSelected] remove mmSelected

# Randomize color
function math:random7

execute if score #random7 math matches 1 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 1
execute if score #random7 math matches 1 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Red] add mmSelected

execute if score #random7 math matches 2 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 11
execute if score #random7 math matches 2 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Yellow] add mmSelected

execute if score #random7 math matches 3 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 10
execute if score #random7 math matches 3 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Green] add mmSelected

execute if score #random7 math matches 4 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 12
execute if score #random7 math matches 4 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=LightBlue] add mmSelected

execute if score #random7 math matches 5 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 4
execute if score #random7 math matches 5 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Blue] add mmSelected

execute if score #random7 math matches 6 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 9
execute if score #random7 math matches 6 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Pink] add mmSelected

execute if score #random7 math matches 7 run replaceitem entity @e[type=armor_stand,name=Hi] slot.armor.head minecraft:banner 1 0
execute if score #random7 math matches 7 run scoreboard players tag @e[type=armor_stand,name=Mushroom,tag=Black] add mmSelected

# Activate mmDelay
scoreboard objectives add mmDelay dummy
scoreboard players set @e[type=armor_stand,name=Global] mmDelay 0
