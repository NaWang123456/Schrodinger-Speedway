/// @description Insert description here
// You can write your code in this editor




// Initialize menu variables
menu_visible = false;
game_paused = false;
timer_paused = false;
stored_timer_value = 0;

// GUI dimensions
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

// Menu dimensions
menu_width = 300;
menu_height = 350;
menu_x = (gui_width - menu_width) / 2;
menu_y = (gui_height - menu_height) / 2;

// Button settings
button_width = 180;
button_height = 40;
button_spacing = 20;
button_count = 3;  // Make sure this matches the number of items in button_text array
button_text = ["RESUME", "RESTART", "QUIT"];
button_y_start = menu_y + 80;

// Nature theme colors
c_leaf_green = make_color_rgb(34, 139, 34);
c_forest_green = make_color_rgb(85, 130, 85);
c_bark_brown = make_color_rgb(139, 69, 19);
c_moss_green = make_color_rgb(60, 80, 60);

// Calculate button positions
button_x = menu_x + (menu_width - button_width) / 2;
button_y = array_create(button_count);
for (var i = 0; i < button_count; i++) {
    button_y[i] = button_y_start + (button_height + button_spacing) * i;
}

// Make the controller persistent
persistent = true;