#!/bin/bash

# Generate API documentation from RaylibIntrinsics.cpp
# Outputs a markdown file with a table of all wrapped functions by module

INPUT_FILE="src/RaylibIntrinsics.cpp"
OUTPUT_FILE="RAYLIB_API.md"

echo "# MSRLWeb Raylib API Reference" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "This document lists all Raylib functions available in MSRLWeb, organized by module." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Generated from: $INPUT_FILE" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Extract functions for each module
extract_functions() {
    local module_name=$1
    local start_pattern=$2

    # Find all SetValue calls between the start pattern and the next "}" at column 1
    awk '
        /^static void '"$start_pattern"'\(/ { in_section=1; next }
        in_section && /^}$/ { in_section=0 }
        in_section && /raylibModule\.SetValue\("/ {
            match($0, /"([^"]+)"/)
            fname = substr($0, RSTART+1, RLENGTH-2)
            if (fname != "") print fname
        }
    ' "$INPUT_FILE" | sort
}

# Extract functions for each module
echo "Extracting rcore functions..."
RCORE_FUNCS=($(extract_functions "rcore" "AddRCoreMethods"))

echo "Extracting rshapes functions..."
RSHAPES_FUNCS=($(extract_functions "rshapes" "AddRShapesMethods"))

echo "Extracting rtextures functions..."
RTEXTURES_FUNCS=($(extract_functions "rtextures" "AddRTexturesMethods"))

echo "Extracting rtext functions..."
RTEXT_FUNCS=($(extract_functions "rtext" "AddRTextMethods"))

echo "Extracting raudio functions..."
RAUDIO_FUNCS=($(extract_functions "raudio" "AddRAudioMethods"))

# Get the maximum count to know how many rows we need
MAX_COUNT=${#RCORE_FUNCS[@]}
[ ${#RSHAPES_FUNCS[@]} -gt $MAX_COUNT ] && MAX_COUNT=${#RSHAPES_FUNCS[@]}
[ ${#RTEXTURES_FUNCS[@]} -gt $MAX_COUNT ] && MAX_COUNT=${#RTEXTURES_FUNCS[@]}
[ ${#RTEXT_FUNCS[@]} -gt $MAX_COUNT ] && MAX_COUNT=${#RTEXT_FUNCS[@]}
[ ${#RAUDIO_FUNCS[@]} -gt $MAX_COUNT ] && MAX_COUNT=${#RAUDIO_FUNCS[@]}

# Write summary
echo "## Summary" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "- **rcore**: ${#RCORE_FUNCS[@]} functions" >> "$OUTPUT_FILE"
echo "- **rshapes**: ${#RSHAPES_FUNCS[@]} functions" >> "$OUTPUT_FILE"
echo "- **rtextures**: ${#RTEXTURES_FUNCS[@]} functions" >> "$OUTPUT_FILE"
echo "- **rtext**: ${#RTEXT_FUNCS[@]} functions" >> "$OUTPUT_FILE"
echo "- **raudio**: ${#RAUDIO_FUNCS[@]} functions" >> "$OUTPUT_FILE"
echo "- **Total**: $((${#RCORE_FUNCS[@]} + ${#RSHAPES_FUNCS[@]} + ${#RTEXTURES_FUNCS[@]} + ${#RTEXT_FUNCS[@]} + ${#RAUDIO_FUNCS[@]})) functions" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Write the table
echo "## Functions by Module" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "| rcore | rshapes | rtextures | rtext | raudio |" >> "$OUTPUT_FILE"
echo "|-------|---------|-----------|-------|--------|" >> "$OUTPUT_FILE"

# Write each row
for ((i=0; i<$MAX_COUNT; i++)); do
    ROW="| "

    # rcore
    if [ $i -lt ${#RCORE_FUNCS[@]} ]; then
        ROW+="${RCORE_FUNCS[$i]}"
    fi
    ROW+=" | "

    # rshapes
    if [ $i -lt ${#RSHAPES_FUNCS[@]} ]; then
        ROW+="${RSHAPES_FUNCS[$i]}"
    fi
    ROW+=" | "

    # rtextures
    if [ $i -lt ${#RTEXTURES_FUNCS[@]} ]; then
        ROW+="${RTEXTURES_FUNCS[$i]}"
    fi
    ROW+=" | "

    # rtext
    if [ $i -lt ${#RTEXT_FUNCS[@]} ]; then
        ROW+="${RTEXT_FUNCS[$i]}"
    fi
    ROW+=" | "

    # raudio
    if [ $i -lt ${#RAUDIO_FUNCS[@]} ]; then
        ROW+="${RAUDIO_FUNCS[$i]}"
    fi
    ROW+=" |"

    echo "$ROW" >> "$OUTPUT_FILE"
done

echo "" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "*Generated on $(date)*" >> "$OUTPUT_FILE"

echo ""
echo "Documentation generated: $OUTPUT_FILE"
echo ""
echo "Summary:"
echo "  rcore:      ${#RCORE_FUNCS[@]} functions"
echo "  rshapes:    ${#RSHAPES_FUNCS[@]} functions"
echo "  rtextures:  ${#RTEXTURES_FUNCS[@]} functions"
echo "  rtext:      ${#RTEXT_FUNCS[@]} functions"
echo "  raudio:     ${#RAUDIO_FUNCS[@]} functions"
echo "  ---"
echo "  Total:      $((${#RCORE_FUNCS[@]} + ${#RSHAPES_FUNCS[@]} + ${#RTEXTURES_FUNCS[@]} + ${#RTEXT_FUNCS[@]} + ${#RAUDIO_FUNCS[@]})) functions"
