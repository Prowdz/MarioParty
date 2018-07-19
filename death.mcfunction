# Repeating
tag @a[x=45,y=57,z=-650,dx=60,dy=4,dz=60,mode=adventure,tag=!Dead] add Dying
tag @a[tag=Dying] add Dead
tp @a[tag=Dying] ~ 60 ~
execute as @a[tag=Dying] at @s summon squid ~ 60 ~ {NoAI:1b,Invulnerable:1b,Tags:["Blooper"]}
tag @a remove Dying
execute as @e[x=74,y=57,z=-650,dx=28,dy=4,dz=60,tag=Blooper] at @s run teleport @p[mode=adventure,tag=Dead] ~ ~ ~ 90 ~
execute as @e[x=74,y=57,z=-650,dx=28,dy=4,dz=60,tag=Blooper] at @s run teleport @e[x=74,y=57,z=-650,dx=28,dy=4,dz=60,tag=Blooper,c=1] ~0.2 ~0.0 ~0.0
execute as @e[x=45,y=57,z=-650,dx=28,dy=4,dz=60,tag=Blooper] at @s run teleport @p[mode=adventure,tag=Dead] ~ ~ ~ -90 ~
execute as @e[type=squid,tag=Blooper] at @s particle bubble ~ ~-0.5 ~ 0.5 0 0.5 0.2 2
tp @e[x=45,y=57,z=-650,dx=28,dy=4,dz=60,tag=Blooper] ~-0.2 ~0.0 ~0.0

# For the bloopers
execute if @e[x=45,y=57,z=-650,dx=56,dy=4,dz=60,tag=Blooper] run teleport @e[type=squid,tag=Blooper] ~ -200 ~
execute if @e[x=45,y=57,z=-650,dx=56,dy=4,dz=60,tag=Blooper] run teleport @a[tag=Dead,mode=adventure] 74.0 80 -637
execute if @e[x=45,y=57,z=-650,dx=56,dy=4,dz=60,tag=Blooper] run tag @a remove Dead
