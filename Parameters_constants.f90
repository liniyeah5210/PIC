MODULE Parameters_constants
    IMPLICIT NONE
    !Normalizing all physical quantities by plasma frequency and Debye length
    !Input values in normalized unit (Set vth=1)
    DOUBLEPRECISION, parameter :: L=acos(-1.0) !0<=x<=L
    DOUBLEPRECISION, parameter :: dsty0=100. !density of uniform ion
    INTEGER, parameter :: N=1000 !number of electrons (super particles)
    INTEGER, parameter :: jmax=32 !number of grids
    DOUBLEPRECISION :: dx=L/(jmax-1.) !length of each grid space
    DOUBLEPRECISION :: vb=4 !beam velocity
    DOUBLEPRECISION :: dt=0.001 !time step
    DOUBLEPRECISION :: tmax=100.01 !simulation from 0 to tmax
    doubleprecision :: outputf=1 !output per outputf
    DOUBLEPRECISION :: alpha_p=dsty0*L/N !number of particles per super-particle
    

    !real values for calculating real physics, e.g. energy comparison
    DOUBLEPRECISION :: wp=1. !plasma frequency
    DOUBLEPRECISION :: qm=1. !q/m
    DOUBLEPRECISION :: epsi=1. !permittivity
    DOUBLEPRECISION :: vth=1. !thermal velocity

    !Given these real values, we can get q and m in terms of these real values
    !q=wp*wp*epsi/dsty0/qm
    !me=wp*wp*epsi/dsty0/qm/qm

END MODULE Parameters_constants
