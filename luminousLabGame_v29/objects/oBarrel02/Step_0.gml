/// @description Insert description here
// You can write your code in this editor


// Check if the boat is active
if (!is_active) {
    // Start movement when UP arrow is pressed
    if (keyboard_check_pressed(vk_up)) {
        is_active = true;    // Activate the boat
        speed = 0.5;           // Set the speed
        path_position = 0;   // Reset the path position
    }
    return; // Exit if the boat is not active
}

// If active, move the boat along the path
if (is_active) {
    // Increment the path position by speed
    path_position += speed / path_get_length(path_barrel02);

    // Loop to the start of the path if it reaches the end
    if (path_position >= 1) {
        path_position -= 1; // Wrap around to the beginning
    }

    // Get the current position on the path
    var current_x = path_get_x(path_barrel02, path_position);
    var current_y = path_get_y(path_barrel02, path_position);

    // Calculate the next position for smooth direction calculation
    var next_position = path_position + 0.01;
    if (next_position > 1) next_position -= 1;

    var next_x = path_get_x(path_barrel02, next_position);
    var next_y = path_get_y(path_barrel02, next_position);

    // Calculate and smoothly adjust the direction
    var desired_angle = point_direction(current_x, current_y, next_x, next_y);
    path_direction += angle_difference(desired_angle, path_direction) / turn_speed;

    // Update the boat's position
    x = current_x;
    y = current_y;

    // Optional: Store the angle for debugging or future use
    angle = path_direction;
}


