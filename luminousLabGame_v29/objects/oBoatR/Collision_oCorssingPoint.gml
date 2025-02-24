
// Collision with obj_finish_line
if (has_started && lap_cooldown == 0) {
    if (laps < max_laps) {
        laps += 1;        // Increment the lap counter
        lap_cooldown = cooldown_time; // Set cooldown to avoid multiple counts
        
        if (laps == max_laps) {
            running = false; // Stop the timer
            var minutes = floor(timer / 60000);       // Calculate minutes
            var seconds = floor((timer % 60000) / 1000); // Calculate seconds
            //show_message("Finished! Time: " + string(minutes) + ":" + string_format(seconds, 2, 0));
			//draw_text(10, 10, "Time: " + string(minutes) + ":" + string_format(seconds, 2, 0) + " seconds");
			
			// Store the finish time as a string
            finish_time = "Finished! Time: " + string(minutes) + ":" + string_format(seconds, 2, 0) + " seconds";
        }
    }
}