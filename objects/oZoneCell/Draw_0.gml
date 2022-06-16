/// @description Insert description here
// You can write your code in this editor
if(hover || selected) sprite_index = sZoneSelected;
else sprite_index = sZone;

if(location) sprite_index = sZoneLocation;
//else sprite_index = sZone;

draw_self();