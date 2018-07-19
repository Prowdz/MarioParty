#Generates a random number between 1 and 7 (inclusive)


# Create Entity UUID
summon minecraft:area_effect_cloud ~0 ~0 ~0 {Tags:["random7"]}
# Get Seed
execute store result score #mgprng:seed math run data get entity @e[tag=random7,limit=1] UUIDMost 0.0000000000003328306434
# Get Mult
execute store result score #mgprng:mult math run data get entity @e[tag=random7,limit=1] UUIDMost 0.0000000000000028306434
# Get Modulo
execute store result score #mgprng:modu math run data get entity @e[tag=random7,limit=1] UUIDMost 0.0000000000000048306434

# Create Non-Zero Seed
scoreboard players add #mgprng:seed math 1
# Create Non-Zero Multiplier
scoreboard players add #mgprng:mult math 1
# Create Non-Zero Modulo
scoreboard players add #mgprng:modu math 1

# Multiply Seed
scoreboard players operation #mgprng:seed math *= #mgprng:mult math
# Modulo Seed
scoreboard players operation #mgprng:seed math %= #mgprng:modu math
# Create Positive Seed
execute if score #mgprng:seed math matches ..-1 run scoreboard players operation #mgprng:seed math *= #-1 number

# Result
scoreboard players operation #random7 math = #mgprng:seed math
scoreboard players operation #random7 math %= #7 number
scoreboard players operation #random7 math += #1 number
