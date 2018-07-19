# Impulse
effect give @e[type=shulker,tag=mm] minecraft:invisibility 999999 0 true
tag @e[type=armor_stand,tag=mmSelected] remove mmSelected

# Randomize color
function math:random7

execute if score #random7 math matches 1 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:red_banner 1
execute if score #random7 math matches 1 run tag @e[type=armor_stand,name=Mushroom,tag=Red] add mmSelected

execute if score #random7 math matches 2 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:yellow_banner 1
execute if score #random7 math matches 2 run tag @e[type=armor_stand,name=Mushroom,tag=Yellow] add mmSelected

execute if score #random7 math matches 3 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:lime_banner 1
execute if score #random7 math matches 3 run tag @e[type=armor_stand,name=Mushroom,tag=Green] add mmSelected

execute if score #random7 math matches 4 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:light_blue_banner 1
execute if score #random7 math matches 4 run tag @e[type=armor_stand,name=Mushroom,tag=LightBlue] add mmSelected

execute if score #random7 math matches 5 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:blue_banner 1
execute if score #random7 math matches 5 run tag @e[type=armor_stand,name=Mushroom,tag=Blue] add mmSelected

execute if score #random7 math matches 6 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:pink_banner 1
execute if score #random7 math matches 6 run tag @e[type=armor_stand,name=Mushroom,tag=Pink] add mmSelected

execute if score #random7 math matches 7 run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:black_banner 1
execute if score #random7 math matches 7 run tag @e[type=armor_stand,name=Mushroom,tag=Black] add mmSelected

# Activate mmDelay (done by loop function)
scoreboard objectives add mmDelay dummy
scoreboard players set @e[type=armor_stand,name=Global] mmDelay 0
