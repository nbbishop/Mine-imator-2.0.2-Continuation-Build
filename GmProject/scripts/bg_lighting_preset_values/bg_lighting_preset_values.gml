/// bg_lighting_preset_values(name)
/// @arg name
/// @desc Values for a built-in lighting preset, aligned with bg_lighting_preset_ids().
///       Returns an empty array for an unknown preset.
///       Sky time: 0 = noon, +-90 = horizon, 180 = midnight.

function bg_lighting_preset_values(name)
{
	//      time  str   angle  sunlight                        ambient                         twilight sky                             clouds clouds color                    night sky                    night                         fog    fog custom fog color                       fog dist fog size
	switch (name)
	{
		case "default":
			return [-45,  1,    .526,  c_sunlight,                     c_ambient,                      true,  c_sky,                           true,  c_clouds,                        c_night_sky,                 c_night,                      true,  false,     c_sky,                           10000,   2000]
		
		case "noon":
			return [0,    1.15, .526,  make_color_rgb(255, 250, 240),  make_color_rgb(110, 122, 152),  true,  make_color_rgb(110, 165, 255),  true,  c_clouds,                        c_night_sky,                 c_night,                      true,  false,     c_sky,                           12000,   2000]
		
		case "golden_hour":
			return [-76,  1.25, .526,  make_color_rgb(255, 190, 115),  make_color_rgb(125, 102, 112),  true,  make_color_rgb(250, 182, 140),  true,  make_color_rgb(255, 214, 178),  c_night_sky,                 c_night,                      true,  true,      make_color_rgb(255, 188, 140),  6000,    2500]
		
		case "sunrise":
			return [76,   1,    .526,  make_color_rgb(255, 214, 172),  make_color_rgb(110, 116, 152),  true,  make_color_rgb(186, 200, 242),  true,  make_color_rgb(255, 226, 206),  c_night_sky,                 c_night,                      true,  true,      make_color_rgb(214, 210, 232),  7000,    2500]
		
		case "overcast":
			return [-30,  .45,  8,     make_color_rgb(222, 226, 236),  make_color_rgb(152, 156, 166),  false, make_color_rgb(170, 176, 186),  true,  make_color_rgb(200, 205, 212),  c_night_sky,                 c_night,                      true,  true,      make_color_rgb(180, 185, 192),  3500,    3000]
		
		case "stormy":
			return [-30,  .25,  10,    make_color_rgb(180, 190, 205),  make_color_rgb(70, 78, 92),     false, make_color_rgb(90, 98, 112),    true,  make_color_rgb(110, 115, 125),  c_night_sky,                 c_night,                      true,  true,      make_color_rgb(85, 92, 105),    2500,    2500]
		
		case "moonlit_night":
			return [150,  1,    .526,  c_sunlight,                     c_ambient,                      true,  c_sky,                           true,  c_clouds,                        make_color_rgb(4, 6, 14),    make_color_rgb(28, 36, 66),   true,  true,      make_color_rgb(10, 14, 28),     6000,    3000]
		
		case "blue_night":
			return [150,  1,    .526,  c_sunlight,                     c_ambient,                      true,  c_sky,                           true,  c_clouds,                        make_color_rgb(10, 16, 36),  make_color_rgb(48, 64, 112),  true,  true,      make_color_rgb(18, 26, 52),     8000,    3000]
		
		case "studio":
			return [-40,  1,    2,     make_color_rgb(255, 255, 255),  make_color_rgb(140, 140, 140),  false, make_color_rgb(128, 128, 128),  false, c_clouds,                        c_night_sky,                 c_night,                      false, false,     c_sky,                           10000,   2000]
		
		case "nether_haze":
			return [-45,  .6,   4,     make_color_rgb(255, 140, 90),   make_color_rgb(120, 52, 40),    false, make_color_rgb(90, 22, 16),     false, c_clouds,                        c_night_sky,                 c_night,                      true,  true,      make_color_rgb(110, 30, 20),    2500,    2000]
		
		case "end_void":
			return [-45,  .7,   2,     make_color_rgb(205, 185, 255),  make_color_rgb(92, 72, 122),    false, make_color_rgb(22, 12, 32),     false, c_clouds,                        c_night_sky,                 c_night,                      true,  true,      make_color_rgb(32, 16, 46),     4000,    3000]
	}
	
	return []
}
