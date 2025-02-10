spd = 0;

// Create Event
timer = 0;                 // Timer starts at 0 milliseconds
laps = 0;                  // Number of laps completed
max_laps = 3;              // Total laps required
running = false;           // Timer starts running only after crossing the line
has_started = false;       // Tracks if the player has started the race
lap_cooldown = 0;          // Cooldown timer to prevent multiple lap counts
cooldown_time = 30;        // Cooldown duration in frames
finish_time = "";          // Text to display final time (empty initially)

alarm_active = false;
global.final_time = 0;


// Initialize the hit_play flag
hit_play = true;