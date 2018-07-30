///Check if engine running
if (!htme_isStarted()) {
    show_message("Oh noooooooo");
    game_restart();
}