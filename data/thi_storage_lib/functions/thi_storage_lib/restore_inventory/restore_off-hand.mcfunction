## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Copy data to shulker
execute if score @s inventory_find matches 1 run setblock ~ 0 ~ minecraft:shulker_box

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].off-hand[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].off-hand[0].Slot

## if off-hand
# correct slot number
execute if score @s inventory_slot matches -106 run data modify storage tools:temp PlayerStorage[].off-hand[].Slot set value 0
# place in shulker
execute if score @s inventory_slot matches 0 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].off-hand
# give to player
execute if score @s inventory_slot matches 0 run item replace entity @s weapon.offhand from block ~ 0 ~ container.0

# Recall function
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/restore_off-hand

# Remove Shulker
execute if score @s inventory_find >= @s inventory_count run setblock ~ 0 ~ minecraft:bedrock

# Reset scoreboard value for next time
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find