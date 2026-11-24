/// action_collection_insert()
/// @desc Adds the selected collection item to the project: objects and sets are
///       added to the scene, animations are applied to the selected timeline at the
///       marker, images open the image import window. Undoable like any import.

function action_collection_insert()
{
	if (collection_edit = null || !file_exists_lib(collection_edit))
		return 0
	
	// Animations: play at the chosen speed, with optional random variation so
	// repeated inserts (crowds, background characters) don't move in sync
	if (string_lower(filename_ext(collection_edit)) = ".miframes")
	{
		var loadspeed = collection_speed / 100;
		if (collection_speed_variation > 0)
			loadspeed *= 1 + random_range(-collection_speed_variation, collection_speed_variation) / 100
		keyframes_load_speed = max(0.05, loadspeed)
	}
	
	asset_load(collection_edit)
	keyframes_load_speed = 1
}
