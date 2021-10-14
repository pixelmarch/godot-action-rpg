shader_type canvas_item;

uniform bool active = false;

void fragment() {
	vec4 previous_color = texture(TEXTURE, UV);
	COLOR = active ? vec4(1.0, 1.0, 1.0, previous_color.a) : previous_color;
}