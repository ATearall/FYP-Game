#version 400

uniform mat4 u_Projection;
uniform mat4 u_Model;
uniform mat4 u_View;

attribute vec3 in_Position;
attribute vec2 a_TexCoord;

out vec2 v_TexCoord;
out vec3 v_Normal;

void main()
{
  gl_Position =  u_Projection * u_View * u_Model * vec4(in_Position, 1.0);
  v_TexCoord = a_TexCoord;
}