/// collection_type_name(filename)
/// @arg filename
/// @desc Display name for the kind of file in the collection.

function collection_type_name(fn)
{
	switch (string_lower(filename_ext(fn)))
	{
		case ".miobject":		return text_get("collectiontypeobject")
		case ".miframes":		return text_get("collectiontypeanimation")
		case ".mimodel":
		case ".json":			return text_get("collectiontypemodel")
		case ".png":
		case ".jpg":
		case ".jpeg":			return text_get("collectiontypeimage")
		case ".nbt":
		case ".schematic":		return text_get("collectiontypescenery")
		case ".miparticles":	return text_get("collectiontypeparticles")
	}
	
	return filename_ext(fn)
}
