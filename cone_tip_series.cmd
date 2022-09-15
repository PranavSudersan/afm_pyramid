chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( tip_angle := 13 ; tip_angle <= 20 ; tip_angle := tip_angle + 1 )
	{
	for ( contact_angle := 60; contact_angle <= 61; contact_angle := contact_angle + 5 )
		{
		CA_p := contact_angle * pi/180;
		for ( Rs := 1.0 ; Rs <= 3.1 ; Rs := Rs + 0.1 )
			{ 	replace_load "cone";
				get_fd; 
			}
		}
	}
}

run_fd;
