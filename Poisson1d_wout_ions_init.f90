SUBROUTINE Poisson1d_wout_ions_init(dsty,phi,it,errmax)
      use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:jmax), INTENT(IN):: dsty
  doubleprecision,dimension(0:jmax+1), INTENT(OUT):: phi
  doubleprecision,dimension(0:jmax+1):: phiod
  doubleprecision,intent(out) :: errmax
  integer, intent(out):: it


  integer :: j

  doubleprecision :: err



!        INITIAL GUESS
     DO  j=0,jmax+1
	phi(j)=0
	phiod(j)=0
    End do





      it=0
      Do
      it=it+1




!      INTERIOR POINTS

	DO  j=1,jmax
	phi(j)=0.5*(phi(j+1)+phi(j-1)+dx*dx*(0.-dsty(j)/dsty0))
    End do


!  BOUNDARY CONDITION
    phi(0)=phi(jmax-1)
    phi(jmax+1)=phi(2)





      ERRMAX=0.

	DO  j=0,jmax+1
      ERR=DABS((phi(j)-phiod(j))/phi(j))
      IF(ERR>ERRMAX) then
        ERRMAX=ERR
      END if
     End do


      IF(ERRMAX<1.d-4) exit

	DO  j=0,jmax+1
	phiod(j)=phi(j)
    End do


    End do





	END
