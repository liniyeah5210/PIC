SUBROUTINE History_electric_energy(t,E)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(0:jmax+1), INTENT(IN):: E
  doubleprecision, INTENT(IN):: t

  integer :: j
  doubleprecision :: sqsum,me

me=wp*wp*epsi/dsty0/qm/qm


 OPEN(unit=6,file='History_electric_energy.txt',POSITION='APPEND')

 sqsum=0.
 Do j=1,jmax-1
    sqsum=sqsum+E(j)*E(j)
 End Do

 write(6,*) t, 0.5*sqsum*dx*dsty0

close (6)





END SUBROUTINE

