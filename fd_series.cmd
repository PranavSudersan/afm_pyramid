chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( tip_angle := 15 ; tip_angle <= 90 ; tip_angle := tip_angle + 5 )
	{
	CA_p := tip_angle * pi/180;
	for ( height := 0 ; height <= 0.41 ; height := height + .01 )
		{ 	replace_load "pyramid";
			get_fd; 
		}
	}
}
