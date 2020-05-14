attribute vec4 vPosition;
attribute vec3 vNormal;
attribute vec2 vTexCoord;

varying vec4 position;
varying vec3 normal;
varying vec2 texCoord;

uniform mat4 ModelView;
uniform mat4 Projection;


void main()
{
    normal = vNormal;
    position = vPosition;
    gl_Position = Projection * ModelView * vPosition;
    texCoord = vTexCoord;
}
