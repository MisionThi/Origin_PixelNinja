
# append to off-hand
data modify storage tools:temp PlayerStorage[].off-hand append from storage tools:temp PlayerStorage[].hotbar[0]

# remove from hotbar
data remove storage tools:temp PlayerStorage[].hotbar[0]