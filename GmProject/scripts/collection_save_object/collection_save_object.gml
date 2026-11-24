/// collection_save_object(filename)
/// @arg filename
/// @desc Saves the selected timelines to the given .miobject file (no dialog).
///       Same as object_save(), used by the Collection tab.

function collection_save_object(fn)
{
	log("Saving object", fn)
	
	save_folder = filename_dir(fn)
	load_folder = project_folder
	log("save_folder", save_folder)
	log("load_folder", load_folder)
	
	project_save_start(fn, false)
	
	// Save specific timeline
	with (obj_timeline)
		if (selected)
			tl_save()
	
	project_save_objects()
	project_save_done()
	
	log("Object saved")
}
