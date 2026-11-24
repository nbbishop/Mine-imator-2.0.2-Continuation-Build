/// action_collection_open_folder()
/// @desc Opens the collection (or the shown category) in the file explorer.

function action_collection_open_folder()
{
	if (collection_category = "")
		open_url(collection_directory)
	else
		open_url(collection_directory + collection_category + "/")
}
