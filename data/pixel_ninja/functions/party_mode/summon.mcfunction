
# summon armor_stand
execute as @s at @s positioned ~3 ~ ~ run summon armor_stand ~ ~ ~ {Tags:["party_stand","x+","summon"],Invulnerable:1b,DisabledSlots:4144959,NoBasePlate:1b,ShowArms:1b}
execute as @s at @s positioned ~-3 ~ ~ run summon armor_stand ~ ~ ~ {Tags:["party_stand","x-","summon"],Invulnerable:1b,DisabledSlots:4144959,NoBasePlate:1b,ShowArms:1b}
execute as @s at @s positioned ~ ~ ~3 run summon armor_stand ~ ~ ~ {Tags:["party_stand","z+","summon"],Invulnerable:1b,DisabledSlots:4144959,NoBasePlate:1b,ShowArms:1b}
execute as @s at @s positioned ~ ~ ~-3 run summon armor_stand ~ ~ ~ {Tags:["party_stand","z-","summon"],Invulnerable:1b,DisabledSlots:4144959,NoBasePlate:1b,ShowArms:1b}
execute as @s at @s positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:["party_stand","m","summon"],Invulnerable:1b,Invisible:1b}

#
execute as @e[type=minecraft:armor_stand,limit=1,tag=party_stand,tag=x+,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_c 14
execute as @e[type=minecraft:armor_stand,limit=1,tag=party_stand,tag=x-,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_c 6
execute as @e[type=minecraft:armor_stand,limit=1,tag=party_stand,tag=z+,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_c 10
execute as @e[type=minecraft:armor_stand,limit=1,tag=party_stand,tag=z-,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_c 2


# Set timer and kill
execute as @e[type=minecraft:armor_stand,tag=party_stand,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_t 1
execute as @e[type=minecraft:armor_stand,tag=party_stand,tag=summon] at @s if entity @s run scoreboard players set @s pixel_party_k 1

# Align
execute as @e[type=minecraft:armor_stand,tag=party_stand,tag=summon] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~ ~ ~