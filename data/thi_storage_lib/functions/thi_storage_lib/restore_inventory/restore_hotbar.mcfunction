
## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Copy data to shulker
execute if score @s inventory_find matches 1 run setblock ~ 0 ~ minecraft:shulker_box
execute if score @s inventory_find matches 1 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].hotbar

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].hotbar[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].hotbar[0].Slot

# if slot 0
execute if score @s inventory_slot matches 0 run item replace entity @s hotbar.0 from block ~ 0 ~ container.0

# if slot 1
execute if score @s inventory_slot matches 1 run item replace entity @s hotbar.1 from block ~ 0 ~ container.1

# if slot 2
execute if score @s inventory_slot matches 2 run item replace entity @s hotbar.2 from block ~ 0 ~ container.2

# if slot 3
execute if score @s inventory_slot matches 3 run item replace entity @s hotbar.3 from block ~ 0 ~ container.3

# if slot 4
execute if score @s inventory_slot matches 4 run item replace entity @s hotbar.4 from block ~ 0 ~ container.4

# if slot 5
execute if score @s inventory_slot matches 5 run item replace entity @s hotbar.5 from block ~ 0 ~ container.5

# if slot 6
execute if score @s inventory_slot matches 6 run item replace entity @s hotbar.6 from block ~ 0 ~ container.6

# if slot 7
execute if score @s inventory_slot matches 7 run item replace entity @s hotbar.7 from block ~ 0 ~ container.7

# if slot 8
execute if score @s inventory_slot matches 8 run item replace entity @s hotbar.8 from block ~ 0 ~ container.8

# call next in hotbar
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/next_in_hotbar

# Recall function
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/restore_hotbar

# Remove Shulker
execute if score @s inventory_find >= @s inventory_count run setblock ~ 0 ~ minecraft:bedrock

# Reset scoreboard value for next time
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find