// Enums
enum input {
	press,
	up,
	down,
	left,
	right,
	invetory,
}

enum device_type {
	mouse,	
	keyboard,
	gamepad,
}

// Globals
global.devices = struct_empty;
global.inputs = struct_empty;

// Registartion
device_register(new DeviceKeyboard());
device_register(new DeviceMouse());
device_register(new DeviceGamepad());

// Default binds
input_bind(input.press, new Key(device_type.mouse, mb_left));

// input_unbind(input.press, new Key(device_type.mouse, mb_left));

input_bind(input.up, [
	new Key(device_type.keyboard, vk_up),
	new Key(device_type.keyboard, "W"),
	new Key(device_type.gamepad, gp_padu),
]);

input_bind(input.down, [
	new Key(device_type.keyboard, vk_down),
	new Key(device_type.keyboard, "D"),
	new Key(device_type.gamepad, gp_padd),
]);

input_bind(input.left, [
	new Key(device_type.keyboard, vk_left),
	new Key(device_type.keyboard, "L"),
	new Key(device_type.gamepad, gp_padl),
]);

input_bind(input.right, [
	new Key(device_type.keyboard, vk_right),
	new Key(device_type.keyboard, "R"),
	new Key(device_type.gamepad, gp_padr),
]);

input_bind(input.invetory, [
	new Key(device_type.keyboard, "I"),
	new Key(device_type.gamepad, gp_face3),
]);
