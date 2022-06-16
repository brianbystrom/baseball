/// @description Insert description here
// You can write your code in this editor
pitchList = [];
pitchSelect = [];

pitchList[0] = new Fastball();
pitchList[1] = new Curveball();

pitchList_width = 200;
pitchList_x = window_get_width() - pitchList_width;
pitchList_y = 100;
spacer = 10;

oGame.pitch_selected = pitchList[0];

for(var _i = 0; _i < array_length(pitchList); _i++) {
	//create object
	var _opt = instance_create_layer(pitchList_x - spacer,pitchList_y + (sprite_height + spacer) * _i,layer,oPitchOption);
	_opt.pitch_id = pitchList[_i].pitch_id;
	_opt.pitch_name = pitchList[_i].pitch_name;
	_opt.move_x = pitchList[_i].move_x;
	_opt.move_y = pitchList[_i].move_y;
	
	pitchSelect[_i] = _opt;
	//draw_text(pitchList_x, pitchList_y + (spacer * _i), pitchList[_i].name);
}