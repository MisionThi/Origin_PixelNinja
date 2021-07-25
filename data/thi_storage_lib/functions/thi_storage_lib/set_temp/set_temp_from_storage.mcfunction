## Stores all the storage data in an storage

# Clear the `Temp` storage
data modify storage tools:temp PlayerStorage set value []

# Store Inventory in `Temp` storage
data modify storage tools:temp PlayerStorage[].inventory set from storage tools:player_storage player_storage[0][0].PlayerStorage[].inventory

# Store target in `Temp` storage
data modify storage tools:temp PlayerStorage[].target set from storage tools:player_storage player_storage[0][0].PlayerStorage[].target

# Store hotbar
data modify storage tools:temp PlayerStorage[].hotbar set from storage tools:player_storage player_storage[0][0].PlayerStorage[].hotbar

# store off hand
data modify storage tools:temp PlayerStorage[].off-hand set from storage tools:player_storage player_storage[0][0].PlayerStorage[].off-hand

# store inventory
data modify storage tools:temp PlayerStorage[].inv set from storage tools:player_storage player_storage[0][0].PlayerStorage[].inv

# store armor
data modify storage tools:temp PlayerStorage[].armor set from storage tools:player_storage player_storage[0][0].PlayerStorage[].armor