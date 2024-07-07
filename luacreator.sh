#!/bin/sh

LUA_FILE="output.lua"

echo "return {" > "$LUA_FILE"

find . -name "*.ytd" | while read -r file; do
    name=$(basename "$file" .ytd)
    name=$(echo "$name" | sed 's/_/ /g')
    echo "    { model = '$name', name = '$name', brand = 'somebrand', price = 125000, category = 'compacts', type = 'automobile', shop = 'pdm' }," >> "$LUA_FILE"
done

echo "}" >> "$LUA_FILE"

echo "Done."