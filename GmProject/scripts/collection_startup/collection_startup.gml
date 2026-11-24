/// collection_startup()
/// @desc Creates the collection folders and fills the Collection tab list.

function collection_startup()
{
	collection_category = ""
	collection_edit = null
	
	var cats = collection_categories();
	directory_create_lib(collection_directory)
	for (var i = 0; i < array_length(cats); i++)
		directory_create_lib(collection_directory + cats[i] + "/")
	
	collection_refresh()
}
