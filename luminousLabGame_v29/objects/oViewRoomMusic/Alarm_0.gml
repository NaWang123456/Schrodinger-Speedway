/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(game_view);
// Start the music again (this will loop the music)
music_id = audio_play_sound(game_view, 1, true); // Replace `snd_game_music` with your actual music resource name

// Set the track position again if needed (optional, if you want it to always start at 2 seconds)
audio_sound_set_track_position(music_id, 2);

// Set the alarm again to loop the music every 10 seconds
alarm[0] = room_speed * 10;