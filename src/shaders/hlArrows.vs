attribute float rotate;
uniform float u_compensation;
varying float v_Rotate;

void main() {
    vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
    gl_PointSize = 1300.0 * u_compensation / (cameraPosition.z - position.z);
    gl_Position = projectionMatrix * mvPosition;
    v_Rotate = rotate;
}