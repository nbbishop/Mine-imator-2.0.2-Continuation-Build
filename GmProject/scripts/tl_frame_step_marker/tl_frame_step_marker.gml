/// tl_frame_step_marker(markerpos)
/// @arg markerpos
/// @desc Returns the marker position used to evaluate this timeline when the
///       project animates "on 2s/3s/...". Poses are held for project_frame_step
///       frames, counted from the current keyframe so keyframes always land on
///       their own frame.

function tl_frame_step_marker(markerpos)
{
	var step = app.project_frame_step;
	
	if (step <= 1 || keyframe_current = null)
		return markerpos
	
	// Cameras stay smooth unless asked otherwise
	if (type = e_tl_type.CAMERA && !app.project_frame_step_cameras)
		return markerpos
	
	return keyframe_current.position + floor((markerpos - keyframe_current.position) / step) * step
}
