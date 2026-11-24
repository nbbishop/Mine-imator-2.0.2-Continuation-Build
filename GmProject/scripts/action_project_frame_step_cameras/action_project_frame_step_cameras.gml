/// action_project_frame_step_cameras()
/// @desc Toggles whether cameras are also held on the stepped frames.

function action_project_frame_step_cameras()
{
	project_frame_step_cameras = !project_frame_step_cameras
	timeline_marker_previous = -1 // Force all values to update
}
