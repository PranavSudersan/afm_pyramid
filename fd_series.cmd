chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( Rs := 1.2 ; Rs <= 1.3 ; Rs := Rs + 0.1 )
	{
	for ( tip_angle := 30; tip_angle <= 91; tip_angle := tip_angle + 5 )
		{
		CA_p := tip_angle * pi/180;
		for ( height := 0 ; height <= 0.01 ; height := height + .01 )
			{ 	replace_load "pyramid";
				get_fd; 
			}
		}
	}
}

run_fd;
