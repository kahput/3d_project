#version 450 core
layout(location = 0) in vec3 a_position;
layout(location = 1) in vec2 a_uv;

out vec2 uv;
uniform mat4 u_model, u_view, u_projection;

void main() {
    gl_Position = u_projection * u_view * u_model * vec4(a_position, 1.0);
    uv = a_uv;
};
