
## Checks if the first one in the database is the person that's calling it

# Store target in PlayerID_temp from storage
execute store result score @s PlayerID_temp run data get storage tools:player_storage player_storage[0][0].PlayerStorage[].target

# Compare data from PlayerID_temp and PlayerID and stores result in PlayerID_check
execute store success score @s PlayerID_check if score @s PlayerID = @s PlayerID_temp

#tellraw @a ["",{"score":{"name":"@s","objective":"PlayerID_check"}}," Current target"]