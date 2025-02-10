 /// @description Insert description here
// You can write your code in this editor
//audio_play_sound(TitleMusic,1,true)
if (!global.isMuted) { // Only play music if the game is not muted
// Play the sound (not looping in this case, but it can be)
var sound_id = audio_play_sound(title_music, 1, false);

// Set the playback position to 2 seconds
audio_sound_set_track_position(sound_id, 18.0);
}