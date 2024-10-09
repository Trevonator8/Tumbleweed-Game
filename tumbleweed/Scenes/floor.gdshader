shader_type spatial;

uniform sampler2D floor_color : filter_linear_mipmap_anisotropic;
uniform sampler2D floor_normal : filter_linear_mipmap_anisotropic;
uniform sampler2D floor_rough : filter_linear_mipmap_anisotropic;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 tc = vec2(4, 100) * UV;
	ALBEDO = texture(floor_color, tc + vec2(0, -2.0*TIME)).rgb;
	NORMAL = texture(floor_normal, tc + vec2(0, -2.0*TIME)).rgb;
	ROUGHNESS = texture(floor_rough, tc + vec2(0, -2.0*TIME)).r;
	// Called for every pixel the material is visible on. EMISSION = texture(sword_glow, tc + vec2(0, 0.05*TIME)).rgb * vec3(0.3,0.3,1) + texture(sword_glow, UV + vec2(0, -0.1*(TIME+1.0))).rgb * vec3(0.5,0.1,1);
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
