// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ClearZone() {
	for(var _i = 0; _i < zone_w; _i++) {
		for(var _j = 0; _j < zone_h; _j++) {
			zone[_i][_j].selected = false;
		}
	}
}