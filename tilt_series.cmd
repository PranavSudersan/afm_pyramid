chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( tilt_a := 0 ; tilt_a <= 15 ; tilt_a := tilt_a + 3 )
	{
	tilt := tilt_a * pi/180;
	for ( tip_angle := 30; tip_angle <= 91; tip_angle := tip_angle + 5 )
		{
		CA_p := tip_angle * pi/180;
		for ( height := 0 ; height <= 0.41 ; height := height + .02 )
			{ 	replace_load "pyramid";
				get_fd; 
			}
		}
	}
}

run_fd;
