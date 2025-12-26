#!/usr/bin/env bash
set -e

mod_name=FleetPresetManager_Linux
artifacts=(
  "mod_info.json"
  "license"
  "data"
  "jars/FleetPresetManagerJAR.jar"
)

dist_modpath="dist/$mod_name"

rm -rf dist
mkdir dist
mkdir "$dist_modpath"

for i in "${artifacts[@]}"
do
   cp -r --parents "$i" "$dist_modpath"
done

cd dist
tar -cvf "$mod_name.tar.gz" "$mod_name"
rm -rf "$mod_name"
