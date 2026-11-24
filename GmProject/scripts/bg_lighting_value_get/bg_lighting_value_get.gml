/// bg_lighting_value_get(valueid)
/// @arg valueid
/// @desc Current value of one of the background settings used by lighting presets.

function bg_lighting_value_get(vid)
{
	switch (vid)
	{
		case e_value.BG_SKY_TIME: return background_sky_time
		case e_value.BG_SUNLIGHT_STRENGTH: return background_sunlight_strength
		case e_value.BG_SUNLIGHT_ANGLE: return background_sunlight_angle
		case e_value.BG_SUNLIGHT_COLOR: return background_sunlight_color
		case e_value.BG_AMBIENT_COLOR: return background_ambient_color
		case e_value.BG_TWILIGHT: return background_twilight
		case e_value.BG_SKY_COLOR: return background_sky_color
		case e_value.BG_SKY_CLOUDS_SHOW: return background_sky_clouds_show
		case e_value.BG_SKY_CLOUDS_COLOR: return background_sky_clouds_color
		case e_value.BG_NIGHT_SKY_COLOR: return background_night_sky_color
		case e_value.BG_NIGHT_COLOR: return background_night_color
		case e_value.BG_FOG_SHOW: return background_fog_show
		case e_value.BG_FOG_CUSTOM_COLOR: return background_fog_color_custom
		case e_value.BG_FOG_COLOR: return background_fog_color
		case e_value.BG_FOG_DISTANCE: return background_fog_distance
		case e_value.BG_FOG_SIZE: return background_fog_size
	}
	
	return 0
}
