audio_play_sound(quack,1,false);

if (htme_serverStart(6510,2)) {
	room_goto(Game_online);
    // obj_waiting.visible = true;
	// obj_cancel_host.visible = true;
} else {
    show_message("Could not start server! Check your network configuration!");
    game_end();
}