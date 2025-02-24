/// @description Insert description here
// You can write your code in this editor


// Draw GUI Event
if (menu_visible) {
    // Draw semi-transparent background overlay
    draw_set_alpha(0.8);
    draw_set_color(c_moss_green);
    draw_rectangle(0, 0, gui_width, gui_height, false);
    
    // Draw menu background with a nature theme
    draw_set_alpha(0.9);
    draw_set_color(c_leaf_green);
    draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, false);
    
    // Reset alpha
    draw_set_alpha(1);
    
    // Draw title with a more natural feel
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(gui_width/2, menu_y + 30, "PAUSE MENU");
    
    // Draw buttons with nature theme
    for (var i = 0; i < button_count; i++) {
        var hover = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
            button_x, button_y[i], button_x + button_width, button_y[i] + button_height);
        
        // Draw button background - brown normally, green when hovering
        draw_set_color(hover ? c_forest_green : c_bark_brown);
        draw_rectangle(button_x, button_y[i], 
            button_x + button_width, button_y[i] + button_height, false);
        
        // Draw button text
        draw_set_color(c_white);
        draw_text(button_x + button_width/2, button_y[i] + button_height/2, 
            button_text[i]);
    }
    
    // Reset draw settings
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}