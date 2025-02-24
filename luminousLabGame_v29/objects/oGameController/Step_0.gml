/// @description Insert description here
// You can write your code in this editor


// Step Event
if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("M"))) {
    if (!menu_visible) {
        // Pause game
        menu_visible = true;
        game_paused = true;
        timer_paused = true;
        audio_pause_sound(game_view);
        instance_deactivate_all(true);
        instance_activate_object(oGameController);
    } else {
        // Resume game
        menu_visible = false;
        game_paused = false;
        timer_paused = false;
        audio_resume_sound(game_view);
        instance_activate_all();
    }
}

// Handle menu button interactions
if (menu_visible) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    for (var i = 0; i < button_count; i++) {
        if (point_in_rectangle(mx, my, button_x, button_y[i], 
            button_x + button_width, button_y[i] + button_height)) {
            
            if (mouse_check_button_pressed(mb_left)) {
                switch (i) {
                    case 0:  // RESUME
                        menu_visible = false;
                        game_paused = false;
                        timer_paused = false;
                        audio_resume_sound(game_view);
                        instance_activate_all();
                        break;
                        
                    case 1:  // RESTART
                        game_restart();
                        break;
                        
                    case 2:  // QUIT
                        game_end();
                        break;
                }
            }
        }
    }
}