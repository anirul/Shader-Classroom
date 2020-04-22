#version 330 core

layout(location = 0) in vec3 in_position;
layout(location = 1) in vec3 in_normal;
layout(location = 2) in vec2 in_texcoord;

out vec3 vert_normal;
out vec2 vert_texcoord;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{
	gl_Position = vec4(in_position, 1.0);
}
