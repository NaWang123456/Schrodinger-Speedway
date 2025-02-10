// Destroy the splash after 1 second
if (image_index >= sprite_get_number(sprite_index) - 1) {
    instance_destroy();  // Destroy the splash after the last frame
}