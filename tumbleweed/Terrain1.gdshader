shader_type spatial;

uniform sampler2D noise_texture;
uniform float cut_factor;
uniform float border;
uniform float height;

uniform sampler2D albedo_1;
uniform sampler2D normalmap_1;
uniform sampler2D roughness_1;

uniform sampler2D albedo_2;
uniform sampler2D normalmap_2;
uniform sampler2D roughness_2;

void vertex() {
	float noise = texture(noise_texture, UV).r;
	noise = smoothstep(cut_factor, cut_factor+border, noise);
	VERTEX.y += noise*height;
}

void fragment() {
	vec2 uv_1 = UV*8.0;
	vec2 uv_2 = UV*6.0;
	float noise = texture(noise_texture, UV).r;
	noise = smoothstep(cut_factor, cut_factor+border, noise);
	vec3 albedo = mix(texture(albedo_1, uv_1).rgb, texture(albedo_2, uv_2).rgb, noise);
	vec3 normal = mix(texture(normalmap_1, uv_1).rgb, texture(normalmap_2, uv_2).rgb, noise);
	vec3 roughness = mix(texture(roughness_1, uv_1).rgb, texture(roughness_2, uv_2).rgb, noise);
	ALBEDO = vec3(albedo);
	NORMAL_MAP = normal;
	ROUGHNESS = roughness.r;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
