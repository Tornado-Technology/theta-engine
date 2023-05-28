if (input_pressed(input.up)) {
	show_debug_message("Pressed!");
}

if (input_held(input.up)) {
	show_debug_message("Held!");
}

if (input_released(input.up)) {
	show_debug_message("Released!");
}
