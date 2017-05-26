camera = camera_create();

// make a view matrix (aka lookat matrix)
// This is the point in 3D space where are camera is and where it is looking at.
var vm = matrix_build_lookat(x,y,-10, x,y,0, 0,1,0);

// Make a projection matrix
var pm = matrix_build_projection_ortho(640,480, 1,10000);

// Apply the 2 matrices that we created to our camera
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

// Set the camera to our viewport
view_camera[0] = camera;

// set up a follow variable and set it to our player
follow = objSara;

// set up variables for the x coordinate and y coordinate we are moving to.
xTo = x;
yTo = y;

