/// @description Player movement

speed = spd;
image_angle = direction;
if(keyboard_check(vk_right)) direction = direction - 5 ;
if(keyboard_check(vk_left)) direction = direction + 5;
if(keyboard_check(vk_up)) spd=spd+0.5 ;
if(keyboard_check(vk_down)) spd=spd - 0.5;

// Depth sorting
depth =- y;


// Step Event
// Start the timer when any arrow key is pressed
if (!has_started && (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down))) {
    has_started = true;  // The race has officially started
    running = true;      // Start the timer
}

// Update the timer if running
if (running) {
    timer += delta_time; // Increment timer in milliseconds
}

// Decrement the lap cooldown timer
if (lap_cooldown > 0) {
    lap_cooldown -= 1;
}


if (laps == max_laps && !alarm_active) {
	if (!global.isMuted) {
	audio_play_sound(winning_sound, 1, false);
	}
    alarm[0] = room_speed * 4; // Set a 5-second delay
    alarm_active = true;
    global.final_time = timer; // Save the timer value
}


if (!global.isMuted) {
    // Define a point for the head of the boat (adjust the offset as needed)
    var head_offset_x = lengthdir_x(16, direction); // 16 is an example offset; adjust as needed
    var head_offset_y = lengthdir_y(16, direction); // Adjust the offset accordingly to the head position

    // Check if the head of the boat is touching the stone (obj_stone)
    if (place_meeting(x + head_offset_x, y + head_offset_y, o_rocks1) || place_meeting(x + head_offset_x, y + head_offset_y, o_rock2)) {
        if (hit_play) {
            // Play the sound once
            audio_play_sound(hit_Stone, 10, false);
            hit_play = false;  // Prevent the sound from playing repeatedly
        }
    } 
	 // Check if the head of the boat is touching the ship (obj_ship)
    else if (place_meeting(x + head_offset_x, y + head_offset_y, oRowboat_sailor4)) {
        if (hit_play) {
            // Play the ship hit sound once
            audio_play_sound(hit_boat, 10, false);
            hit_play = false;  // Prevent the sound from playing repeatedly
        }
    }
    // Check if the head of the boat is touching the fish (obj_fish)
    else if (place_meeting(x + head_offset_x, y + head_offset_y, oShip_manofwar)) {
        if (hit_play) {
            // Play the fish hit sound once
            audio_play_sound(hit_ship, 10, false);
            hit_play = false;  // Prevent the sound from playing repeatedly
        }
    } 
	 else if (place_meeting(x + head_offset_x, y + head_offset_y, oWhale_swimming)) {
        if (hit_play) {
            // Play the fish hit sound once
            audio_play_sound(hit_fish, 10, false);
            hit_play = false;  // Prevent the sound from playing repeatedly
        }
    } else if (place_meeting(x + head_offset_x, y + head_offset_y, oBarrel01) || 
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel02) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel03) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel04) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel05) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel06) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel07) ||
    place_meeting(x + head_offset_x, y + head_offset_y, oBarrel08)) {
    
    // Debugging: Print to the console to confirm collision is detected
    show_debug_message("Collision Detected!");

//var head_offset_x = lengthdir_x(16, direction);  // Adjust 16 based on how far ahead you want the splash
//var head_offset_y = lengthdir_y(16, direction); 
    // Create the splash effect at the collision point
   //var splash = instance_create_layer(x + head_offset_x, y + head_offset_y, "Obastacle_with_path", oWater_splash);
if (hit_play) {
            // Play the fish hit sound once
            audio_play_sound(waterBubble, 10, false); //
            hit_play = false;  // Prevent the sound from playing repeatedly
        }    
}
	
	else {
        // Reset hit_play when the boat is no longer colliding with the stone
        hit_play = true;
    }
}