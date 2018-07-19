# Repeating
scoreboard players add @e[type=armor_stand,name=Global,scores={mmDelay=0..}] mmDelay 1
execute if entity @e[type=armor_stand,name=Global,scores={mmDelay=20..}] run scoreboard objectives add mmSwitch dummy
execute if entity @e[type=armor_stand,name=Global,scores={mmDelay=20..}] run scoreboard players set @e[type=armor_stand,name=Global] mmSwitch 0
execute if entity @e[type=armor_stand,name=Global,scores={mmDelay=20..}] run scoreboard objectives remove mmDelay
