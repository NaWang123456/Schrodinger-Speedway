/// @description Insert description here
// You can write your code in this editor


/// Draw GUI Event of obj_minimap_controller
if surface_exists(minimap_surface) {
    surface_set_target(minimap_surface);
    draw_clear_alpha(c_black, 0);
    
    // Draw base water background
    draw_set_color(make_color_rgb(137, 207, 240)); // Light blue
    draw_rectangle(0, 0, minimap_width, minimap_height, false);
    
    // Draw all land objects dynamically
    draw_set_color(make_color_rgb(139, 69, 19)); // Green for land
    var land_objects = [oLand1, oLand2, oLand3, oLand4, oLand5, oLand6, oLand7, oLand8, oLand9];
    for (var i = 0; i < array_length(land_objects); i++) {
        var land_obj = land_objects[i];
        with (land_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            var mini_w = (sprite_width / room_width) * other.minimap_width;
            var mini_h = (sprite_height / room_height) * other.minimap_height;
            draw_rectangle(mini_x, mini_y, mini_x + mini_w, mini_y + mini_h, false);
        }
    }
	
	// Draw all glass objects dynamically
draw_set_color(make_color_rgb(107, 142, 35)); // Green for land
var glass_objects = [oGlass1, oGlass2, oGlass3, oGlass4, oGlass5, oGlass7, oGlassC01, oGlassC02, oGlassC03, oGlassC04];
for (var i = 0; i < array_length(glass_objects); i++) {
    var glass_obj = glass_objects[i];
    with (glass_obj) {
        var mini_x = (x / room_width) * other.minimap_width;
        var mini_y = (y / room_height) * other.minimap_height;
        var mini_w = (sprite_width / room_width) * other.minimap_width;
        var mini_h = (sprite_height / room_height) * other.minimap_height;
		 draw_rectangle(mini_x, mini_y, mini_x + mini_w, mini_y + mini_h, false);
    }
}

    // Draw all water objects dynamically
    draw_set_color(make_color_rgb(0, 119, 190)); // Deep blue for water
    var water_objects = [oWater01, oWater02, oWater03,oWater04]; // Add water object types
    for (var i = 0; i < array_length(water_objects); i++) {
        var water_obj = water_objects[i];
        with (water_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            var mini_w = (sprite_width / room_width) * other.minimap_width;
            var mini_h = (sprite_height / room_height) * other.minimap_height;
            draw_rectangle(mini_x, mini_y, mini_x + mini_w, mini_y + mini_h, false);
        }
    }
    
    
    // Draw bushes
    draw_set_color(make_color_rgb(144, 238, 144)); // Dark green for bushes
    var bush_objects = [oBush01, oBush02,oBush03,oBush04,oBush05,oBush06,oBush07]; // Add bush object types
    for (var i = 0; i < array_length(bush_objects); i++) {
        var bush_obj = bush_objects[i];
        with (bush_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            draw_circle(mini_x, mini_y, 3, false);
        }
    }
	
	  // Draw bushes
    draw_set_color(c_gray); // Dark gary for rocks
    var rocks_objects = [o_rock2,o_rocks1]; // Add bush object types
    for (var i = 0; i < array_length(rocks_objects); i++) {
        var rock_obj = rocks_objects[i];
        with (rock_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            draw_circle(mini_x, mini_y, 3, false);
        }
    }
    
    // Draw trees
    draw_set_color(make_color_rgb(34, 139, 34)); // Same green for trees
    var tree_objects = [oTree01_1, oTree01_2,oTree02_01,oTree03_01,oTree02_02,oTree03_02,oTree04_01,oTree04_02,oTree05_01,oTree05_02,oTree06_01,oTree06_02]; // Add tree object types
    for (var i = 0; i < array_length(tree_objects); i++) {
        var tree_obj = tree_objects[i];
        with (tree_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            draw_circle(mini_x, mini_y, 4, false);
        }
    }
    // Draw finish line
    draw_set_color(make_color_rgb(255, 102, 102));  // Same green for trees
    var finish_objects = [oFinishLine01,oFinishLine02]; // Add tree object types
    for (var i = 0; i < array_length(finish_objects); i++) {
        var finish_obj = finish_objects[i];
        with (finish_obj) {
            var mini_x = (x / room_width) * other.minimap_width;
            var mini_y = (y / room_height) * other.minimap_height;
            draw_circle(mini_x, mini_y, 4, false);
        }
    }
    
    // Draw boat
    draw_set_color(c_red); // Red for the player's boat
    with (oBoatR) {
        var mini_x = (x / room_width) * other.minimap_width;
        var mini_y = (y / room_height) * other.minimap_height;
        draw_circle(mini_x, mini_y, 3, false);
        
        // Draw boat direction
        var dir_x = mini_x + lengthdir_x(4, image_angle);
        var dir_y = mini_y + lengthdir_y(4, image_angle);
        draw_line(mini_x, mini_y, dir_x, dir_y);
    }
	
	 // Draw boat
    draw_set_color(c_black); // Red for the player's boat
    with (oRowboat_sailor4) {
        var mini_x = (x / room_width) * other.minimap_width;
        var mini_y = (y / room_height) * other.minimap_height;
        draw_circle(mini_x, mini_y, 3, false);
        
        // Draw boat direction
        var dir_x = mini_x + lengthdir_x(4, image_angle);
        var dir_y = mini_y + lengthdir_y(4, image_angle);
        draw_line(mini_x, mini_y, dir_x, dir_y);
    }
    
    surface_reset_target();
    
    // Position minimap in the bottom-right corner of the screen
    var gui_x = display_get_gui_width() - minimap_width - 20;
    var gui_y = display_get_gui_height() - minimap_height - 20;
    
    // Draw minimap background
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(gui_x - 5, gui_y - 5, gui_x + minimap_width + 5, gui_y + minimap_height + 5, false);
    draw_set_alpha(1);
    
    // Draw the minimap surface
    draw_surface(minimap_surface, gui_x, gui_y);
    
    // Draw border
    draw_set_color(c_white);
    draw_rectangle(gui_x - 5, gui_y - 5, gui_x + minimap_width + 5, gui_y + minimap_height + 5, true);
}
