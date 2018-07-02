SUBROUTINE Leapfrog(vold,vnew,r,rl,a)
  use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:N), INTENT(INOUT):: vold,r
  doubleprecision,dimension(1:N), INTENT(IN):: a
  doubleprecision,dimension(1:N), INTENT(OUT):: vnew,rl



!  Local variables
  INTEGER :: i


  Do i=1,N
    vnew(i)=vold(i)+a(i)*dt
    rl(i)=r(i)+vnew(i)*dt

    !Make sure all electrons in 0 to L
    If (rl(i)>L) then
    rl(i)=rl(i)-L
    End if
    If (rl(i)<0.) then
    rl(i)=rl(i)+L
    End if

    If (r(i)>L) then
    r(i)=r(i)-L
    End if
    If (r(i)<0.) then
    r(i)=r(i)+L
    End if




  END DO




END SUBROUTINE Leapfrog

