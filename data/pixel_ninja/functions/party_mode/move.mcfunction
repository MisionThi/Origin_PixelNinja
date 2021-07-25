

# move armor_stand
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 1..2 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [-0.18,0.5,0.0]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 3..4 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [-0.18,0.5,0.18]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 5..6 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [0.0,0.5,0.18]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 7..8 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [0.18,0.5,0.18]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 9..10 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [0.18,0.5,0.0]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 11..12 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [0.18,0.5,-0.18]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 13..14 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [0.0,0.5,-0.18]
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 15..16 if score @s pixel_party_t matches 25 run data modify entity @s Motion set value [-0.18,0.5,-0.18]

# look at players and effects
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_t matches 23 run tp @s ~ ~ ~ facing entity @p[distance=..10,sort=nearest]

# Give effects
execute as @e[type=minecraft:armor_stand,tag=party_stand,tag=m] at @s if entity @e[type=minecraft:armor_stand,distance=0..4] if score @s pixel_party_t matches 23 run effect give @a[distance=0..4] minecraft:jump_boost 10 1 true
execute as @e[type=minecraft:armor_stand,tag=party_stand,tag=m] at @s if entity @e[type=minecraft:armor_stand,distance=0..4] if score @s pixel_party_t matches 23 run effect give @a[distance=0..4] minecraft:regeneration 10 1 true

# Add to kill timer
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_t matches 25 run scoreboard players add @s pixel_party_k 1
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_t matches 25 if score @s pixel_party_k matches 64 run kill @s

# Add score
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches ..16 if score @s pixel_party_t matches 25 run scoreboard players add @s pixel_party_c 1
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_c matches 17 run scoreboard players set @s pixel_party_c 1

# Timer
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_t matches ..25 run scoreboard players add @s pixel_party_t 1
execute as @e[type=minecraft:armor_stand,tag=party_stand] at @s if score @s pixel_party_t matches 26 run scoreboard players set @s pixel_party_t 1

