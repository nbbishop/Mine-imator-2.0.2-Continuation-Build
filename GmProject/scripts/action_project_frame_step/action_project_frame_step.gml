/// action_project_frame_step(value, [add])
/// @arg value
/// @arg [add]
/// @desc Sets how many frames each pose is held for ("animate on 2s/3s/4s"). 1 = smooth.

function action_project_frame_step(val, add = false)
{
	var newval = max(1, round(project_frame_step * add + val));
	
	if (!history_undo && !history_redo)
		history_set_var(action_project_frame_step, project_frame_step, newval, false)
	
	project_frame_step = newval
	timeline_marker_previous = -1 // Force all values to update
}
