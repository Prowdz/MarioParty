# Impulse
effect give @e[type=shulker,tag=mm] minecraft:invisibility 999999 0 true
tag @e[type=armor_stand,tag=mmSelected] remove mmSelected

# Randomize Color

tag @e[type=armor_stand,name=Mushroom,sort=random,limit=1] add mmR

execute as @e[tag=mmR,tag=Red] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:red_banner 1
execute as @e[tag=mmR,tag=Red] run tag @e[type=armor_stand,name=Mushroom,tag=Red] add mmSelected

execute as @e[tag=mmR,tag=Yellow] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:yellow_banner 1
execute as @e[tag=mmR,tag=Yellow] run tag @e[type=armor_stand,name=Mushroom,tag=Yellow] add mmSelected

execute as @e[tag=mmR,tag=Green] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:lime_banner 1
execute as @e[tag=mmR,tag=Green] run tag @e[type=armor_stand,name=Mushroom,tag=Green] add mmSelected

execute as @e[tag=mmR,tag=Blue] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:blue_banner 1
execute as @e[tag=mmR,tag=Blue] run tag @e[type=armor_stand,name=Mushroom,tag=Blue] add mmSelected

execute as @e[tag=mmR,tag=LightBlue] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:light_blue_banner 1
execute as @e[tag=mmR,tag=LightBlue] run tag @e[type=armor_stand,name=Mushroom,tag=LightBlue] add mmSelected

execute as @e[tag=mmR,tag=Pink] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:pink_banner 1
execute as @e[tag=mmR,tag=Pink] run tag @e[type=armor_stand,name=Mushroom,tag=Pink] add mmSelected

execute as @e[tag=mmR,tag=Black] run replaceitem entity @e[type=armor_stand,name=Hi] armor.head minecraft:black_banner 1
execute as @e[tag=mmR,tag=Black] run tag @e[type=armor_stand,name=Mushroom,tag=Black] add mmSelected

tag @e[type=armor_stand,name=Mushroom] remove mmR

# Activate mmDelay (done by loop function)
scoreboard objectives add mmDelay dummy
scoreboard players set @e[type=armor_stand,name=Global] mmDelay 0
