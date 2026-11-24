/// collection_folder_for(filename)
/// @arg filename
/// @desc The category a file goes into when added while "All" is shown.

function collection_folder_for(fn)
{
	if (collection_category != "")
		return collection_category
	
	switch (string_lower(filename_ext(fn)))
	{
		case ".miframes":		return "Animations"
		case ".mimodel":
		case ".json":			return "Characters"
		case ".png":
		case ".jpg":
		case ".jpeg":			return "Images"
		case ".nbt":
		case ".schematic":		return "Sets"
	}
	
	return "Props"
}
