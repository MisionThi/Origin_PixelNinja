## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Copy data to shulker
execute if score @s inventory_find matches 1 run setblock ~ 0 ~ minecraft:shulker_box
#execute if score @s inventory_find matches 1 run data modify block ~ ~-1 ~ Items set from storage tools:temp PlayerStorage[].hotbar

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].hotbar[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].hotbar[0].Slot


## copy part

# correct slot number
data modify storage tools:temp PlayerStorage[].hotbar[0].Slot set value 0

# copy to shulker
data modify block ~ 0 ~ Items[] set from storage tools:temp PlayerStorage[].hotbar[0]

## if slot 0-8
execute if score @s inventory_slot matches 0 run loot replace entity @s hotbar.0 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 1 run loot replace entity @s hotbar.1 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 2 run loot replace entity @s hotbar.2 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 3 run loot replace entity @s hotbar.3 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 4 run loot replace entity @s hotbar.4 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 5 run loot replace entity @s hotbar.5 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 6 run loot replace entity @s hotbar.6 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 7 run loot replace entity @s hotbar.7 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}
execute if score @s inventory_slot matches 8 run loot replace entity @s hotbar.8 1 mine ~ 0 ~ minecraft:air{drop_contents: 1b}



# call next in hotbar
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/next_in_hotbar

# Recall function
execute if score @s inventory_find < @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_hotbar

# Remove Shulker
execute if score @s inventory_find >= @s inventory_count run setblock ~ 0 ~ minecraft:bedrock

# Reset scoreboard value for next time
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find