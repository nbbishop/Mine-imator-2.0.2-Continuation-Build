/// tab_properties_collection()
/// @desc Collection tab: your own reusable rigs, props, animations, images and sets,
///       kept in a folder outside any project.

function tab_properties_collection()
{
	// Category
	var text;
	if (collection_category = "")
		text = text_get("collectioncategoryall")
	else
		text = text_get("collectioncategory" + string_lower(collection_category))
	
	tab_control_menu()
	draw_button_menu("collectioncategory", e_menu.LIST, dx, dy, dw, 24, collection_category, text, action_collection_category)
	tab_next()
	
	// Files
	tab_control_sortlist(6)
	sortlist_draw(tab.collection.list, dx, dy, dw, tab_control_h, collection_edit, false)
	tab_next()
	
	// Tools
	var isanimation, cansaveframes;
	isanimation = (collection_edit != null && string_lower(filename_ext(collection_edit)) = ".miframes")
	cansaveframes = (tl_edit != null && timeline_settings_keyframes_export)
	
	tab_control(24)
	
	if (draw_button_icon("collectioninsert", dx, dy, 24, 24, false, icons.ASSET_ADD, null, (collection_edit = null || (isanimation && tl_edit = null)), "tooltipcollectioninsert"))
		action_collection_insert()
	
	if (draw_button_icon("collectionsaveobjects", dx + 28, dy, 24, 24, false, icons.SAVE, null, (tl_edit = null), "tooltipcollectionsaveobjects"))
		action_collection_save_objects()
	
	if (draw_button_icon("collectionsavekeyframes", dx + (28 * 2), dy, 24, 24, false, icons.SAVE_KEYFRAME, null, !cansaveframes, "tooltipcollectionsavekeyframes"))
		action_collection_save_keyframes()
	
	if (draw_button_icon("collectionimport", dx + (28 * 3), dy, 24, 24, false, icons.ASSET_IMPORT, null, false, "tooltipcollectionimport"))
		action_collection_import()
	
	if (draw_button_icon("collectionopenfolder", dx + (28 * 4), dy, 24, 24, false, icons.FOLDER, null, false, "tooltipcollectionopenfolder"))
		action_collection_open_folder()
	
	if (draw_button_icon("collectionrefresh", dx + (28 * 5), dy, 24, 24, false, icons.REFRESH, null, false, "tooltipcollectionrefresh"))
		collection_refresh()
	
	if (draw_button_icon("collectiondelete", dx + (28 * 6), dy, 24, 24, false, icons.DELETE, null, (collection_edit = null), "tooltipcollectiondelete"))
		action_collection_delete()
	
	tab_next()
	
	// Animation playback speed + variation
	if (isanimation)
	{
		tab_control_meter()
		draw_meter("collectionspeed", dx, dy, dw, collection_speed, 25, 400, 100, 1, tab.collection.tbx_speed, action_collection_speed, "collectionspeedtip")
		tab_next()
		
		tab_control_meter()
		draw_meter("collectionspeedvariation", dx, dy, dw, collection_speed_variation, 0, 50, 0, 1, tab.collection.tbx_speed_variation, action_collection_speed_variation, "collectionspeedvariationtip")
		tab_next()
	}
	
	// Hint
	if (collection_edit != null)
	{
		tab_control(20)
		draw_label(collection_type_name(collection_edit) + " - " + filename_name(filename_dir(collection_edit)), dx, dy + 10, fa_left, fa_middle, c_text_secondary, a_text_secondary, font_label)
		tab_next()
	}
}
