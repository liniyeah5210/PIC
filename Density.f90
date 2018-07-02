subroutine Density(r,dsty)
    use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:N), INTENT(IN):: r
  doubleprecision,dimension(1:jmax), INTENT(out):: dsty !denstiy of grid point

  !Local variables
  doubleprecision :: y ! used to simplify the density equation
  integer :: j, i


  !Initialize all dj to 0
  Do j=1,jmax
    dsty(j)=0
  End Do


  Do i=1,N
    j=int(r(i)/dx)+1

    y=r(i)/dx-dble(j-1)

    dsty(j)=dsty(j)+alpha_p*(1.-y)/dx
    if(j==1) then
        dsty(jmax)=dsty(1)
    end if

    dsty(j+1)=dsty(j+1)+alpha_p*y/dx
    if(j+1==jmax) then
        dsty(1)=dsty(jmax)
    end if

  End Do
end subroutine
