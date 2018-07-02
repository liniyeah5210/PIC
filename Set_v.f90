SUBROUTINE Set_v(a,vin,vold)
  use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:N), INTENT(IN):: a
  doubleprecision,dimension(1:N), INTENT(IN):: vin
  doubleprecision,dimension(1:N), INTENT(out):: vold



!  Local variables
  INTEGER :: i

  Do i=1,N
    vold(i)=vin(i)-a(i)*dt/2.

  END DO




END SUBROUTINE

