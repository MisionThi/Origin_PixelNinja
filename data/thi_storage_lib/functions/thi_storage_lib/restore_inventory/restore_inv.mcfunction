## Sets up for loop
# Add 1 to inventory_find_find so we can track where we are
scoreboard players add @s inventory_find 1

# Copy data to shulker
execute if score @s inventory_find matches 1 run setblock ~ 0 ~ minecraft:shulker_box

# Counts the amount of items in the database
execute if score @s inventory_find matches 1 store result score @s inventory_count if data storage tools:temp PlayerStorage[].inv[{}]

# put slotnumber in an scoreboard
execute store result score @s inventory_slot run data get storage tools:temp PlayerStorage[].inv[0].Slot

## if slot 9
# correct slot number
execute if score @s inventory_slot matches 9 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 0
# place in shulker
execute if score @s inventory_slot matches 9 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 9 run item replace entity @s container.9 from block ~ 0 ~ container.0

## if slot 10
# correct slot number
execute if score @s inventory_slot matches 10 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 1
# place in shulker
execute if score @s inventory_slot matches 10 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 10 run item replace entity @s container.10 from block ~ 0 ~ container.1

## if slot 11
# correct slot number
execute if score @s inventory_slot matches 11 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 2
# place in shulker
execute if score @s inventory_slot matches 11 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 11 run item replace entity @s container.11 from block ~ 0 ~ container.2

## if slot 12
# correct slot number
execute if score @s inventory_slot matches 12 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 3
# place in shulker
execute if score @s inventory_slot matches 12 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 12 run item replace entity @s container.12 from block ~ 0 ~ container.3

## if slot 13
# correct slot number
execute if score @s inventory_slot matches 13 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 4
# place in shulker
execute if score @s inventory_slot matches 13 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 13 run item replace entity @s container.13 from block ~ 0 ~ container.4

## if slot 14
# correct slot number
execute if score @s inventory_slot matches 14 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 5
# place in shulker
execute if score @s inventory_slot matches 14 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 14 run item replace entity @s container.14 from block ~ 0 ~ container.5

## if slot 15
# correct slot number
execute if score @s inventory_slot matches 15 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 6
# place in shulker
execute if score @s inventory_slot matches 15 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 15 run item replace entity @s container.15 from block ~ 0 ~ container.6

## if slot 16
# correct slot number
execute if score @s inventory_slot matches 16 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 7
# place in shulker
execute if score @s inventory_slot matches 16 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 16 run item replace entity @s container.16 from block ~ 0 ~ container.7

## if slot 17
# correct slot number
execute if score @s inventory_slot matches 17 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 8
# place in shulker
execute if score @s inventory_slot matches 17 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 17 run item replace entity @s container.17 from block ~ 0 ~ container.8

## if slot 18
# correct slot number
execute if score @s inventory_slot matches 18 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 9
# place in shulker
execute if score @s inventory_slot matches 18 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 18 run item replace entity @s container.18 from block ~ 0 ~ container.9

## if slot 19
# correct slot number
execute if score @s inventory_slot matches 19 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 10
# place in shulker
execute if score @s inventory_slot matches 19 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 19 run item replace entity @s container.19 from block ~ 0 ~ container.10

## if slot 20
# correct slot number
execute if score @s inventory_slot matches 20 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 11
# place in shulker
execute if score @s inventory_slot matches 20 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 20 run item replace entity @s container.20 from block ~ 0 ~ container.11

## if slot 21
# correct slot number
execute if score @s inventory_slot matches 21 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 12
# place in shulker
execute if score @s inventory_slot matches 21 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 21 run item replace entity @s container.21 from block ~ 0 ~ container.12

## if slot 22
# correct slot number
execute if score @s inventory_slot matches 22 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 13
# place in shulker
execute if score @s inventory_slot matches 22 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 22 run item replace entity @s container.22 from block ~ 0 ~ container.13

## if slot 23
# correct slot number
execute if score @s inventory_slot matches 23 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 14
# place in shulker
execute if score @s inventory_slot matches 23 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 23 run item replace entity @s container.23 from block ~ 0 ~ container.14

## if slot 24
# correct slot number
execute if score @s inventory_slot matches 24 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 15
# place in shulker
execute if score @s inventory_slot matches 24 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 24 run item replace entity @s container.24 from block ~ 0 ~ container.15

## if slot 25
# correct slot number
execute if score @s inventory_slot matches 25 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 16
# place in shulker
execute if score @s inventory_slot matches 25 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 25 run item replace entity @s container.25 from block ~ 0 ~ container.16

## if slot 26
# correct slot number
execute if score @s inventory_slot matches 26 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 17
# place in shulker
execute if score @s inventory_slot matches 26 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 26 run item replace entity @s container.26 from block ~ 0 ~ container.17

## if slot 27
# correct slot number
execute if score @s inventory_slot matches 27 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 18
# place in shulker
execute if score @s inventory_slot matches 27 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 27 run item replace entity @s container.27 from block ~ 0 ~ container.18

## if slot 28
# correct slot number
execute if score @s inventory_slot matches 28 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 19
# place in shulker
execute if score @s inventory_slot matches 28 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 28 run item replace entity @s container.28 from block ~ 0 ~ container.19

## if slot 29
# correct slot number
execute if score @s inventory_slot matches 29 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 20
# place in shulker
execute if score @s inventory_slot matches 29 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 29 run item replace entity @s container.29 from block ~ 0 ~ container.20

## if slot 30
# correct slot number
execute if score @s inventory_slot matches 30 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 21
# place in shulker
execute if score @s inventory_slot matches 30 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 30 run item replace entity @s container.30 from block ~ 0 ~ container.21

## if slot 31
# correct slot number
execute if score @s inventory_slot matches 31 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 22
# place in shulker
execute if score @s inventory_slot matches 31 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 31 run item replace entity @s container.31 from block ~ 0 ~ container.22

## if slot 32
# correct slot number
execute if score @s inventory_slot matches 32 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 23
# place in shulker
execute if score @s inventory_slot matches 32 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 32 run item replace entity @s container.32 from block ~ 0 ~ container.23

## if slot 33
# correct slot number
execute if score @s inventory_slot matches 33 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 24
# place in shulker
execute if score @s inventory_slot matches 33 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 33 run item replace entity @s container.33 from block ~ 0 ~ container.24

## if slot 34
# correct slot number
execute if score @s inventory_slot matches 34 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 25
# place in shulker
execute if score @s inventory_slot matches 34 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 34 run item replace entity @s container.34 from block ~ 0 ~ container.25

## if slot 35
# correct slot number
execute if score @s inventory_slot matches 35 run data modify storage tools:temp PlayerStorage[].inv[0].Slot set value 26
# place in shulker
execute if score @s inventory_slot matches 35 run data modify block ~ 0 ~ Items set from storage tools:temp PlayerStorage[].inv
# give to player
execute if score @s inventory_slot matches 35 run item replace entity @s container.35 from block ~ 0 ~ container.26


# call next in inv
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/next_in_inv

# Recall function
execute if score @s inventory_find <= @s inventory_count run function thi_storage_lib:thi_storage_lib/restore_inventory/restore_inv

# Remove Shulker
execute if score @s inventory_find >= @s inventory_count run setblock ~ 0 ~ minecraft:bedrock

# Reset scoreboard value for next time
execute if score @s inventory_find >= @s inventory_count run scoreboard players reset @s inventory_find

