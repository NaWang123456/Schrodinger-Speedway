// Check if the mouse is over this instance and the left button is pressed
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    switch (sprite_index) {
        case sIcon_Mute:
            sprite_index = sIcon_Unmute;
            audio_play_sound(sfx_button_click, 1, false);
            global.isMuted = false; // Set unmuted state
            
            // Play the music for the current room
            if (room == StartingRoom) {
                var sound_id = audio_play_sound(title_music, 1, false);
                audio_sound_set_track_position(sound_id, 18.0); // Set playback position
            } else if (room == GameViewRoom) {
                audio_play_sound(game_view, 1, true);
            }
            break;
        
        case sIcon_Unmute:
            sprite_index = sIcon_Mute;
            audio_play_sound(sfx_button_click, 1, false);
            global.isMuted = true; // Set muted state
            
            // Stop all music
            audio_stop_all();
            break;
    }
}

// Initialize the icon state based on mute state
if (global.isMuted) {
    sprite_index = sIcon_Mute;  // Set to mute icon sprite
} else {
    sprite_index = sIcon_Unmute;  // Set to unmute icon sprite
}