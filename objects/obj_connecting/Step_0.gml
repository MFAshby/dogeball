if (visible) {
	///Check if client is connected
	if (htme_clientIsConnected()) {
		room_goto(Game_online);
	}

	if (htme_clientConnectionFailed()) {
	    show_message("Dayuuum");
	    game_restart();
	}
}