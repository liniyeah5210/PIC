SUBROUTINE Acceleration(E,r,a)
  use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:N), INTENT(IN):: r
  doubleprecision,dimension(0:jmax+1), INTENT(IN):: E
  doubleprecision,dimension(1:N), INTENT(OUT):: a


!  Local variables
  INTEGER :: i,j
  doubleprecision,dimension(1:jmax):: x
  doubleprecision,dimension(1:N):: Efield

  x(1)=0
  Do j=2,jmax
    x(j)=x(j-1)+dx
  End Do



  Do i=1,N
    j=int(r(i)/dx)+1

    Efield(i)=(x(j+1)-r(i))/dx*E(j)+(r(i)-x(j))/dx*E(j+1)

    a(i)=-Efield(i)

  END DO




END SUBROUTINE

