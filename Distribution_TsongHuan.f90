subroutine Distribution_TsongHuan(v,r)
IMPLICIT NONE
  doubleprecision, INTENT(out):: v,r


  doubleprecision fmax, vmax, vmin,vran,rmax,rmin,rran,f,x



  fmax=0.5
  vmin=-5.
  vmax=5.
  rmin=0.
  rmax=4.*3.14159

Do
  vran=vmin+(vmax-vmin)*dble(rand(0))
  rran=rmin+(rmax-rmin)*dble(rand(0))

! accept/reject value

  f=2./7./sqrt(2*3.14159)*(1+5*vran**2)*(1+0.01*((cos(rran)+cos(1.5*rran))/1.2+cos(0.5*rran)))*exp(-vran*vran/2)


    x=fmax*dble(rand(0))
    if (x<=f) then
        exit
    end if
End Do
  v=vran
  r=rran

  End subroutine

