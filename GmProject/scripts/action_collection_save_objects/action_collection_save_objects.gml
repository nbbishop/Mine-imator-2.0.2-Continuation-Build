/// action_collection_save_objects()
/// @desc Saves the selected objects (with their children, textures and keyframes)
///       into the collection, named after the selected timeline.

function action_collection_save_objects()
{
	if (tl_edit = null)
		return 0
	
	var cat = collection_category;
	if (cat = "" || cat = "Animations" || cat = "Images")
		cat = "Props"
	
	var dir = collection_directory + cat + "/";
	directory_create_lib(dir)
	
	var fn = collection_unique_filename(dir, tl_edit.display_name, ".miobject");
	collection_save_object(fn)
	
	collection_refresh()
	collection_edit = fn
}
