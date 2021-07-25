
#PlayerStorage[].hotbar[0]

## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].hotbar[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].hotbar[0].Slot

# Check if it's an hotbar item
#execute if score @s inventory_slot matches 0..8 run say hotbar
execute if score @s inventory_slot matches 0..8 run function thi_storage_lib:thi_storage_lib/sort_inventory/append_hotbar

# Check if it's an inventory item
#execute if score @s inventory_slot matches 9..35 run say inventory
execute if score @s inventory_slot matches 9..35 run function thi_storage_lib:thi_storage_lib/sort_inventory/append_inv

# Check if it's an off-hand item
#execute if score @s inventory_slot matches -106 run say off-hand
execute if score @s inventory_slot matches -106 run function thi_storage_lib:thi_storage_lib/sort_inventory/append_off-hand

# Check if it's an armor item
#execute if score @s inventory_slot matches 100..103 run say armor
execute if score @s inventory_slot matches 100..103 run function thi_storage_lib:thi_storage_lib/sort_inventory/append_armor

# Recall function
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/sort_inventory/inventory_sort
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find