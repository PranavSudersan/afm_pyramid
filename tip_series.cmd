chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( a_dev := 16 ; a_dev <= 20 ; a_dev := a_dev + 1 )
	{
	for ( tip_angle := 30; tip_angle <= 31; tip_angle := tip_angle + 5 )
		{
		CA_p := tip_angle * pi/180;
		for ( Rs := 1.0 ; Rs <= 3.1 ; Rs := Rs + 0.1 )
			{ 	replace_load "pyramid";
				get_fd; 
			}
		}
	}
}

run_fd;
