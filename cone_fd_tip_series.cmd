chdir "E:/Work/Surface Evolver/afm_pyramid/code";
run_fd := {
for ( tip_angle := 5 ; tip_angle <= 20.1 ; tip_angle := tip_angle + 1 )
	{
	for ( contact_angle := 5; contact_angle <= 51; contact_angle := contact_angle + 5 )
		{
		CA_p := contact_angle * pi/180;
		for ( Rs_norm := 3.0 ; Rs_norm <= 12.1 ; Rs_norm := Rs_norm + 0.5 )
			{ 	
			for ( height_norm := 0 ; height_norm <= 0.701 ; height_norm := height_norm + .05 )
				{
				replace_load "cone";
				get_fd;
				} 
			}
		}
	}
}

run_fd;
