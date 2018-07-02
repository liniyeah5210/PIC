SUBROUTINE Poisson1d_with_ions(dsty,phi,it,errmax)
      use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:jmax), INTENT(IN):: dsty
  doubleprecision,dimension(0:jmax+1), INTENT(INOUT):: phi
  doubleprecision,dimension(0:jmax+1):: phiod
  doubleprecision,intent(out) :: errmax
  integer, intent(out):: it


  integer :: j

  doubleprecision :: err



!    Use the phi at previous timestep as the initial guess
     DO  j=0,jmax+1
	phiod(j)=phi(j)
    End do





      it=0
      Do
      it=it+1




!      INTERIOR POINTS

	DO  j=1,jmax
	phi(j)=0.5*(phi(j+1)+phi(j-1)+dx*dx*(1.-dsty(j)/dsty0))
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
