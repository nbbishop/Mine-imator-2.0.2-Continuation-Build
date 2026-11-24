/// action_collection_import()
/// @desc Copies a file from anywhere on the computer into the collection.

function action_collection_import()
{
	var fn = file_dialog_open_asset();
	if (fn = "" || !file_exists_lib(fn))
		return 0
	
	var dir = collection_directory + collection_folder_for(fn) + "/";
	directory_create_lib(dir)
	
	var dest = collection_unique_filename(dir, filename_change_ext(filename_name(fn), ""), filename_ext(fn));
	file_copy_lib(fn, dest)
	
	collection_refresh()
	collection_edit = dest
}
