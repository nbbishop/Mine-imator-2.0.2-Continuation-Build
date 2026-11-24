/// bg_lighting_value_set(valueid, value)
/// @arg valueid
/// @arg value
/// @desc Sets one of the background settings used by lighting presets.

function bg_lighting_value_set(vid, val)
{
	switch (vid)
	{
		case e_value.BG_SKY_TIME: background_sky_time = val; break
		case e_value.BG_SUNLIGHT_STRENGTH: background_sunlight_strength = val; break
		case e_value.BG_SUNLIGHT_ANGLE: background_sunlight_angle = val; break
		case e_value.BG_SUNLIGHT_COLOR: background_sunlight_color = val; break
		case e_value.BG_AMBIENT_COLOR: background_ambient_color = val; break
		case e_value.BG_TWILIGHT: background_twilight = val; break
		case e_value.BG_SKY_COLOR: background_sky_color = val; break
		case e_value.BG_SKY_CLOUDS_SHOW: background_sky_clouds_show = val; break
		case e_value.BG_SKY_CLOUDS_COLOR: background_sky_clouds_color = val; break
		case e_value.BG_NIGHT_SKY_COLOR: background_night_sky_color = val; break
		case e_value.BG_NIGHT_COLOR: background_night_color = val; break
		case e_value.BG_FOG_SHOW: background_fog_show = val; break
		case e_value.BG_FOG_CUSTOM_COLOR: background_fog_color_custom = val; break
		case e_value.BG_FOG_COLOR: background_fog_color = val; break
		case e_value.BG_FOG_DISTANCE: background_fog_distance = val; break
		case e_value.BG_FOG_SIZE: background_fog_size = val; break
	}
}
