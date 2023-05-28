/// @param {Function} callback
/// @param {Struct.Vector2} position
function Button(callback, position = vector2_zero) : GUIElement(position) constructor {
	self.callback = callback;
	
	width = 0;
	height = 0;
	
	hovered = false;
	pressed = false;
	
	/// @param {Array<Any>} arguments
	static draw = function(arguments = array_empty) {
		update(arguments);
	}
	
	/// @param {Array<Any>} arguments
	static update = function(arguments = array_empty) {
		hovered = is_hovered();
		pressed = hovered && input_pressed(input.press);
		
		if (pressed) {
			invoke(arguments);
		}
	}
	
	static is_hovered = function() {
		var mouse_position = diaplay_mouse_position;
		
		return point_in_rectangle(
			mouse_position.x,
			mouse_position.y,
			position.x - width / 2,
			position.y - height / 2,
			position.x + width / 2,
			position.y + height / 2
		);
	}
	
	/// @param {Array<Any>} arguments
	static invoke = function(arguments) {
		callback(arguments);
	}
	
	static get_subimg = function() {
		return hovered ? 1 : (pressed ? 2 : 0);
	}
}

/// @param {Function} callback
/// @param {Asset.GMSprite} image
/// @param {Struct.Vector2} position
function ImageButton(callback, image, position = vector2_zero) : Button(callback, position) constructor {
	self.image = image;
	self.width = sprite_get_width(image);
	self.height = sprite_get_height(image);
	
	/// Inheritance of parental realization
	static base_draw = draw;
	
	/// @param {Array<Any>} arguments
	static draw = function(arguments = array_empty) {
		base_draw(arguments);
		draw_sprite(image, 0, position.x, position.y);
	}
}
