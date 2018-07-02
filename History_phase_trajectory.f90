SUBROUTINE History_phase_trajectory(vold,vnew,r)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(1:N), INTENT(IN):: vold
  doubleprecision,dimension(1:N), INTENT(IN):: vnew
  doubleprecision,dimension(1:N), INTENT(IN):: r

  integer :: i
  doubleprecision,dimension(1:N):: v



 OPEN(unit=13,file='History_trajectory_v5.txt',POSITION='APPEND')
 OPEN(unit=17,file='History_trajectory_v3.txt',POSITION='APPEND')
 OPEN(unit=19,file='History_trajectory_v1.txt',POSITION='APPEND')
 OPEN(unit=23,file='History_trajectory_v0.txt',POSITION='APPEND')

 Do i=1,N
    v(i)=0.5*(vold(i)+vnew(i))
 End Do




 write(13,*) r(2), v(2)
  write(17,*) r(4), v(4)
  write(19,*) r(24), v(24)
  write(23,*) r(36), v(36)


 close (13)
 close (17)
 close (19)
 close (23)





END SUBROUTINE

