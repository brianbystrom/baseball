/// @description Insert description here
// You can write your code in this editor
hover = point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height) ? true : false;

if(mouse_check_button_pressed(mb_left) && hover) {
	with(oPitchList) {
		ClearPitchList();
		other.selected = !other.selected;
		
	}
	
	with(oPitchList) {
		oGame.pitch_selected = pitchList[other.pitch_id];
	}
	
	show_debug_message(string(oGame.pitch_selected));
}