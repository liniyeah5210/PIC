subroutine Distribution_density_purturb(r)
  use Parameters_constants
IMPLICIT NONE
  doubleprecision, INTENT(out):: r


  doubleprecision densmax, rmax,rmin,rran,dens,x



  densmax=1.5
  rmin=0.
  rmax=L

Do
  rran=rmin+(rmax-rmin)*dble(rand(0))

! accept/reject value

  dens=dsty0*(1+0.001*sin(kx*rran))


    x=densmax*dble(rand(0))
    if (x<=dens) then
        exit
    end if
End Do
  r=rran

  End subroutine

