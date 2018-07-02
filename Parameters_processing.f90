MODULE Parameters_processing
    use Parameters_constants
    IMPLICIT NONE
    DOUBLEPRECISION,dimension(1:N) :: r
    DOUBLEPRECISION,dimension(1:N) :: rl
    DOUBLEPRECISION,dimension(1:N) :: vin    
    DOUBLEPRECISION,dimension(1:N) :: vold
    DOUBLEPRECISION,dimension(1:N) :: vnew
    DOUBLEPRECISION,dimension(1:N) :: a

    DOUBLEPRECISION,dimension(1:jmax) :: dsty
    DOUBLEPRECISION,dimension(0:jmax+1) :: phi
    DOUBLEPRECISION,dimension(0:jmax+1) :: E

    DOUBLEPRECISION :: t
    DOUBLEPRECISION :: opt !If t>opt, output
    DOUBLEPRECISION :: errmax !error max of solving 1D Poisson equation using Gauss-Seidal
    



    INTEGER :: it !iteration time of solving 1D Poisson equation using Gauss-Seidal
    
END MODULE Parameters_processing
