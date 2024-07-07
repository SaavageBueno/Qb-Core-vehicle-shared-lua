#!/bin/sh

LUA_FILE="output.lua"

echo "return {" > "$LUA_FILE"

find . -name "*.ytd" | while read -r file; do
    name=$(basename "$file" .ytd)
    name=$(echo "$name" | sed 's/_/ /g')
    brand=$(dirname "$file" | xargs dirname | xargs basename)
    echo "    { model = '$name', name = '$name', brand = '$brand', price = 125000, category = 'compacts', type = 'automobile', shop = 'pdm' }," >> "$LUA_FILE"
done

echo "}" >> "$LUA_FILE"

echo "Done."