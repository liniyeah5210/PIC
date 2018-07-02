SUBROUTINE History_total_energy(t,vold,vnew,E)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(1:N), INTENT(IN):: vold
  doubleprecision,dimension(1:N), INTENT(IN):: vnew
  doubleprecision,dimension(0:jmax+1), INTENT(IN):: E
  doubleprecision, INTENT(IN):: t

  integer :: i,j
  doubleprecision :: vsum,me,vsqsum,Esqsum
  doubleprecision,dimension(1:N):: v

 !me=wp*wp*epsi/dsty0/qm/qm

 OPEN(unit=31,file='History_total_energy.txt',POSITION='APPEND')

 Do i=1,N
    v(i)=0.5*(vold(i)+vnew(i))
 End Do

Esqsum=0.
 Do j=1,jmax-1
    Esqsum=Esqsum+E(j)*E(j)
 End Do


 vsqsum=0.
 Do i=1,N
    vsqsum=vsqsum+v(i)*v(i)
 End Do


 write(31,*) t, 0.5*alpha_p*vsqsum+0.5*dx*dsty0*Esqsum




close (31)





END SUBROUTINE

