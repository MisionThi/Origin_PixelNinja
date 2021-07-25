
# Check if in database
function thi_storage_lib:thi_storage_lib/find_target/find_target_in_base

# Store info in temp
function thi_storage_lib:thi_storage_lib/set_temp/set_temp_from_player

# if database_succes 0
execute if score @s database_succes matches 0 run function thi_storage_lib:thi_storage_lib/insert_to_player_storage

# if database_succes 1
execute if score @s database_succes matches 1 run data remove storage tools:player_storage player_storage[0][0]
execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/insert_to_player_storage