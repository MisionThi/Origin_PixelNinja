## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Copy data to shulker
execute if score @s inventory_find matches 1 run setblock ~ 0 ~ minecraft:shulker_box
#execute if score @s inventory_find matches 1 run data modify block ~ ~-1 ~ Items set from storage tools:temp PlayerStorage[].inv

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].inv[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].inv[0].Slot


## copy part

# correct slot number
data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 0

# copy to shulker
data modify block ~ 0 ~ Items[] set from storage tools:temp PlayerStorage[].inv[0]

## if slot 0-8
execute if score @s inventory_slot matches 9 run loot replace entity @s container.9 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 10 run loot replace entity @s container.10 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 11 run loot replace entity @s container.11 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 12 run loot replace entity @s container.12 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 13 run loot replace entity @s container.13 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 14 run loot replace entity @s container.14 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 15 run loot replace entity @s container.15 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 16 run loot replace entity @s container.16 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 17 run loot replace entity @s container.17 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 18 run loot replace entity @s container.18 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 19 run loot replace entity @s container.19 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 20 run loot replace entity @s container.20 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 21 run loot replace entity @s container.21 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 22 run loot replace entity @s container.22 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 23 run loot replace entity @s container.23 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 24 run loot replace entity @s container.24 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 25 run loot replace entity @s container.25 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 26 run loot replace entity @s container.26 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 27 run loot replace entity @s container.27 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 28 run loot replace entity @s container.28 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 29 run loot replace entity @s container.29 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 30 run loot replace entity @s container.30 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 31 run loot replace entity @s container.31 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 32 run loot replace entity @s container.32 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 33 run loot replace entity @s container.33 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 34 run loot replace entity @s container.34 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 35 run loot replace entity @s container.35 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}




# call next in inv
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/next_in_inv

# Recall function
execute if score @s inventory_find < @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_inv

# Remove Shulker
execute if score @s inventory_find >= @s inventory_count run setblock ~ 0 ~ minecraft:bedrock

# Reset scoreboard value for next time
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find