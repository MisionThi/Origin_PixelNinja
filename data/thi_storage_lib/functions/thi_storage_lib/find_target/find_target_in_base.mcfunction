
##

## Sets up for loop
# Add 1 to database_find so we can track where we are
scoreboard players add @s database_find 1

# Counts the amount of targets in the database
execute if score @s database_find matches 1 store result score @s database_count if data storage tools:player_storage player_storage[0][{}]


## Checks if correct target and returns value in `PlayerID_check`
function thi_storage_lib:thi_storage_lib/find_target/check_in_base_target

# if true
#execute if score @s PlayerID_check matches 1 run say found
execute if score @s PlayerID_check matches 1 run scoreboard players set @s database_succes 1

# if false
#execute if score @s PlayerID_check matches 0 run say not found next
execute if score @s PlayerID_check matches 0 run function thi_storage_lib:thi_storage_lib/find_target/next_in_base
#execute if score @s PlayerID_check matches 0 run function thi_storage_lib:thi_storage_lib/find_target/next_in_base

# Recall function
execute if score @s PlayerID_check matches 0 if score @s database_find <= @s database_count run function thi_storage_lib:thi_storage_lib/find_target/find_target_in_base

# If not in database
execute if score @s PlayerID_check matches 0 if score @s database_find >= @s database_count run scoreboard players set @s database_succes 0
#execute if score @s PlayerID_check matches 0 if score @s database_find >= @s database_count run say not in database

# Reset
scoreboard players reset @s database_find

