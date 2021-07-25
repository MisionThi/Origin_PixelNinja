## Stores all the players data in an storage

# Clear the `Temp` storage
data modify storage tools:temp PlayerStorage set value []

# Store Inventory in `Temp` storage
data modify storage tools:temp PlayerStorage[].inventory set from entity @s Inventory

# Store UUID in `Temp` storage
execute store result storage tools:temp PlayerStorage[].target int 1 run scoreboard players get @s PlayerID

# Store hotbar
data modify storage tools:temp PlayerStorage[].hotbar set from entity @s Inventory

# store off hand
data modify storage tools:temp PlayerStorage[].off-hand set value []

# store inventory
data modify storage tools:temp PlayerStorage[].inv set value []

# store armor
data modify storage tools:temp PlayerStorage[].armor set value []

# sort itens
function thi_storage_lib:thi_storage_lib/sort_inventory/inventory_sort
