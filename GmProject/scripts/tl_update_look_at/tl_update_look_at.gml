/// tl_update_look_at()
/// @desc Aims cameras that track an object (Track object in the camera's frame
///       editor) at their target. Runs after all matrices are updated, so the target's
///       current position is always used. Keeps the camera's position and uses its
///       Y rotation as roll.

function tl_update_look_at()
{
	var cam, target, px, py, pz, fx, fy, fz, len, ux, uy, uz, d, zx, zy, zz, zlen, xx, xy, xz, r, c, s;
	
	for (var i = 0; i < ds_list_size(app.project_timeline_list); i++)
	{
		cam = app.project_timeline_list[|i]
		
		if (cam.type != e_tl_type.CAMERA || cam.value[e_value.LOOK_AT] = null)
			continue
		
		target = cam.value[e_value.LOOK_AT]
		if (target = cam || !instance_exists(target) || !is_array(cam.matrix))
			continue
		
		// Forward (the camera looks along its local Y axis)
		px = cam.matrix[MAT_X]
		py = cam.matrix[MAT_Y]
		pz = cam.matrix[MAT_Z]
		fx = target.world_pos[X] - px
		fy = target.world_pos[Y] - py
		fz = target.world_pos[Z] - pz
		len = sqrt(fx * fx + fy * fy + fz * fz)
		
		if (len < 0.001)
			continue
		
		fx /= len
		fy /= len
		fz /= len
		
		// Up (local Z): world up made perpendicular to forward
		ux = 0
		uy = 0
		uz = 1
		if (abs(fz) > 0.999) // Looking straight up/down
		{
			uy = 1
			uz = 0
		}
		
		d = ux * fx + uy * fy + uz * fz
		zx = ux - d * fx
		zy = uy - d * fy
		zz = uz - d * fz
		zlen = sqrt(zx * zx + zy * zy + zz * zz)
		zx /= zlen
		zy /= zlen
		zz /= zlen
		
		// Side (local X) = forward x up
		xx = fy * zz - fz * zy
		xy = fz * zx - fx * zz
		xz = fx * zy - fy * zx
		
		// Roll around the view direction
		r = degtorad(cam.value[e_value.ROT_Y])
		c = cos(r)
		s = sin(r)
		
		cam.matrix[0] = xx * c - zx * s
		cam.matrix[1] = xy * c - zy * s
		cam.matrix[2] = xz * c - zz * s
		cam.matrix[4] = fx
		cam.matrix[5] = fy
		cam.matrix[6] = fz
		cam.matrix[8] = xx * s + zx * c
		cam.matrix[9] = xy * s + zy * c
		cam.matrix[10] = xz * s + zz * c
		
		cam.matrix_render = matrix_multiply(matrix_create(point3D_mul(cam.rot_point_render, -1), vec3(0), vec3(1)), cam.matrix)
	}
}
