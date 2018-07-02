SUBROUTINE History_thermal_energy(t,vold,vnew)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(1:N), INTENT(IN):: vold
  doubleprecision,dimension(1:N), INTENT(IN):: vnew
  doubleprecision, INTENT(IN):: t

  integer :: i
  doubleprecision :: vsum1,vsum2,me,vsqsum1,vsqsum2
  doubleprecision,dimension(1:N):: v

 me=wp*wp*epsi/dsty0/qm/qm

 OPEN(unit=21,file='History_thermal_energy.txt',POSITION='APPEND')

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


 vsqsum1=0.
 Do i=1,int(N/2)
    vsqsum1=vsqsum1+v(i)*v(i)
 End Do

vsqsum2=0.
 Do i=int(N/2)+1,N
    vsqsum2=vsqsum2+v(i)*v(i)
 End Do

 write(21,*) t, 0.5*N/2*me**vth*vth*(2*vsqsum1/N-4*vsum1*vsum1/N/N+2*vsqsum2/N-4*vsum2*vsum2/N/N)



close (21)





END SUBROUTINE

