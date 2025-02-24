
// Create Event
alarm[0] = room_speed * 40;  // (assuming room_speed = 60, it's 300 frames)


// Create Event for obj_credits

// Initialize scroll offset
//y_offset = -100;  // Start the scroll from above the screen (negative value)
y_offset = room_height;  

font_credits = font_add("Arial", 24, false, false, -1, true);  // Load font if necessary (optional)

font_large = font_add("Arial", 32, false, false, -1, true);
font_xlarge = font_add("Arial", 48, false, false, -1, true);


// Create Event for obj_credits
credit_text = "Game Development Team:\n\n" +
"Lenard Abraham\n" +
"Sravya Kamineni\n" +
"Monchida Rujimethapas\n" +
"Na Wang\n" +
"Game Engine: GameMaker\n\n" +
"________________________________________\n\n" +
"Music & Sound Credits:\n" +
"Eilish, B. (Artist). (2018). bad guy [Video]. YouTube. https://www.youtube.com/watch?v=r8ks_BQx1ck\n" +
"Shakira. (Artist). (2010). Waka Waka (This time for Africa) [Video]. YouTube. https://www.youtube.com/watch?v=xh0OtnliFAc\n" +
"Psy. (Artist). (2012). Gangnam Style [Video]. YouTube. https://www.youtube.com/watch?v=PqtrtcWsxSw\n" +
"Talking Tom Soundboard. (n.d.). Talking Tom Sound [Soundboard]. 101soundboards. https://www.101soundboards.com/boards/36553-talking-tom-soundboard\n" +
"Soundsnap. (n.d.). Water hit [Sound effect]. https://www.soundsnap.com/tags/water_hit\n\n" +
"Copyright © 2025 Luminous Lab\nAll Rights Reserved\nThank you for playing the game! We hope you enjoyed the adventure.";

//y_offset = 0; // Start from the top of the screen
