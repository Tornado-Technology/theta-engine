#macro vector2_zero new Vector2(0, 0) 
#macro vector2_one new Vector2(1, 1)
#macro vector2_right new Vector2(1, 0)
#macro vector2_left new Vector2(-1, 0)
#macro vector2_up new Vector2(0, -1)
#macro vector2_down new Vector2(0, 1)

/// @param {Real} x
/// @param {Real} y
/// @return {Struct.Vector2}
function Vector2(x, y) constructor {
	self.x = x;
	self.y = y;
	
	/// @return {Struct.Vector2}
	static one = function() {
		x = 1;
		y = 1;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static zero = function() {
		x = 0;
		y = 0;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static negative = function() {
		return new Vector2(-x, -y);
	}
	
	/// @return {Struct.Vector2}	
	static set = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		x = vector.x;
		y = vector.y;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static add = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		x += vector.x;
		y += vector.y;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static sub = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		x -= vector.x;
		y -= vector.y;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static multi = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		x *= vector.x;
		y *= vector.y;
		return self;
	}
	
	/// @return {Struct.Vector2}
	static divis = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		x /= vector.x;
		y /= vector.y;
		return self;
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static math_distance_to = function(vector) {
		return sqrt((x - vector.x) * (x - vector.x) + (y - vector.y) * (y - vector.y));
	}
	
	/// @description Returns the dot product
	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static math_dot = function(vector) {
		return x * vector.x + y * vector.y;
	}
	
	/// @description Returns the cross product
	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static math_cross = function(vector) {
		return x * vector.x - y * vector.y;
	}
	
	/// @description Returns self Vector2 angle with respect to the X axis.
	/// @param {Bool} radians
	/// @return {Real}
	static math_angle = function(radians) {
		return (radians) ? arctan2(y, x) : darctan2(y, x);
	}
	
	/// @return {Struct.Vector2}
	static math_sign = function() {
		return new Vector2(sign(x), sign(y));
	}
	
	/// @return {Struct.Vector2}
	static math_signv = function() {
		var value = math_sign();
		set(value);
		return self;
	}
	
	/// @description Returns a new Vector2 with all components in absolute values
	/// @return {Struct.Vector2}
	static math_abs = function() {
		return new Vector2(abs(x), abs(y));
	}
	
	/// @description Sets self with all components in absolute values
	/// @return {Struct.Vector2}
	static math_absv = function() {
		var value = math_abs();
		set(value);
		return self;
	}
	
	/// @description Returns a new Vector2 with all components powered values
	/// @param {Struct.Vector2} n
	/// @return {Struct.Vector2}
	static math_power = function(n) {
		return new Vector2(power(x, n.x), power(y, n.y));
	}
	
		
	/// @description Returns a new Vector2 with all components powered values
	/// @param {Struct.Vector2} n
	/// @return {Struct.Vector2}
	static math_powerv = function(n) {
		var value = math_power(n);
		set(value);
		return self;
	}
		
	/// @description Returns a new Vector2 with all components in round values
	/// @return {Struct.Vector2}
	static math_round = function() {
		return new Vector2(round(x), round(y));
	}
	
	/// @return {Struct.Vector2}
	static math_floor = function() {
		return new Vector2(floor(x), floor(y));
	}
	
	/// @return {Struct.Vector2}
	static math_ceil = function() {
		return new Vector2(ceil(x), ceil(y));
	}
	
	/// @description Returns real vector length
	/// @return {Real}
	static math_length = function() {
		return sqr(x * x + y * y);
	}
	
	/// @description Returns a new Vector2 with the minimum value of the Vector2s
	/// @param {Struct.Vector2} min_vector
	/// @return {Struct.Vector2}
	static math_min = function(min_vector) {
		return new Vector2(min(x, min_vector.x), min(y, min_vector.y));
	}
	
	/// @description Sets self with the minimum value of the Vector2s
	/// @param {Struct.Vector2} min_vector
	/// @return {Struct.Vector2}
	static math_minv = function(min_vector) {
		var value = math_min(min_vector);
		set(value);
		return self;
	}
	
	/// @description Returns a new Vector2 with the maximum value of the Vector2s
	/// @param {Struct.Vector2} max_vector
	/// @return {Struct.Vector2}
	static math_max = function(max_vector) {
		return new Vector2(max(x, max_vector.x), max(y, max_vector.y));
	}
	
	/// @description Sets self with the maximum value of the Vector2s
	/// @param {Struct.Vector2} max_vector
	/// @return {Struct.Vector2}
	static math_maxv = function(max_vector) {
		var value = math_max(max_vector);
		set(value);
		return self;
	}
	
	/// @description Returns a new Vector2 with the clamped value of the Vector2s
	/// @param {Struct.Vector2} min_vector
	/// @param {Struct.Vector2} max_vector
	/// @return {Struct.Vector2}
	static math_clamp = function(min_vector, max_vector) {
		var clamp_x = clamp(x, min_vector.x, max_vector.x);
		var clamp_y = clamp(y, min_vector.y, max_vector.y);
		return new Vector2(clamp_x, clamp_y);
	}
	
	/// @description Sets self with the clamped value of the Vector2s
	/// @param {Struct.Vector2} min_vector
	/// @param {Struct.Vector2} max_vector
	/// @return {Struct.Vector2}
	static math_clampv = function(min_vector, max_vector) {
		var value = math_clamp(min_vector, max_vector);
		set(value);
		return self;
	}
	
	/// @description Returns a new Vector2 with the lerped value of the Vector2s
	/// @param {Struct.Vector2} target_vector
	/// @param {Struct.Vector2} amount_vector
	/// @return {Struct.Vector2}
	static math_lerp = function(target_vector, amount_vector) {
		var lerp_x = lerp(x, target_vector.x, amount_vector.x);
		var lerp_y = lerp(y, target_vector.y, amount_vector.y);
		return new Vector2(lerp_x, lerp_y);
	}
	
	/// @description Sets self with the lerped value of the Vector2s
	/// @param {Struct.Vector2} target_vector
	/// @param {Struct.Vector2} amount_vector
	/// @return {Struct.Vector2}
	static math_lerpv = function(target_vector, amount_vector) {
		x = lerp(x, target_vector.x, amount_vector.x);
		y = lerp(y, target_vector.y, amount_vector.y);
		return self;
	}
	
	/// @return {Struct.Vector2}
	static copy = function() {
		return new Vector2(x, y);
	}

	/// @param {Bool} mirror
	/// @return {Id.DsMap<Real>}
	static to_map = function(mirror = false) {
		var map = ds_map_create();
		map[? "x"] = mirror ? y : x; 
		map[? "y"] = mirror ? x : y;
		return map;
	}
	
	/// @param {Bool} mirror
	/// @return {Id.DsList<Real>}
	static to_list = function(mirror = false) {
		var list = ds_list_create();
		list[| 0] = mirror ? y : x; 
		list[| 1] = mirror ? x : y;
		return list;
	}
	
	/// @param {Bool} mirror
	/// @return {Array<Real>}
	static to_array = function(mirror = false) {
		return mirror ? [y, x] : [x, y];
	}
	
	/// @param {String} delimiter
	/// @return {String}
	static to_string = function(delimiter = ":") {
		return string("{0}{2}{1}", x, y, delimiter);
	}
}

/// @param {Struct} vector
/// @return {Bool}
function is_vector2(vector) {
	return is_instanceof(vector, Vector2);
}
