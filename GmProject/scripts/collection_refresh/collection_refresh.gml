/// collection_refresh()
/// @desc Re-reads the collection folders into the Collection tab list.

function collection_refresh()
{
	var cats, list, files;
	cats = collection_categories()
	list = properties.collection.list
	
	sortlist_clear(list)
	
	for (var i = 0; i < array_length(cats); i++)
	{
		if (collection_category != "" && collection_category != cats[i])
			continue
		
		files = file_find(collection_directory + cats[i] + "/", collection_extensions)
		for (var f = 0; f < array_length(files); f++)
			sortlist_add(list, files[f])
	}
	
	if (collection_edit != null && !file_exists_lib(collection_edit))
		collection_edit = null
	
	sortlist_update(list)
}
