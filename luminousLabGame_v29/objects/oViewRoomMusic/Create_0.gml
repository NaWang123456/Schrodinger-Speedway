/// @description Insert description here
// You can write your code in this editor

if (!global.isMuted) { // Only play music if the game is not muted
	
// Start playing the background music
var _music_id = audio_play_sound(game_view, 1, true); // Replace `snd_game_music` with your actual music resource name

// Wait for the sound to start, then set the position to start at 2 seconds
audio_sound_set_track_position(_music_id, 2); // Start the music at 2 seconds

// Set an alarm to stop the music after 10 seconds
alarm[0] = room_speed * 9; // Set alarm for 10 seconds (adjust as needed)
}