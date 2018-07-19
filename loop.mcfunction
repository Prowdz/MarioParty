# mmDelay
execute if entity @e[type=armor_stand,name=Global,scores={mmDelay=0..19}] run function minigame:mm/delay
# mmClock
execute if entity @e[type=armor_stand,name=Global,scores={mmSwitch=0..259}] run function minigame:mm/clock
# mmDeath
execute if entity @e[type=armor_stand,name=Global,tag=mmRepeat] run function minigame:mm/death
