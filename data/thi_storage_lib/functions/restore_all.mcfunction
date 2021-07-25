
# Check if in database
function thi_storage_lib:thi_storage_lib/find_target/find_target_in_base

# if database_succes 0
execute if score @s database_succes matches 0 run clear @s

# if database_succes 1
execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/set_temp/set_temp_from_storage
execute if score @s database_succes matches 1 run clear @s

execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_armor
execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_inv
execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_hotbar
execute if score @s database_succes matches 1 run function thi_storage_lib:thi_storage_lib/restore_inventory/16_restore_off-hand