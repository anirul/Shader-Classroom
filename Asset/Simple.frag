#version 330 core

in vec3 vert_normal;
in vec2 vert_texcoord;

layout(location = 0) out vec4 frag_color;

uniform sampler2D Color;

const vec3 light_position = vec3(-1.0, 1.0, 1.0);

void main()
{
	frag_color = vec4(0, 0, 1, 1);
}
