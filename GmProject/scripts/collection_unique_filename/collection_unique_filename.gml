/// collection_unique_filename(directory, name, ext)
/// @arg directory
/// @arg name
/// @arg ext
/// @desc A file path in directory that doesn't exist yet: name.ext, name 2.ext, name 3.ext...

function collection_unique_filename(dir, name, ext)
{
	name = filename_get_valid(name)
	if (name = "")
		name = "Untitled"
	
	var fn = dir + name + ext;
	var n = 2;
	while (file_exists_lib(fn))
	{
		fn = dir + name + " " + string(n) + ext
		n++
	}
	
	return fn
}
