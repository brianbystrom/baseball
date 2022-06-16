/// @description Insert description here
// You can write your code in this editor

zone_w = 4;
zone_h = 5;
spacer = 5;

zone_loc_x = window_get_width()/2-(sprite_width*(zone_w/2) + spacer);
zone_loc_y = window_get_height()/3-(sprite_height*(zone_h/2) + spacer);

show_debug_message(string(zone_loc_x) + " " + string(zone_loc_y));

zone = [];

for(var _i = 0; _i < zone_w; _i++) {
	for(var _j = 0; _j < zone_h; _j++) {
		var _cell = instance_create_layer(zone_loc_x+_i*(sprite_width+spacer),zone_loc_y+_j*(sprite_height+spacer),layer,oZoneCell);
		zone[_i][_j] = _cell;
		_cell.zone_x = _i;
		_cell.zone_y = _j;
	}
}

SetPreview = function(x,y) {
	zone[x][y].selected = true;
}