chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( a_dev := 5 ; a_dev <= 20 ; a_dev := a_dev + 1 )
	{
	for ( tip_angle := 20; tip_angle <= 71; tip_angle := tip_angle + 10 )
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
