/// @description Insert description here
// You can write your code in this editor
hover = point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height) ? true : false;

if(mouse_check_button_pressed(mb_left) && hover) {
	show_debug_message("x = " + string(zone_x));
	show_debug_message("y = " + string(zone_y));
	
	with(oZone) {
		ClearZone();
	}
	
	with(oZonePreview) {
		ClearZone();
		SetPreview(other.zone_x,other.zone_y);	
	}
	
	
	
	if(selected) selected = false;
	else selected = true;
	
	with(oGame) {
		if(turn == 0) {
			pitcher_cell_x = other.zone_x;
			pitcher_cell_y = other.zone_y;
			loc_cell_x = other.zone_x + pitch_selected.move_x;
			loc_cell_y = other.zone_x + pitch_selected.move_y;
			turn++;
			show_debug_message(string(pitch_selected));
		} else if(turn == 1) {
			batter_cell_x = other.zone_x;
			batter_cell_y = other.zone_y;
			oZone.SetLocation(loc_cell_x,loc_cell_y);
			if(pitcher_cell_x == batter_cell_x && pitcher_cell_y == batter_cell_y) show_debug_message("hit");
			else show_debug_message("miss");
			
			turn = 0;
		} 
	}
}
