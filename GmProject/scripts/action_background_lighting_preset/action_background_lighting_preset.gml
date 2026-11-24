/// action_background_lighting_preset(name)
/// @arg name
/// @desc Applies a built-in lighting preset (sun, sky, ambient, fog, night colors)
///       as one undo step. If the project uses a Background timeline, the preset
///       is keyframed on it instead, like the other background settings.

function action_background_lighting_preset(name = "")
{
	var ids, vals;
	ids = bg_lighting_preset_ids()
	
	if (history_undo)
	{
		vals = history_data.old_values
		for (var i = 0; i < array_length(ids); i++)
			bg_lighting_value_set(ids[i], vals[i])
		
		return 0
	}
	
	if (history_redo)
		name = history_data.preset_name
	
	vals = bg_lighting_preset_values(name)
	if (array_length(vals) != array_length(ids))
		return 0
	
	if (!history_redo)
	{
		// Keyframe it on the Background timeline, if there is one
		if (action_tl_select_single(null, e_tl_type.BACKGROUND))
		{
			tl_value_set_start(action_background_lighting_preset, false)
			for (var i = 0; i < array_length(ids); i++)
				tl_value_set(ids[i], vals[i], false)
			tl_value_set_done()
			return 0
		}
		
		var oldvals = [];
		for (var i = 0; i < array_length(ids); i++)
			oldvals[i] = bg_lighting_value_get(ids[i])
		
		var hobj = history_set(action_background_lighting_preset);
		hobj.old_values = oldvals
		hobj.preset_name = name
	}
	
	for (var i = 0; i < array_length(ids); i++)
		bg_lighting_value_set(ids[i], vals[i])
	
	render_samples = -1
}
