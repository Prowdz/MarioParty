# Repeating
execute as @e[x=65,y=58,z=-636,dx=20,dy=3,dz=16,type=armor_stand,name=Mushroom] at @s positioned ~ ~2 ~ run setblock ~ 60 ~ cyan_stained_glass
execute as @e[type=armor_stand,tag=Center] at @s positioned ~ ~2 ~ run fill ~ ~-1 ~ ~ ~-3 ~ minecraft:red_mushroom_block[down=false,up=false,north=false,east=false,south=false,west=false] replace cyan_stained_glass
effect give @a[x=65,y=57,z=-636,dx=20,dy=14,dz=16] instant_health 1 30 true
effect give @a[x=65,y=57,z=-636,dx=20,dy=14,dz=16] instant_health 1 30 true
execute as @e[type=armor_stand,tag=Center] at @s positioned ~ ~2 ~ run fill ~ ~-2 ~ ~ ~-1 ~ minecraft:red_mushroom_block[down=false,up=false,north=false,east=false,south=false,west=false] replace air
effect give @a[x=65,y=57,z=-636,dx=20,dy=14,dz=16] instant_health 1 30 true
tag @e[type=armor_stand,name=Global] remove mmWait
execute if @a[x=65,y=61,z=-633,dx=17,dy=3,dz=14] run tag @e[type=armor_stand,name=Global,score_mmSwitch=130,score_mmSwitch_min=130] add mmWait
scoreboard players set @e[type=armor_stand,name=Global,tag=mmWait]
scoreboard players add @e[type=armor_stand,name=Global,tag=!mmWait] mmSwitch 1
execute if entity @e[type=armor_stand,name=Global,scores={mmSwitch=131..261}] as @e[type=armor_stand,name=Mushroom,tag=!mmSelected] at @s positioned ~ ~0.5 ~ execute as @e[type=shulker,limit=1,dy=2] at @s run teleport @a[dx=0,dy=1,dz=0] ~ ~1 ~
execute if @e[type=armor_stand,name=Global,scores={mmSwitch=1..130},tag=!mmWait] run tp @e[type=armor_stand,name=Mushroom,tag=!mmSelected] ~ ~-0.1 ~
execute if @e[type=armor_stand,name=Global,scores={mmSwitch=131..260},tag=!mmWait] run tp @e[type=armor_stand,name=Mushroom,tag=!mmSelected] ~ ~0.1 ~
execute as @e[type=armor_stand,name=Global,scores={mmSwitch=260..}] run function minigame:mm/done
execute as @e[type=armor_stand,name=Global,scores={mmSwitch=260..}] run scoreboard objectives remove mmSwitch
