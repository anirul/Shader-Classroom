#version 330 core

layout (location = 0) in vec3 in_position;

out vec3 vert_local_pos;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{
    gl_Position = vec4(in_position, 1);
}
