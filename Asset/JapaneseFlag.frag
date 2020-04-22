#version 330 core

in vec2 vert_texcoord;

layout(location = 0) out vec4 frag_color;

const vec2 resolution = vec2(640, 480);

void main()
{
	frag_color = vec4(vert_texcoord, 0, 1);
}
