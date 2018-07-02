SUBROUTINE History_drift_energy(t,vold,vnew)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(1:N), INTENT(IN):: vold
  doubleprecision,dimension(1:N), INTENT(IN):: vnew
  doubleprecision, INTENT(IN):: t

  integer :: i
  doubleprecision :: vsum1,vsum2,me
  doubleprecision,dimension(1:N):: v

 me=wp*wp*epsi/dsty0/qm/qm

 OPEN(unit=11,file='History_drift_energy.txt',POSITION='APPEND')

 Do i=1,N
    v(i)=0.5*(vold(i)+vnew(i))
 End Do



 vsum1=0.
 Do i=1,int(N/2)
    vsum1=vsum1+v(i)
 End Do

 vsum2=0.
 Do i=int(N/2)+1,N
    vsum2=vsum2+v(i)
 End Do


 write(11,*) t, 0.5*N/2*me*vth*vth*((2*vsum1/N)*(2*vsum1/N)+(2*vsum2/N)*(2*vsum2/N))



close (11)





END SUBROUTINE

