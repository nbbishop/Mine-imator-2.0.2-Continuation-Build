/// action_collection_insert()
/// @desc Adds the selected collection item to the project: objects and sets are
///       added to the scene, animations are applied to the selected timeline at the
///       marker, images open the image import window. Undoable like any import.

function action_collection_insert()
{
	if (collection_edit = null || !file_exists_lib(collection_edit))
		return 0
	
	asset_load(collection_edit)
}
