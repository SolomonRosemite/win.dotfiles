#!/usr/bin/env bash

set -e

home_path=$(wslpath $(powershell.exe '$env:USERPROFILE' | tr -d '\r'))
temp_dir="$home_path/AppData/Local/Temp"
win_terminal_settings="$home_path/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"

json_file=$(cat "$win_terminal_settings")

blur_img() {
    bg_image_win_path=$(echo "$json_file" | jq -r '.profiles.defaults.backgroundImageOriginal')
    bg_image_wsl_path=$(wslpath "$bg_image_win_path")

    blur_sigma=$(echo "$json_file" | jq -r '.profiles.defaults.blurSigma // "10"')
    blur="0x$blur_sigma"
    output="$temp_dir/$RANDOM-$blur-$(basename "$bg_image_wsl_path")"
    magick "$bg_image_wsl_path" -blur "$blur" "$output"
    output_win_path=$(wslpath -w "$output" | tr "\\" "/" 2> /dev/null)

    opacity=$(echo "$json_file" | jq -r '.profiles.defaults.backgroundImageOpacityWithBlur')
    new_json=$(echo "$json_file" | jq ".profiles.defaults.backgroundImage = \"$output_win_path\" | .profiles.defaults.backgroundImageOpacity = $opacity")
    echo "$new_json" > "$win_terminal_settings"
}

if [[ $1 = "--increase-blur" ]]; then
    blur_sigma=$(echo "$json_file" | jq -r '.profiles.defaults.blurSigma // "10"')
    blur_sigma=$((blur_sigma + $2)) 
    new_json=$(echo "$json_file" | jq ".profiles.defaults.blurSigma = $blur_sigma")
    json_file=$new_json
    blur_img
    exit 0
fi

if [[ $1 = "--decrease-blur" ]]; then
    blur_sigma=$(echo "$json_file" | jq -r '.profiles.defaults.blurSigma // "10"')
    blur_sigma=$((blur_sigma - $2)) 
    new_json=$(echo "$json_file" | jq ".profiles.defaults.blurSigma = $blur_sigma")
    json_file=$new_json
    blur_img
    exit 0
fi

if [[ $1 = "--blur" ]]; then
    blur_img
    exit 0
fi

if [[ $1 = "--unblur" ]]; then
    bg_image_win_path=$(echo "$json_file" | jq -r '.profiles.defaults.backgroundImageOriginal')
    opacity=$(echo "$json_file" | jq -r '.profiles.defaults.backgroundImageOpacityWithoutBlur')
    new_json=$(echo "$json_file" | jq ".profiles.defaults.backgroundImage = \"$bg_image_win_path\" | .profiles.defaults.backgroundImageOriginal = \"$bg_image_win_path\" | .profiles.defaults.backgroundImageOpacity = $opacity")
    echo "$new_json" > "$win_terminal_settings"
    exit 0
fi

if [[ $1 = "--rotate" ]]; then
    dirs=$(echo "$json_file" | jq '.profiles.defaults.sources[]' | xargs -I{} wslpath {})
    new_random_image=$(find $dirs -type f 2>/dev/null | shuf -n 1 | xargs wslpath -w | tr "\\" "/" 2> /dev/null)

    opacity=$(echo "$json_file" | jq -r '.profiles.defaults.backgroundImageOpacityWithoutBlur')
    new_json=$(echo "$json_file" | jq ".profiles.defaults.backgroundImage = \"$new_random_image\" | .profiles.defaults.backgroundImageOriginal = \"$new_random_image\" | .profiles.defaults.backgroundImageOpacity = $opacity")
    echo "$new_json" > "$win_terminal_settings"
    exit 0
fi

