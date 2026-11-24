/// action_collection_delete()
/// @desc Deletes the selected file from the collection, after asking.

function action_collection_delete()
{
	if (collection_edit = null || !file_exists_lib(collection_edit))
		return 0
	
	if (!question(text_get("collectiondeletequestion", filename_name(collection_edit))))
		return 0
	
	file_delete_lib(collection_edit)
	collection_edit = null
	collection_refresh()
}
