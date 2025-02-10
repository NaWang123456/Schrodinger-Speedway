// Draw Event
draw_self(); // Draw the player sprite

// Get the camera's position
var cam_x = camera_get_view_x(view_camera[0]); // X position of the camera
var cam_y = camera_get_view_y(view_camera[0]); // Y position of the camera

// Define the text positions relative to the camera
var text_x = cam_x + 10; // Offset from the left edge of the view
var text_y = cam_y + 10; // Offset from the top edge of the view

// Calculate minutes and seconds
var minutes = floor(timer / 60000);
var seconds = floor((timer % 60000) / 1000);


// Draw the timer
draw_set_font(fnt_default);
draw_set_color(c_white);
draw_text(text_x, text_y, "Time: " + string(minutes) + ":" + string_format(seconds, 2, 0) + " seconds");

// Draw the laps
draw_set_font(fnt_default);
draw_text(text_x, text_y + 20, "Laps: " + string(laps) + "/" + string(max_laps));

// Draw the final time if race is completed
if (laps == max_laps) {
    draw_set_color(c_yellow);
    draw_text(text_x, text_y + 40, finish_time);
}
