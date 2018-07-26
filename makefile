main: Parameters_constants.o Parameters_processing.o Acceleration.o Electric.o History_thermal_energy.o Output_phase.o Poisson1d_wout_ions.o Poisson1d_with_ions.o Density.o Distribution_positive.o Distribution_negative.o History_drift_energy.o History_total_energy.o Output_Electric.o Set_v.o History_electric_energy.o Leapfrog.o Output_fv.o History_phase_trajectory.o main.o Distribution_TsongHuan.o Distribution_density_purturb.o Poisson1d_with_ions_init.o Poisson1d_wout_ions_init.o Output_dsty.o
	gfortran -o main main.o Parameters_constants.o Parameters_processing.o Acceleration.o Electric.o History_thermal_energy.o Output_phase.o Poisson1d_wout_ions.o Poisson1d_with_ions.o Density.o Distribution_positive.o Distribution_negative.o History_drift_energy.o History_total_energy.o Output_Electric.o Set_v.o History_electric_energy.o Leapfrog.o Output_fv.o History_phase_trajectory.o Distribution_TsongHuan.o Distribution_density_purturb.o Poisson1d_with_ions_init.o Poisson1d_wout_ions_init.o Output_dsty.o

Parameters_constants.o: Parameters_constants.f90
	gfortran -c -o Parameters_constants.o Parameters_constants.f90

Parameters_processing.o: Parameters_processing.f90
	gfortran -c -o Parameters_processing.o Parameters_processing.f90

Acceleration.o: Acceleration.f90
	gfortran -c -o Acceleration.o Acceleration.f90

Electric.o: Electric.f90
	gfortran -c -o Electric.o Electric.f90

History_thermal_energy.o: History_thermal_energy.f90
	gfortran -c -o History_thermal_energy.o History_thermal_energy.f90

Output_phase.o: Output_phase.f90
	gfortran -c -o Output_phase.o Output_phase.f90

Poisson1d_wout_ions.o: Poisson1d_wout_ions.f90
	gfortran -c -o Poisson1d_wout_ions.o Poisson1d_wout_ions.f90

Poisson1d_wout_ions_init.o: Poisson1d_wout_ions_init.f90
	gfortran -c -o Poisson1d_wout_ions_init.o Poisson1d_wout_ions_init.f90

Poisson1d_with_ions.o: Poisson1d_with_ions.f90
	gfortran -c -o Poisson1d_with_ions.o Poisson1d_with_ions.f90

Poisson1d_with_ions_init.o: Poisson1d_with_ions_init.f90
	gfortran -c -o Poisson1d_with_ions_init.o Poisson1d_with_ions_init.f90

Distribution_negative.o: Distribution_negative.f90
	gfortran -c -o Distribution_negative.o Distribution_negative.f90

Distribution_positive.o: Distribution_positive.f90
	gfortran -c -o Distribution_positive.o Distribution_positive.f90

Distribution_TsongHuan.o: Distribution_TsongHuan.f90
	gfortran -c -o Distribution_TsongHuan.o Distribution_TsongHuan.f90

Distribution_density_purturb.o: Distribution_density_purturb.f90
	gfortran -c -o Distribution_density_purturb.o Distribution_density_purturb.f90

Density.o: Density.f90
	gfortran -c -o Density.o Density.f90

History_drift_energy.o: History_drift_energy.f90
	gfortran -c -o History_drift_energy.o History_drift_energy.f90

History_total_energy.o: History_total_energy.f90
	gfortran -c -o History_total_energy.o History_total_energy.f90

Output_dsty.o: Output_dsty.f90
	gfortran -c -o Output_dsty.o Output_dsty.f90

Output_Electric.o: Output_Electric.f90
	gfortran -c -o Output_Electric.o Output_Electric.f90

Set_v.o: Set_v.f90
	gfortran -c -o Set_v.o Set_v.f90

History_electric_energy.o: History_electric_energy.f90
	gfortran -c -o History_electric_energy.o History_electric_energy.f90

Leapfrog.o: Leapfrog.f90
	gfortran -c -o Leapfrog.o Leapfrog.f90

Output_fv.o: Output_fv.f90
	gfortran -c -o Output_fv.o Output_fv.f90

History_phase_trajectory.o: History_phase_trajectory.f90
	gfortran -c -o History_phase_trajectory.o History_phase_trajectory.f90

main.o: main.f95
	gfortran -c -o main.o main.f95


#	gfortran -c Parameters_constants.f90 Parameters_processing.f90 Acceleration.f90 Electric.f90 History_theral_energy.f90 Output_phase.f90 Poisson1d_wout_ions.f90 Poisson1d_with_ions.f90 Distribution_negative.f90 Distribution_positive.f90 Density.f90 History_drift_energy.f90 History_total_energy.f90 Output_Electric.f90 Set_v.f90  History_electric_energy.f90 Leapfrog.f90 Output_fv.f90 History_phase_trajectory.f90 main.f95










