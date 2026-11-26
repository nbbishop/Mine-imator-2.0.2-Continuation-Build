/// action_tl_frame_look_at(timeline)
/// @arg timeline
/// @desc Sets the object a camera tracks (null = none). Keyframeable.

function action_tl_frame_look_at(target)
{
	tl_value_set_start(action_tl_frame_look_at, false)
	tl_value_set(e_value.LOOK_AT, target, false)
	tl_value_set_done()
}
