
// Credits text (use string concatenation to handle multi-line strings)
var credit_text = 

"\n\n"+
"    Game Engine: GameMaker\n\n" +  // Another extra \n for spacing

"  **Resource Citations:**\n\n" +  // Space after the line
"    Music & Sound Credits:\n\n" +  // Space before section starts

"    Eilish, B. (Artist). (2018). bad guy [Video].\n\n"+
"        YouTube. https://www.youtube.com/watch?v=r8ks_BQx1ck\n\n" +

"    Shakira. (Artist). (2010). Waka Waka (This time for Africa) [Video].\n\n" +
"        YouTube. https://www.youtube.com/watch?v=xh0OtnliFAc\n\n" +

"    Psy. (Artist). (2012). Gangnam Style [Video].\n\n"+
"        YouTube. https://www.youtube.com/watch?v=PqtrtcWsxSw\n\n" +

"    Talking Tom Soundboard. (n.d.). Talking Tom Sound [Soundboard]. 101soundboards.\n\n"+
"         https://www.101soundboards.com/boards/36553-talking-tom-soundboard\n\n" +

"    Soundsnap. (n.d.). Water hit [Sound effect].\n\n"+
"         https://www.soundsnap.com/tags/water_hit\n\n" +

"	 https://pixabay.com/sound-effects/search/goodresult-82807/\n\n" +
"		  (n.d.) 1 royalty-free goodresult-82807 sound effects\n\n" +

"    Sprites and objects:\n\n"+
"    GameMaker.io: (n.d.) Maritime Mayhem\n\n" +
"    https://gamemaker.io/en/bundles\n\n" +

"    Kenney. (n.d.). Game view sprite [Asset]. Kenney. https://kenney.nl/assets\n\n"+

"    Kenney. (n.d.). RPG base [Asset]. Kenney. https://kenney.nl/assets/rpg-base\n\n"+

"    http://www.freepik.com: (n.d.). Wooden cartoon game interface collection.\n\n"+
"         [Vector]. Freepik.com\n\n"+
"         https://www.freepik.com/free-vector/wooden-cartoon-game-interface-collection_25896898.htm\n\n  "+

"    Brandão, M. (n.d.). Fredoka One [Font]. Google Fonts. \n\n"+
"		  Author: Milena Brandao\n\n" +
"         https://fonts.google.com/specimen/Fredoka+One\n\n"+

"    http://www.freepik.com: (n.d.). Wooden cartoon game interface collection.\n\n"+
"         [Vector]. Freepik.com\n\n"+
"         https://www.freepik.com/free-vector/wooden-cartoon-game-interface-collection_25896897.htm\n\n"+

"    Open Window. (n.d.). Caesar Dressing [Font]. Google Fonts.\n\n"+
"		  Author: Open Window\n\n" +
"         https://fonts.google.com/specimen/Caesar+Dressing\n\n"+

"    http://www.freepik.com: (n.d.). Smart octopus award font banner.\n\n"+
"         [Vector]. Freepik.com\n\n"+
"         https://www.freepik.com/free-vector/smart-octopus-award-font-banner_18240934.htm\n\n"+

"    http://www.freepik.com: (n.d.). Design for Complete set of score button game pop-up, icon,\n\n"+
"         window and elements for creating medieval RPG video games.\n\n"+
"         [Vector]. Freepik.com\n\n"+
"		  https://www.freepik.com/free-vector/design-complete-set-score-button-game-pop-up\n\n" +
"		  -icon-window-elements-creating-medieval-rpg-video-games_14246111.htm\n\n" +

"    http://www.freepik.com: (n.d.). Soul ghost text effect editable ocean spirit text style\n\n"+
"         [Vector]. Freepik.com\n\n"+
"         https://www.freepik.com/free-vector/soul-ghost-text-effect-editable-ocean-spirit-text-style_21957310.htm\n\n"+

"	http://www.freepik.com: (n.d.) Colored parchment with pirate treasure map\n\n" +
"         [Vector]. Freepik.com\n\n"+
"         https://www.freepik.com/free-vector/colored-parchment-with-pirate-treasure-map_1133894.htm\n\n" +

"	http://www.freepik.com: Designed by macrovector / Freepik\n\n" +
"		  (n.d.) Pirate treasure island map game puzzle template vector illustration\n\n" +
"         [Vector]. Freepik.com\n\n"+
"		  https://www.freepik.com/free-vector/pirate-treasure-island-map-game-puzzle-template-vector-illustration_1159119.htm\n\n" +

"    Jellyfizh. (n.d.). Fireworks effect spritesheet [Asset]. OpenGameArt.\n\n"+
"         https://opengameart.org/content/fireworks-effect-spritesheet\n\n"+

"\n\n"+
"    **Game Development Team:**\n\n" +  // Adding an extra \n for space before the next line
"    Lenard Abraham" +  // Adding space between names
"    Sravya Kamineni\n\n" +
"    Monchida Rujimethapas" +
"    Na Wang\n\n" +
"\n\n"+
"         Copyright © 2025 Luminous Lab\n\n" +  // Space before copyright info
"         All Rights Reserved\n\n" +
"    ********************************************************************************************\n\n"+
"         Special Thanks\n\n" +
              "        To all the amazing people who supported me throughout this journey.\n\n"+
"         Thank you for playing the game!\n\n";


// Set background color (optional, for the credits room background)
draw_set_color(make_color_rgb(0, 191, 255));  // Deep Sky Blue (RGB)
// Set the background color for the credits room (Blue Water background)


// Set the text color to a bright orange color (RGB: 255, 165, 0)
draw_set_color(make_color_rgb(255, 255, 233));  // This is the bright orange color

// Scroll effect for text (adjust 'scroll_y' to control the speed)
var scroll_speed = 2; // You can change this value to adjust the speed
var scroll_y = y_offset;  // Starting at a negative offset so that the text starts above the screen

// Start drawing the text from a specific position (top of the screen)
draw_set_font(font_credits); // Make sure you've set the correct font
draw_text(10, scroll_y, credit_text); // Draw the credit text at position (10, scroll_y)


draw_set_font(font_large);  // Larger font for the section title
draw_set_color(c_orange);  // Bright orange for section titles
draw_text(10, scroll_y, "            Credit and resources\n\n");

//draw_set_font(font_large);  // Larger font for the section title
//draw_set_color(c_orange);  // Bright orange for section titles
//draw_text(10, scroll_y, " **Game Development Team:**\n\n");

y_offset -= scroll_speed;  

// If text fully scrolls off-screen, reset
if (y_offset < -string_height(credit_text)) {
    y_offset = room_height;  // Restart from bottom
}