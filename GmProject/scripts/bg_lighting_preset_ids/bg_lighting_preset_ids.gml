/// bg_lighting_preset_ids()
/// @desc The background values a lighting preset sets, in the same order as
///       bg_lighting_preset_values() returns them.

function bg_lighting_preset_ids()
{
	return [
		e_value.BG_SKY_TIME,
		e_value.BG_SUNLIGHT_STRENGTH,
		e_value.BG_SUNLIGHT_ANGLE,
		e_value.BG_SUNLIGHT_COLOR,
		e_value.BG_AMBIENT_COLOR,
		e_value.BG_TWILIGHT,
		e_value.BG_SKY_COLOR,
		e_value.BG_SKY_CLOUDS_SHOW,
		e_value.BG_SKY_CLOUDS_COLOR,
		e_value.BG_NIGHT_SKY_COLOR,
		e_value.BG_NIGHT_COLOR,
		e_value.BG_FOG_SHOW,
		e_value.BG_FOG_CUSTOM_COLOR,
		e_value.BG_FOG_COLOR,
		e_value.BG_FOG_DISTANCE,
		e_value.BG_FOG_SIZE
	]
}
