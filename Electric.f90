SUBROUTINE Electric(phi,E)
      use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(0:jmax+1), INTENT(IN):: phi
  doubleprecision,dimension(0:jmax+1), INTENT(OUT):: E



  integer :: j

 Do j=1,jmax
    E(j)=(phi(j-1)-phi(j+1))/2./dx
 End Do




!




	END
