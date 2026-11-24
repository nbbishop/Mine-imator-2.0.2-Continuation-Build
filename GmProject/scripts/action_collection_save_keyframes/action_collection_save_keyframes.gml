/// action_collection_save_keyframes()
/// @desc Saves the selected keyframes into the collection's Animations folder.

function action_collection_save_keyframes()
{
	if (tl_edit = null)
		return 0
	
	var dir = collection_directory + "Animations/";
	directory_create_lib(dir)
	
	var fn = collection_save_keyframes(dir);
	
	collection_refresh()
	collection_edit = fn
}
