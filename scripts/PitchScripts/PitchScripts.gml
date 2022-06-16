// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Pitch() constructor {
	pitch_id = -1;
	pitch_name = "";
	move_x = 0;
	move_y = 0;
	hover = false;
	selected = false;
}

function Fastball() : Pitch() constructor {
	pitch_id = 0;
	pitch_name = "Fastball";
	move_x = 0;
	move_y = 0;
}

function Curveball() : Pitch() constructor {
	pitch_id = 1;
	pitch_name = "Curveball";
	move_x = 0;
	move_y = 2;
}
