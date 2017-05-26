// move the distance of the difference of where we are movng to - where we are divided by 25
// this will move faster when farther away the camera is and slow down the closer the camera gets.
x = x + (xTo - x) / 25;
y = y + (yTo - y) / 25;

// check if camera doesn't equal noone then set xTo and yTo to the follow object's x and y
// set follow to noone to stop the camera from following.
if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

// change the view matrix to use the more up to date x and y.  Same code as in the create event.
var vm = matrix_build_lookat(x,y,-10, x,y,0, 0,1,0);

// set the new vm to the camera
camera_set_view_mat(camera, vm);