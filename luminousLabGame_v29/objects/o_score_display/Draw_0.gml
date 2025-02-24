// Step 1: Convert milliseconds to seconds
var total_seconds = global.final_time div 1000;

// Step 2: Calculate minutes and remaining seconds
var minutes = total_seconds div 60;         // Get the whole number of minutes
var seconds = total_seconds mod 60;         // Get the remaining seconds

// Step 3: Format the time string
var time_text = string(minutes) + ":" + string_format(seconds, 2, 0) + " seconds";

// Step 4: Calculate the center of the room
var room_center_x = room_width / 2;
var room_center_y = room_height / 2;

// Step 5: Get the dimensions of the text

var text_width = string_width(time_text);
var text_height = string_height(time_text);

// Step 6: Draw the text at the center
draw_set_font(fnt_large);
draw_text(room_center_x - text_width / 2, room_center_y - text_height / 2, time_text);
