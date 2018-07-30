// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_controls1global.__objectDepths[1] = 0; // obj_controls2global.__objectDepths[2] = 0; // obj_quit_buttonglobal.__objectDepths[3] = 0; // obj_titleglobal.__objectDepths[4] = 0; // obj_play_buttonglobal.__objectDepths[5] = 0; // obj_retry_buttonglobal.__objectDepths[6] = -1; // obj_ball_pickedupglobal.__objectDepths[7] = -1; // obj_ball_pickedup2global.__objectDepths[8] = 1; // obj_ballglobal.__objectDepths[9] = 0; // obj_playerglobal.__objectDepths[10] = 1; // obj_shadow_playerglobal.__objectDepths[11] = 0; // obj_arrowglobal.__objectDepths[12] = 0; // obj_ball_player1global.__objectDepths[13] = 0; // obj_player2global.__objectDepths[14] = 100; // obj_shadow_player2global.__objectDepths[15] = 0; // obj_arrow2global.__objectDepths[16] = 0; // obj_ball_player2global.__objectDepths[17] = 0; // obj_boundary

global.__objectNames[0] = "obj_controls1";global.__objectNames[1] = "obj_controls2";global.__objectNames[2] = "obj_quit_button";global.__objectNames[3] = "obj_title";global.__objectNames[4] = "obj_play_button";global.__objectNames[5] = "obj_retry_button";global.__objectNames[6] = "obj_ball_pickedup";global.__objectNames[7] = "obj_ball_pickedup2";global.__objectNames[8] = "obj_ball";global.__objectNames[9] = "obj_player";global.__objectNames[10] = "obj_shadow_player";global.__objectNames[11] = "obj_arrow";global.__objectNames[12] = "obj_ball_player1";global.__objectNames[13] = "obj_player2";global.__objectNames[14] = "obj_shadow_player2";global.__objectNames[15] = "obj_arrow2";global.__objectNames[16] = "obj_ball_player2";global.__objectNames[17] = "obj_boundary";

global.__objectDepths[18] = -9999; // obj_htme


global.__objectNames[18] = "obj_htme";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for